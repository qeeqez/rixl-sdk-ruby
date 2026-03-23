# RixlApi::PaginationPaginatedResponseImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Image&gt;**](Image.md) | Data contains the slice of items for the current request. | [optional] |
| **pagination** | [**PaginationPagination**](PaginationPagination.md) | Pagination data for the request. | [optional] |

## Example

```ruby
require 'rixl_api'

instance = RixlApi::PaginationPaginatedResponseImage.new(
  data: null,
  pagination: null
)
```

