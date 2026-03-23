# RixlApi::Image

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attached_to_video** | **Boolean** |  | [optional] |
| **file** | **File** |  | [optional] |
| **height** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **thumbhash** | **String** |  | [optional] |
| **width** | **Integer** |  | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::Image.new(
  attached_to_video: false,
  file: null,
  height: 1080,
  id: PS5IMKoFLm,
  thumbhash: 1QcSHQRnh493V4dIh4eXh1h4kJUI,
  width: 1920
)
```

