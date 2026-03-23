# RixlApi::File

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **format** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **project_id** | **String** |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **status** | [**FileStatus**](FileStatus.md) |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::File.new(
  created_at: 2025-01-01T00:00:00Z,
  format: avif,
  id: FpvLwyDMqu,
  name: original.jpeg,
  project_id: Bq4y3QB38S,
  size: 1048576,
  status: null,
  updated_at: 2025-01-01T00:00:00Z,
  url: https://images.rixl.com/Bq4y3QB38S/FpvLwyDMqu
)
```

