# RixlApi::GithubComQeeqezApiInternalErrorsErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | HTTP status code | [optional] |
| **details** | **String** | Optional details about the error | [optional] |
| **error** | **String** | Error message describing what went wrong | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::GithubComQeeqezApiInternalErrorsErrorResponse.new(
  code: 400,
  details: The provided ID is not valid,
  error: Invalid request
)
```

