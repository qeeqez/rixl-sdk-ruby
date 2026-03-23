# RIXL Ruby SDKs

This repository contains the Ruby SDK split by service instead of one flat generated gem.

## Layout

- `sdk/feeds` -> gem `rixl_feeds_sdk`
- `sdk/videos` -> gem `rixl_videos_sdk`
- `sdk/images` -> gem `rixl_images_sdk`

Each service folder is a standalone generated gem with its own gemspec, `lib`, and `spec` directories.

## Build Example

Build the videos gem:

```sh
cd sdk/videos
gem build rixl_videos_sdk.gemspec
```

## Regenerate

Generate all services:

```sh
./scripts/generate.sh
```

Generate one service:

```sh
./scripts/generate.sh --service videos
```

Regenerate from a fresh OpenAPI file:

```sh
./scripts/generate.sh --spec /path/to/public.swagger.json --service images
```
