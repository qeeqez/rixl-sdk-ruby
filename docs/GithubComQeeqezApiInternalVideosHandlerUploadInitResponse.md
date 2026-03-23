# RixlApi::GithubComQeeqezApiInternalVideosHandlerUploadInitResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **poster_id** | **String** |  | [optional] |
| **poster_presigned_url** | **String** |  | [optional] |
| **upload_expires** | **Integer** |  | [optional] |
| **video_id** | **String** |  | [optional] |
| **video_presigned_url** | **String** |  | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::GithubComQeeqezApiInternalVideosHandlerUploadInitResponse.new(
  poster_id: PS5IMKoFLm,
  poster_presigned_url: https://images.rixl.com/Bq4y3QB38S/PS5IMKoFLm?X-Amz-Algorithm&#x3D;AWS4-HMAC-SHA256&amp;X-Amz-Credential&#x3D;AKIAEXAMPLE%2F20250831%2Fus-east-1%2Fs3%2Faws4_request&amp;X-Amz-Date&#x3D;20250831T103000Z&amp;X-Amz-Expires&#x3D;3600&amp;X-Amz-SignedHeaders&#x3D;host&amp;X-Amz-Signature&#x3D;b228dbec8c1008c80c162e1210e4503dceead1e4d4d55,
  upload_expires: 1640995200,
  video_id: VI9VXQxWXQ,
  video_presigned_url: https://videos.rixl.com/Bq4y3QB38S/VI9VXQxWXQ?X-Amz-Algorithm&#x3D;AWS4-HMAC-SHA256&amp;X-Amz-Credential&#x3D;AKIAEXAMPLE%2F20250831%2Fus-east-1%2Fs3%2Faws4_request&amp;X-Amz-Date&#x3D;20250831T103000Z&amp;X-Amz-Expires&#x3D;3600&amp;X-Amz-SignedHeaders&#x3D;host&amp;X-Amz-Signature&#x3D;b228dbec8c1008c80c162e1210e4503dceead1e4d4d55
)
```

