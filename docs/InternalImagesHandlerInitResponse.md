# RixlApi::InternalImagesHandlerInitResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_id** | **String** |  | [optional] |
| **presigned_url** | **String** |  | [optional] |
| **upload_expires** | **Integer** |  | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::InternalImagesHandlerInitResponse.new(
  image_id: PS5IMKoFLm,
  presigned_url: https://images.rixl.com/Bq4y3QB38S/PS5IMKoFLm?X-Amz-Algorithm&#x3D;AWS4-HMAC-SHA256&amp;X-Amz-Credential&#x3D;AKIAEXAMPLE%2F20250831%2Fus-east-1%2Fs3%2Faws4_request&amp;X-Amz-Date&#x3D;20250831T103000Z&amp;X-Amz-Expires&#x3D;3600&amp;X-Amz-SignedHeaders&#x3D;host&amp;X-Amz-Signature&#x3D;b228dbec8c1008c80c162e1210e4503dceead1e4d4751b4d9787314fd6da4d55,
  upload_expires: 1640995200
)
```

