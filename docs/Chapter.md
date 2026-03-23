# RixlApi::Chapter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration_label** | **String** |  | [optional] |
| **end_time_sec** | **Float** |  | [optional] |
| **start_time_sec** | **Float** |  | [optional] |
| **title** | **String** |  | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::Chapter.new(
  duration_label: 02:25,
  end_time_sec: 145.0,
  start_time_sec: 0.0,
  title: Introduction
)
```

