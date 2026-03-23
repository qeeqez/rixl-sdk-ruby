# OpenapiClient::PaginationPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of items to return in a single request. | [optional] |
| **offset** | **Integer** | Starting point of the result set. | [optional] |
| **total** | **Integer** | The total number of available items in the full list. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PaginationPagination.new(
  limit: 100,
  offset: 50,
  total: 1000
)
```

