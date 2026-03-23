# RixlApi::AudioTrack

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **format** | **String** |  | [optional] |
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

instance = RixlApi::AudioTrack.new(
  created_at: 2025-12-21T12:00:00Z,
  format: mp3,
  id: 3n7v9k4m2p,
  label: Spanish,
  language_code: es-ES,
  name: spanish_audio.mp3,
  size: 2048576,
  url: https://cdn.rixl.io/audio_tracks/project_id/video_id/es-ES-3n7v9k4m2p.mp3,
  video_id: x8n2p5v9k7
)
```

