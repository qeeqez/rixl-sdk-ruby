# RixlApi::ImagesApi

All URIs are relative to *https://api.rixl.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_images_image_id**](ImagesApi.md#delete_images_image_id) | **DELETE** /images/{imageId} | Delete image |
| [**get_images**](ImagesApi.md#get_images) | **GET** /images | List images for a project |
| [**get_images_image_id**](ImagesApi.md#get_images_image_id) | **GET** /images/{imageId} | Get image |
| [**post_images_upload_complete**](ImagesApi.md#post_images_upload_complete) | **POST** /images/upload/complete | Upload: Mark as complete |
| [**post_images_upload_init**](ImagesApi.md#post_images_upload_init) | **POST** /images/upload/init | Upload: Init |


## delete_images_image_id

> delete_images_image_id(image_id)

Delete image

delete an image by marking it as deleted

### Examples

```ruby
require 'time'
require 'rixl_api'
# setup authorization
RixlApi.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = RixlApi::ImagesApi.new
image_id = 'image_id_example' # String | Image ID

begin
  # Delete image
  api_instance.delete_images_image_id(image_id)
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->delete_images_image_id: #{e}"
end
```

#### Using the delete_images_image_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_images_image_id_with_http_info(image_id)

```ruby
begin
  # Delete image
  data, status_code, headers = api_instance.delete_images_image_id_with_http_info(image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->delete_images_image_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_id** | **String** | Image ID |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_images

> <PaginationPaginatedResponseImage> get_images(opts)

List images for a project

Retrieve all images for a specific project, with pagination and sorting.

### Examples

```ruby
require 'time'
require 'rixl_api'
# setup authorization
RixlApi.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = RixlApi::ImagesApi.new
opts = {
  limit: 56, # Integer | Maximum number of items to return in a single request. <br> **Default:** `25`
  offset: 56, # Integer | Starting point of the result set. <br>To get page 2 with a limit of 25, set `offset` to `25`. <br> **Default:** `0`
  sort: 'sort_example', # String | Field to sort by (created_at, name, size, updated_at)
  order: 'order_example' # String | Sort order (asc, desc)
}

begin
  # List images for a project
  result = api_instance.get_images(opts)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->get_images: #{e}"
end
```

#### Using the get_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginationPaginatedResponseImage>, Integer, Hash)> get_images_with_http_info(opts)

```ruby
begin
  # List images for a project
  data, status_code, headers = api_instance.get_images_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginationPaginatedResponseImage>
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->get_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of items to return in a single request. &lt;br&gt; **Default:** &#x60;25&#x60; | [optional][default to 25] |
| **offset** | **Integer** | Starting point of the result set. &lt;br&gt;To get page 2 with a limit of 25, set &#x60;offset&#x60; to &#x60;25&#x60;. &lt;br&gt; **Default:** &#x60;0&#x60; | [optional][default to 0] |
| **sort** | **String** | Field to sort by (created_at, name, size, updated_at) | [optional] |
| **order** | **String** | Sort order (asc, desc) | [optional] |

### Return type

[**PaginationPaginatedResponseImage**](PaginationPaginatedResponseImage.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_images_image_id

> <Image> get_images_image_id(image_id)

Get image

Retrieve an image by its ID for a specific project.

### Examples

```ruby
require 'time'
require 'rixl_api'
# setup authorization
RixlApi.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = RixlApi::ImagesApi.new
image_id = 'image_id_example' # String | Image ID

begin
  # Get image
  result = api_instance.get_images_image_id(image_id)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->get_images_image_id: #{e}"
end
```

#### Using the get_images_image_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> get_images_image_id_with_http_info(image_id)

```ruby
begin
  # Get image
  data, status_code, headers = api_instance.get_images_image_id_with_http_info(image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->get_images_image_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_id** | **String** | Image ID |  |

### Return type

[**Image**](Image.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_images_upload_complete

> <Image> post_images_upload_complete(request)

Upload: Mark as complete

Complete the upload process and create the image record using API key authentication

### Examples

```ruby
require 'time'
require 'rixl_api'
# setup authorization
RixlApi.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = RixlApi::ImagesApi.new
request = RixlApi::InternalImagesHandlerCompleteRequest.new # InternalImagesHandlerCompleteRequest | Upload completion request

begin
  # Upload: Mark as complete
  result = api_instance.post_images_upload_complete(request)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->post_images_upload_complete: #{e}"
end
```

#### Using the post_images_upload_complete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Image>, Integer, Hash)> post_images_upload_complete_with_http_info(request)

```ruby
begin
  # Upload: Mark as complete
  data, status_code, headers = api_instance.post_images_upload_complete_with_http_info(request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Image>
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->post_images_upload_complete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | [**InternalImagesHandlerCompleteRequest**](InternalImagesHandlerCompleteRequest.md) | Upload completion request |  |

### Return type

[**Image**](Image.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_images_upload_init

> <InternalImagesHandlerInitResponse> post_images_upload_init(request)

Upload: Init

Initialize a presigned URL upload for an image file using API key authentication

### Examples

```ruby
require 'time'
require 'rixl_api'
# setup authorization
RixlApi.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['X-API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-API-Key'] = 'Bearer'
end

api_instance = RixlApi::ImagesApi.new
request = RixlApi::InternalImagesHandlerUploadInitRequest.new # InternalImagesHandlerUploadInitRequest | Upload initialization request

begin
  # Upload: Init
  result = api_instance.post_images_upload_init(request)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->post_images_upload_init: #{e}"
end
```

#### Using the post_images_upload_init_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InternalImagesHandlerInitResponse>, Integer, Hash)> post_images_upload_init_with_http_info(request)

```ruby
begin
  # Upload: Init
  data, status_code, headers = api_instance.post_images_upload_init_with_http_info(request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InternalImagesHandlerInitResponse>
rescue RixlApi::ApiError => e
  puts "Error when calling ImagesApi->post_images_upload_init_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | [**InternalImagesHandlerUploadInitRequest**](InternalImagesHandlerUploadInitRequest.md) | Upload initialization request |  |

### Return type

[**InternalImagesHandlerInitResponse**](InternalImagesHandlerInitResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

