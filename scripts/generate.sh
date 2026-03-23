#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd -- "${SCRIPT_DIR}/.." && pwd)"
INPUT_SPEC="${ROOT_DIR}/openapi/public.swagger.json"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

cd "${ROOT_DIR}"

ALL_SERVICES=(feeds videos images)

require_command() {
	local command="$1"
	if ! command -v "${command}" >/dev/null 2>&1; then
		echo "${command} is required" >&2
		exit 1
	fi
}

usage() {
	cat <<'EOF'
Usage:
  ./scripts/generate.sh [--service feeds|videos|images] [--spec /path/to/swagger.json]
EOF
}

validate_service() {
	local service="$1"
	case "${service}" in
		feeds|videos|images) ;;
		*)
			echo "unsupported service: ${service}" >&2
			echo "supported services: feeds, videos, images" >&2
			exit 1
			;;
	esac
}

service_module_name() {
	case "$1" in
		feeds) echo "RixlFeedsSdk" ;;
		videos) echo "RixlVideosSdk" ;;
		images) echo "RixlImagesSdk" ;;
	esac
}

service_arg=""
spec_arg=""

while [[ $# -gt 0 ]]; do
	case "$1" in
		--service)
			[[ $# -ge 2 ]] || { echo "--service requires a value" >&2; exit 1; }
			service_arg="$2"
			shift 2
			;;
		--spec)
			[[ $# -ge 2 ]] || { echo "--spec requires a value" >&2; exit 1; }
			spec_arg="$2"
			shift 2
			;;
		-h|--help|help)
			usage
			exit 0
			;;
		*)
			echo "unknown argument: $1" >&2
			usage
			exit 1
			;;
	esac
done

if [[ -n "${service_arg}" ]]; then
	validate_service "${service_arg}"
fi

if [[ -n "${spec_arg}" ]]; then
	"${SCRIPT_DIR}/prepare-spec.sh" "${spec_arg}"
fi

require_command java
require_command npx
require_command perl
require_command rsync
require_command jq

if [[ ! -f "${INPUT_SPEC}" ]]; then
	echo "sanitized SDK spec not found at ${INPUT_SPEC}" >&2
	echo "run scripts/prepare-spec.sh first or pass --spec /path/to/swagger.json" >&2
	exit 1
fi

services=("${ALL_SERVICES[@]}")
if [[ -n "${service_arg}" ]]; then
	services=("${service_arg}")
fi

mkdir -p "${ROOT_DIR}/sdk" "${ROOT_DIR}/openapi/services"

for service in "${services[@]}"; do
	service_spec="${ROOT_DIR}/openapi/services/${service}.swagger.json"
	service_tmp="${TMP_DIR}/out-${service}"
	output_dir="${ROOT_DIR}/sdk/${service}"
	module_name="$(service_module_name "${service}")"

	"${SCRIPT_DIR}/split-spec.sh" "${INPUT_SPEC}" "${service}" "${service_spec}"

	npx -y @openapitools/openapi-generator-cli generate \
		-g ruby \
		-i "${service_spec}" \
		-o "${service_tmp}" \
		--global-property apiDocs=false,modelDocs=false,apiTests=false,modelTests=false \
		--additional-properties "gemName=rixl_${service}_sdk,gemVersion=2.0.0,moduleName=${module_name},gemHomepage=https://rixl.com,gemSummary=RIXL-${service}-Ruby-SDK,gemDescription=RIXL-${service}-SDK-generated-from-public-OpenAPI-spec,gemAuthor=Rixl,gemAuthorEmail=support@rixl.com,gemLicense=SEE_LICENSE_IN_LICENSE.md,library=typhoeus,hideGenerationTimestamp=true,disallowAdditionalPropertiesIfNotPresent=false,sortParamsByRequiredFlag=true,sortModelPropertiesByRequiredFlag=true"

	perl -0pi -e 's{https://github.com/GIT_USER_ID/GIT_REPO_ID}{https://github.com/qeeqez/rixl-sdk-ruby}g; s{\*http://localhost\*}{*https://api.rixl.com*}g' "${service_tmp}/README.md"

	rm -rf "${service_tmp}/.openapi-generator"
	rm -f "${service_tmp}/.gitlab-ci.yml" "${service_tmp}/.travis.yml" "${service_tmp}/git_push.sh"

	mkdir -p "${output_dir}"
	rsync -a --delete \
		--exclude '.git' \
		"${service_tmp}/" "${output_dir}/"
done

echo "Generated Ruby SDK services under ${ROOT_DIR}/sdk"
