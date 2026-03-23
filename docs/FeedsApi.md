# RixlApi::FeedsApi

All URIs are relative to *https://api.rixl.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_feeds_feed_id**](FeedsApi.md#get_feeds_feed_id) | **GET** /feeds/{feedId} | List posts in a feed |
| [**get_feeds_feed_id_creators_creator_id**](FeedsApi.md#get_feeds_feed_id_creators_creator_id) | **GET** /feeds/{feedId}/creators/{creatorId} | List posts by creator |
| [**get_feeds_feed_id_post_id**](FeedsApi.md#get_feeds_feed_id_post_id) | **GET** /feeds/{feedId}/{postId} | Get a post |


## get_feeds_feed_id

> <PaginationPaginatedResponsePost> get_feeds_feed_id(feed_id, opts)

List posts in a feed

Retrieve posts in a feed, with pagination.

### Examples

```ruby
require 'time'
require 'rixl_api'

api_instance = RixlApi::FeedsApi.new
feed_id = 'feed_id_example' # String | Feed ID
opts = {
  limit: 56, # Integer | Maximum number of items to return in a single request. <br> **Default:** `25`
  offset: 56 # Integer | Starting point of the result set. <br>To get page 2 with a limit of 25, set `offset` to `25`. <br> **Default:** `0`
}

begin
  # List posts in a feed
  result = api_instance.get_feeds_feed_id(feed_id, opts)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling FeedsApi->get_feeds_feed_id: #{e}"
end
```

#### Using the get_feeds_feed_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginationPaginatedResponsePost>, Integer, Hash)> get_feeds_feed_id_with_http_info(feed_id, opts)

```ruby
begin
  # List posts in a feed
  data, status_code, headers = api_instance.get_feeds_feed_id_with_http_info(feed_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginationPaginatedResponsePost>
rescue RixlApi::ApiError => e
  puts "Error when calling FeedsApi->get_feeds_feed_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feed_id** | **String** | Feed ID |  |
| **limit** | **Integer** | Maximum number of items to return in a single request. &lt;br&gt; **Default:** &#x60;25&#x60; | [optional][default to 25] |
| **offset** | **Integer** | Starting point of the result set. &lt;br&gt;To get page 2 with a limit of 25, set &#x60;offset&#x60; to &#x60;25&#x60;. &lt;br&gt; **Default:** &#x60;0&#x60; | [optional][default to 0] |

### Return type

[**PaginationPaginatedResponsePost**](PaginationPaginatedResponsePost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feeds_feed_id_creators_creator_id

> <PaginationPaginatedResponsePost> get_feeds_feed_id_creators_creator_id(feed_id, creator_id, opts)

List posts by creator

Retrieve posts in a feed by a specific creator, with pagination.

### Examples

```ruby
require 'time'
require 'rixl_api'

api_instance = RixlApi::FeedsApi.new
feed_id = 'feed_id_example' # String | Feed ID
creator_id = 'creator_id_example' # String | Creator ID
opts = {
  limit: 56, # Integer | Maximum number of items to return in a single request. <br> **Default:** `25`
  offset: 56 # Integer | Starting point of the result set. <br>To get page 2 with a limit of 25, set `offset` to `25`. <br> **Default:** `0`
}

begin
  # List posts by creator
  result = api_instance.get_feeds_feed_id_creators_creator_id(feed_id, creator_id, opts)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling FeedsApi->get_feeds_feed_id_creators_creator_id: #{e}"
end
```

#### Using the get_feeds_feed_id_creators_creator_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginationPaginatedResponsePost>, Integer, Hash)> get_feeds_feed_id_creators_creator_id_with_http_info(feed_id, creator_id, opts)

```ruby
begin
  # List posts by creator
  data, status_code, headers = api_instance.get_feeds_feed_id_creators_creator_id_with_http_info(feed_id, creator_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginationPaginatedResponsePost>
rescue RixlApi::ApiError => e
  puts "Error when calling FeedsApi->get_feeds_feed_id_creators_creator_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feed_id** | **String** | Feed ID |  |
| **creator_id** | **String** | Creator ID |  |
| **limit** | **Integer** | Maximum number of items to return in a single request. &lt;br&gt; **Default:** &#x60;25&#x60; | [optional][default to 25] |
| **offset** | **Integer** | Starting point of the result set. &lt;br&gt;To get page 2 with a limit of 25, set &#x60;offset&#x60; to &#x60;25&#x60;. &lt;br&gt; **Default:** &#x60;0&#x60; | [optional][default to 0] |

### Return type

[**PaginationPaginatedResponsePost**](PaginationPaginatedResponsePost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feeds_feed_id_post_id

> <Post> get_feeds_feed_id_post_id(feed_id, post_id)

Get a post

Retrieve a post from feed by its ID

### Examples

```ruby
require 'time'
require 'rixl_api'

api_instance = RixlApi::FeedsApi.new
feed_id = 'feed_id_example' # String | Feed ID
post_id = 'post_id_example' # String | Post ID

begin
  # Get a post
  result = api_instance.get_feeds_feed_id_post_id(feed_id, post_id)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling FeedsApi->get_feeds_feed_id_post_id: #{e}"
end
```

#### Using the get_feeds_feed_id_post_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Post>, Integer, Hash)> get_feeds_feed_id_post_id_with_http_info(feed_id, post_id)

```ruby
begin
  # Get a post
  data, status_code, headers = api_instance.get_feeds_feed_id_post_id_with_http_info(feed_id, post_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Post>
rescue RixlApi::ApiError => e
  puts "Error when calling FeedsApi->get_feeds_feed_id_post_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feed_id** | **String** | Feed ID |  |
| **post_id** | **String** | Post ID |  |

### Return type

[**Post**](Post.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

