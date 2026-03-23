# RixlApi::PaginationPaginatedResponsePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Post&gt;**](Post.md) | Data contains the slice of items for the current request. | [optional] |
| **pagination** | [**PaginationPagination**](PaginationPagination.md) | Pagination data for the request. | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::PaginationPaginatedResponsePost.new(
  data: null,
  pagination: null
)
```

