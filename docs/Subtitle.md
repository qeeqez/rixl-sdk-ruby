# RixlApi::Subtitle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **label** | **String** |  | [optional] |
| **language_code** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **size** | **Integer** |  | [optional] |
| **url** | **String** |  | [optional] |
| **video_id** | **String** |  | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::Subtitle.new(
  created_at: 2025-12-21T12:00:00Z,
  id: 5m9k8p2v7q,
  label: English,
  language_code: en-US,
  name: english_subs.srt,
  size: 1024,
  url: https://cdn.rixl.io/subtitles/project_id/video_id/en-US-5m9k8p2v7q.srt,
  video_id: x8n2p5v9k7
)
```

