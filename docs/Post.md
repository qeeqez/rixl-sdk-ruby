# RixlApi::Post

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **String** |  | [optional] |
| **creator_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **feed_id** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **image** | [**Image**](Image.md) |  | [optional] |
| **plan_type** | [**GithubComQeeqezApiDbSqlcPlanType**](GithubComQeeqezApiDbSqlcPlanType.md) |  | [optional] |
| **type** | [**PostType**](PostType.md) |  | [optional] |
| **updated_at** | **String** |  | [optional] |
| **video** | [**GithubComQeeqezApiInternalVideosVideoResponse**](GithubComQeeqezApiInternalVideosVideoResponse.md) |  | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::Post.new(
  created_at: 2025-01-01T00:00:00Z,
  creator_id: CR8y3QB38S,
  description: My awesome post,
  feed_id: FD4y3QB38S,
  id: PS5IMKoFLm,
  image: null,
  plan_type: null,
  type: null,
  updated_at: 2025-01-01T00:00:00Z,
  video: null
)
```

