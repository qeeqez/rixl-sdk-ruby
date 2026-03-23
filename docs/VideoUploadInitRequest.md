# RixlApi::VideoUploadInitRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_name** | **String** |  |  |
| **image_format** | **String** |  | [optional] |
| **video_quality** | [**GithubComQeeqezApiDbSqlcVideoQuality**](GithubComQeeqezApiDbSqlcVideoQuality.md) |  | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::VideoUploadInitRequest.new(
  file_name: my-video.mp4,
  image_format: jpg,
  video_quality: null
)
```

