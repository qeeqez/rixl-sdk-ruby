# RixlApi::VideosApi

All URIs are relative to *https://api.rixl.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_videos_video_id_audio_tracks**](VideosApi.md#delete_videos_video_id_audio_tracks) | **DELETE** /videos/{videoId}/audio-tracks | Delete all audio tracks |
| [**delete_videos_video_id_audio_tracks_lang_code**](VideosApi.md#delete_videos_video_id_audio_tracks_lang_code) | **DELETE** /videos/{videoId}/audio-tracks/{lang_code} | Delete audio track by language |
| [**delete_videos_video_id_audio_tracks_track_id**](VideosApi.md#delete_videos_video_id_audio_tracks_track_id) | **DELETE** /videos/{videoId}/audio-tracks/{trackId} | Delete audio track |
| [**delete_videos_video_id_chapters**](VideosApi.md#delete_videos_video_id_chapters) | **DELETE** /videos/{videoId}/chapters | Delete video chapters |
| [**delete_videos_video_id_delete**](VideosApi.md#delete_videos_video_id_delete) | **DELETE** /videos/{videoId}/delete | Delete video |
| [**delete_videos_video_id_subtitles**](VideosApi.md#delete_videos_video_id_subtitles) | **DELETE** /videos/{videoId}/subtitles | Delete all subtitles |
| [**delete_videos_video_id_subtitles_lang_code**](VideosApi.md#delete_videos_video_id_subtitles_lang_code) | **DELETE** /videos/{videoId}/subtitles/{lang_code} | Delete subtitle by language |
| [**delete_videos_video_id_subtitles_subtitle_id**](VideosApi.md#delete_videos_video_id_subtitles_subtitle_id) | **DELETE** /videos/{videoId}/subtitles/{subtitleId} | Delete subtitle |
| [**get_videos**](VideosApi.md#get_videos) | **GET** /videos | List videos for a project |
| [**get_videos_languages**](VideosApi.md#get_videos_languages) | **GET** /videos/languages | List available subtitle languages |
| [**get_videos_video_id**](VideosApi.md#get_videos_video_id) | **GET** /videos/{videoId} | Get a video |
| [**post_videos_upload_complete**](VideosApi.md#post_videos_upload_complete) | **POST** /videos/upload/complete | Upload: Mark as complete |
| [**post_videos_upload_init**](VideosApi.md#post_videos_upload_init) | **POST** /videos/upload/init | Upload: Init |
| [**post_videos_video_id_audio_tracks**](VideosApi.md#post_videos_video_id_audio_tracks) | **POST** /videos/{videoId}/audio-tracks | Bulk upsert video audio tracks |
| [**post_videos_video_id_subtitles**](VideosApi.md#post_videos_video_id_subtitles) | **POST** /videos/{videoId}/subtitles | Bulk upsert video subtitles |
| [**put_videos_video_id_audio_tracks_lang_code**](VideosApi.md#put_videos_video_id_audio_tracks_lang_code) | **PUT** /videos/{videoId}/audio-tracks/{lang_code} | Upsert video audio track |
| [**put_videos_video_id_chapters**](VideosApi.md#put_videos_video_id_chapters) | **PUT** /videos/{videoId}/chapters | Update video chapters |
| [**put_videos_video_id_subtitles_lang_code**](VideosApi.md#put_videos_video_id_subtitles_lang_code) | **PUT** /videos/{videoId}/subtitles/{lang_code} | Upsert video subtitle |
| [**put_videos_video_id_thumbnail**](VideosApi.md#put_videos_video_id_thumbnail) | **PUT** /videos/{videoId}/thumbnail | Update video thumbnail |


## delete_videos_video_id_audio_tracks

> <AudioTrackDelete> delete_videos_video_id_audio_tracks(video_id)

Delete all audio tracks

Remove all additional audio tracks from a video using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID

begin
  # Delete all audio tracks
  result = api_instance.delete_videos_video_id_audio_tracks(video_id)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_audio_tracks: #{e}"
end
```

#### Using the delete_videos_video_id_audio_tracks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AudioTrackDelete>, Integer, Hash)> delete_videos_video_id_audio_tracks_with_http_info(video_id)

```ruby
begin
  # Delete all audio tracks
  data, status_code, headers = api_instance.delete_videos_video_id_audio_tracks_with_http_info(video_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AudioTrackDelete>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_audio_tracks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |

### Return type

[**AudioTrackDelete**](AudioTrackDelete.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_videos_video_id_audio_tracks_lang_code

> <AudioTrackDelete> delete_videos_video_id_audio_tracks_lang_code(video_id, lang_code)

Delete audio track by language

Remove an audio track for a specific language using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
lang_code = 'lang_code_example' # String | Language Code (BCP 47)

begin
  # Delete audio track by language
  result = api_instance.delete_videos_video_id_audio_tracks_lang_code(video_id, lang_code)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_audio_tracks_lang_code: #{e}"
end
```

#### Using the delete_videos_video_id_audio_tracks_lang_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AudioTrackDelete>, Integer, Hash)> delete_videos_video_id_audio_tracks_lang_code_with_http_info(video_id, lang_code)

```ruby
begin
  # Delete audio track by language
  data, status_code, headers = api_instance.delete_videos_video_id_audio_tracks_lang_code_with_http_info(video_id, lang_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AudioTrackDelete>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_audio_tracks_lang_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **lang_code** | **String** | Language Code (BCP 47) |  |

### Return type

[**AudioTrackDelete**](AudioTrackDelete.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_videos_video_id_audio_tracks_track_id

> <AudioTrackDelete> delete_videos_video_id_audio_tracks_track_id(video_id, track_id)

Delete audio track

Remove an additional audio track from a video using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
track_id = 'track_id_example' # String | Audio Track ID

begin
  # Delete audio track
  result = api_instance.delete_videos_video_id_audio_tracks_track_id(video_id, track_id)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_audio_tracks_track_id: #{e}"
end
```

#### Using the delete_videos_video_id_audio_tracks_track_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AudioTrackDelete>, Integer, Hash)> delete_videos_video_id_audio_tracks_track_id_with_http_info(video_id, track_id)

```ruby
begin
  # Delete audio track
  data, status_code, headers = api_instance.delete_videos_video_id_audio_tracks_track_id_with_http_info(video_id, track_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AudioTrackDelete>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_audio_tracks_track_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **track_id** | **String** | Audio Track ID |  |

### Return type

[**AudioTrackDelete**](AudioTrackDelete.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_videos_video_id_chapters

> <UpdateChaptersResponse> delete_videos_video_id_chapters(video_id)

Delete video chapters

Remove all chapters from a video using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID

begin
  # Delete video chapters
  result = api_instance.delete_videos_video_id_chapters(video_id)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_chapters: #{e}"
end
```

#### Using the delete_videos_video_id_chapters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateChaptersResponse>, Integer, Hash)> delete_videos_video_id_chapters_with_http_info(video_id)

```ruby
begin
  # Delete video chapters
  data, status_code, headers = api_instance.delete_videos_video_id_chapters_with_http_info(video_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateChaptersResponse>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_chapters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |

### Return type

[**UpdateChaptersResponse**](UpdateChaptersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_videos_video_id_delete

> delete_videos_video_id_delete(video_id)

Delete video

Delete a video by its ID within a project

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID

begin
  # Delete video
  api_instance.delete_videos_video_id_delete(video_id)
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_delete: #{e}"
end
```

#### Using the delete_videos_video_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_videos_video_id_delete_with_http_info(video_id)

```ruby
begin
  # Delete video
  data, status_code, headers = api_instance.delete_videos_video_id_delete_with_http_info(video_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |

### Return type

nil (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_videos_video_id_subtitles

> <SubtitleDelete> delete_videos_video_id_subtitles(video_id)

Delete all subtitles

Remove all subtitles from a video using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID

begin
  # Delete all subtitles
  result = api_instance.delete_videos_video_id_subtitles(video_id)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_subtitles: #{e}"
end
```

#### Using the delete_videos_video_id_subtitles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubtitleDelete>, Integer, Hash)> delete_videos_video_id_subtitles_with_http_info(video_id)

```ruby
begin
  # Delete all subtitles
  data, status_code, headers = api_instance.delete_videos_video_id_subtitles_with_http_info(video_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubtitleDelete>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_subtitles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |

### Return type

[**SubtitleDelete**](SubtitleDelete.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_videos_video_id_subtitles_lang_code

> <SubtitleDelete> delete_videos_video_id_subtitles_lang_code(video_id, lang_code)

Delete subtitle by language

Remove a subtitle for a specific language using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
lang_code = 'lang_code_example' # String | Language Code (BCP 47)

begin
  # Delete subtitle by language
  result = api_instance.delete_videos_video_id_subtitles_lang_code(video_id, lang_code)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_subtitles_lang_code: #{e}"
end
```

#### Using the delete_videos_video_id_subtitles_lang_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubtitleDelete>, Integer, Hash)> delete_videos_video_id_subtitles_lang_code_with_http_info(video_id, lang_code)

```ruby
begin
  # Delete subtitle by language
  data, status_code, headers = api_instance.delete_videos_video_id_subtitles_lang_code_with_http_info(video_id, lang_code)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubtitleDelete>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_subtitles_lang_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **lang_code** | **String** | Language Code (BCP 47) |  |

### Return type

[**SubtitleDelete**](SubtitleDelete.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## delete_videos_video_id_subtitles_subtitle_id

> <SubtitleDelete> delete_videos_video_id_subtitles_subtitle_id(video_id, subtitle_id)

Delete subtitle

Remove a subtitle from a video using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
subtitle_id = 'subtitle_id_example' # String | Subtitle ID

begin
  # Delete subtitle
  result = api_instance.delete_videos_video_id_subtitles_subtitle_id(video_id, subtitle_id)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_subtitles_subtitle_id: #{e}"
end
```

#### Using the delete_videos_video_id_subtitles_subtitle_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubtitleDelete>, Integer, Hash)> delete_videos_video_id_subtitles_subtitle_id_with_http_info(video_id, subtitle_id)

```ruby
begin
  # Delete subtitle
  data, status_code, headers = api_instance.delete_videos_video_id_subtitles_subtitle_id_with_http_info(video_id, subtitle_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubtitleDelete>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->delete_videos_video_id_subtitles_subtitle_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **subtitle_id** | **String** | Subtitle ID |  |

### Return type

[**SubtitleDelete**](SubtitleDelete.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_videos

> <PaginationPaginatedResponseVideo> get_videos(opts)

List videos for a project

Retrieve all videos for a specific project, with pagination and sorting.

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

api_instance = RixlApi::VideosApi.new
opts = {
  limit: 56, # Integer | Maximum number of items to return in a single request. <br> **Default:** `25`
  offset: 56, # Integer | Starting point of the result set. <br>To get page 2 with a limit of 25, set `offset` to `25`. <br> **Default:** `0`
  sort: 'sort_example', # String | Field to sort by (created_at, name, size, updated_at, duration)
  order: 'order_example' # String | Sort order (asc, desc)
}

begin
  # List videos for a project
  result = api_instance.get_videos(opts)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->get_videos: #{e}"
end
```

#### Using the get_videos_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginationPaginatedResponseVideo>, Integer, Hash)> get_videos_with_http_info(opts)

```ruby
begin
  # List videos for a project
  data, status_code, headers = api_instance.get_videos_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginationPaginatedResponseVideo>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->get_videos_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum number of items to return in a single request. &lt;br&gt; **Default:** &#x60;25&#x60; | [optional][default to 25] |
| **offset** | **Integer** | Starting point of the result set. &lt;br&gt;To get page 2 with a limit of 25, set &#x60;offset&#x60; to &#x60;25&#x60;. &lt;br&gt; **Default:** &#x60;0&#x60; | [optional][default to 0] |
| **sort** | **String** | Field to sort by (created_at, name, size, updated_at, duration) | [optional] |
| **order** | **String** | Sort order (asc, desc) | [optional] |

### Return type

[**PaginationPaginatedResponseVideo**](PaginationPaginatedResponseVideo.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_videos_languages

> <Array<InternalVideosHandlerSubtitlesLanguageResponse>> get_videos_languages

List available subtitle languages

Get list of supported languages for subtitles

### Examples

```ruby
require 'time'
require 'rixl_api'

api_instance = RixlApi::VideosApi.new

begin
  # List available subtitle languages
  result = api_instance.get_videos_languages
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->get_videos_languages: #{e}"
end
```

#### Using the get_videos_languages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<InternalVideosHandlerSubtitlesLanguageResponse>>, Integer, Hash)> get_videos_languages_with_http_info

```ruby
begin
  # List available subtitle languages
  data, status_code, headers = api_instance.get_videos_languages_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<InternalVideosHandlerSubtitlesLanguageResponse>>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->get_videos_languages_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;InternalVideosHandlerSubtitlesLanguageResponse&gt;**](InternalVideosHandlerSubtitlesLanguageResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_videos_video_id

> <Video> get_videos_video_id(video_id)

Get a video

Retrieve a video by its ID for a specific project.

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID

begin
  # Get a video
  result = api_instance.get_videos_video_id(video_id)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->get_videos_video_id: #{e}"
end
```

#### Using the get_videos_video_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Video>, Integer, Hash)> get_videos_video_id_with_http_info(video_id)

```ruby
begin
  # Get a video
  data, status_code, headers = api_instance.get_videos_video_id_with_http_info(video_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Video>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->get_videos_video_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |

### Return type

[**Video**](Video.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_videos_upload_complete

> <Video> post_videos_upload_complete(request)

Upload: Mark as complete

Mark a video upload as complete after successful upload to storage using API key authentication

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

api_instance = RixlApi::VideosApi.new
request = RixlApi::GithubComQeeqezApiInternalVideosHandlerUploadCompleteRequest.new # GithubComQeeqezApiInternalVideosHandlerUploadCompleteRequest | Video upload completion request

begin
  # Upload: Mark as complete
  result = api_instance.post_videos_upload_complete(request)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->post_videos_upload_complete: #{e}"
end
```

#### Using the post_videos_upload_complete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Video>, Integer, Hash)> post_videos_upload_complete_with_http_info(request)

```ruby
begin
  # Upload: Mark as complete
  data, status_code, headers = api_instance.post_videos_upload_complete_with_http_info(request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Video>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->post_videos_upload_complete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | [**GithubComQeeqezApiInternalVideosHandlerUploadCompleteRequest**](GithubComQeeqezApiInternalVideosHandlerUploadCompleteRequest.md) | Video upload completion request |  |

### Return type

[**Video**](Video.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_videos_upload_init

> <GithubComQeeqezApiInternalVideosHandlerUploadInitResponse> post_videos_upload_init(request)

Upload: Init

Initialize a video upload and get presigned URLs for video and poster using API key authentication

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

api_instance = RixlApi::VideosApi.new
request = RixlApi::VideoUploadInitRequest.new({file_name: 'my-video.mp4'}) # VideoUploadInitRequest | Video upload initialization request

begin
  # Upload: Init
  result = api_instance.post_videos_upload_init(request)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->post_videos_upload_init: #{e}"
end
```

#### Using the post_videos_upload_init_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GithubComQeeqezApiInternalVideosHandlerUploadInitResponse>, Integer, Hash)> post_videos_upload_init_with_http_info(request)

```ruby
begin
  # Upload: Init
  data, status_code, headers = api_instance.post_videos_upload_init_with_http_info(request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GithubComQeeqezApiInternalVideosHandlerUploadInitResponse>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->post_videos_upload_init_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request** | [**VideoUploadInitRequest**](VideoUploadInitRequest.md) | Video upload initialization request |  |

### Return type

[**GithubComQeeqezApiInternalVideosHandlerUploadInitResponse**](GithubComQeeqezApiInternalVideosHandlerUploadInitResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_videos_video_id_audio_tracks

> <Array<AudioTrack>> post_videos_video_id_audio_tracks(video_id, files, language_codes, labels)

Bulk upsert video audio tracks

Replace all audio tracks with the provided ones using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
files = [File.new('/path/to/some/file')] # Array<File> | Audio files (.mp3, .opus, .flac, .wav, .ac3, .m4a, .aac)
language_codes = 'language_codes_example' # String | Comma-separated language codes
labels = 'labels_example' # String | Comma-separated labels

begin
  # Bulk upsert video audio tracks
  result = api_instance.post_videos_video_id_audio_tracks(video_id, files, language_codes, labels)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->post_videos_video_id_audio_tracks: #{e}"
end
```

#### Using the post_videos_video_id_audio_tracks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AudioTrack>>, Integer, Hash)> post_videos_video_id_audio_tracks_with_http_info(video_id, files, language_codes, labels)

```ruby
begin
  # Bulk upsert video audio tracks
  data, status_code, headers = api_instance.post_videos_video_id_audio_tracks_with_http_info(video_id, files, language_codes, labels)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AudioTrack>>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->post_videos_video_id_audio_tracks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **files** | **Array&lt;File&gt;** | Audio files (.mp3, .opus, .flac, .wav, .ac3, .m4a, .aac) |  |
| **language_codes** | **String** | Comma-separated language codes |  |
| **labels** | **String** | Comma-separated labels |  |

### Return type

[**Array&lt;AudioTrack&gt;**](AudioTrack.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## post_videos_video_id_subtitles

> <Array<Subtitle>> post_videos_video_id_subtitles(video_id, files, language_codes, labels)

Bulk upsert video subtitles

Replace all subtitles with the provided ones using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
files = [File.new('/path/to/some/file')] # Array<File> | Subtitle files (.srt or .vtt)
language_codes = 'language_codes_example' # String | Comma-separated language codes
labels = 'labels_example' # String | Comma-separated labels

begin
  # Bulk upsert video subtitles
  result = api_instance.post_videos_video_id_subtitles(video_id, files, language_codes, labels)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->post_videos_video_id_subtitles: #{e}"
end
```

#### Using the post_videos_video_id_subtitles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Subtitle>>, Integer, Hash)> post_videos_video_id_subtitles_with_http_info(video_id, files, language_codes, labels)

```ruby
begin
  # Bulk upsert video subtitles
  data, status_code, headers = api_instance.post_videos_video_id_subtitles_with_http_info(video_id, files, language_codes, labels)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Subtitle>>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->post_videos_video_id_subtitles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **files** | **Array&lt;File&gt;** | Subtitle files (.srt or .vtt) |  |
| **language_codes** | **String** | Comma-separated language codes |  |
| **labels** | **String** | Comma-separated labels |  |

### Return type

[**Array&lt;Subtitle&gt;**](Subtitle.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## put_videos_video_id_audio_tracks_lang_code

> <AudioTrack> put_videos_video_id_audio_tracks_lang_code(video_id, lang_code, file, opts)

Upsert video audio track

Add or replace an audio track for a specific language using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
lang_code = 'lang_code_example' # String | Language Code (BCP 47)
file = File.new('/path/to/some/file') # File | Audio file (.mp3, .opus, .flac, .wav, .ac3, .m4a, .aac)
opts = {
  label: 'label_example' # String | Label (e.g. English)
}

begin
  # Upsert video audio track
  result = api_instance.put_videos_video_id_audio_tracks_lang_code(video_id, lang_code, file, opts)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->put_videos_video_id_audio_tracks_lang_code: #{e}"
end
```

#### Using the put_videos_video_id_audio_tracks_lang_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AudioTrack>, Integer, Hash)> put_videos_video_id_audio_tracks_lang_code_with_http_info(video_id, lang_code, file, opts)

```ruby
begin
  # Upsert video audio track
  data, status_code, headers = api_instance.put_videos_video_id_audio_tracks_lang_code_with_http_info(video_id, lang_code, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AudioTrack>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->put_videos_video_id_audio_tracks_lang_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **lang_code** | **String** | Language Code (BCP 47) |  |
| **file** | **File** | Audio file (.mp3, .opus, .flac, .wav, .ac3, .m4a, .aac) |  |
| **label** | **String** | Label (e.g. English) | [optional] |

### Return type

[**AudioTrack**](AudioTrack.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## put_videos_video_id_chapters

> <UpdateChaptersResponse> put_videos_video_id_chapters(video_id, request)

Update video chapters

Replace all chapters for a video (atomic PUT operation) using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
request = RixlApi::UpdateChaptersRequest.new # UpdateChaptersRequest | Chapters array

begin
  # Update video chapters
  result = api_instance.put_videos_video_id_chapters(video_id, request)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->put_videos_video_id_chapters: #{e}"
end
```

#### Using the put_videos_video_id_chapters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateChaptersResponse>, Integer, Hash)> put_videos_video_id_chapters_with_http_info(video_id, request)

```ruby
begin
  # Update video chapters
  data, status_code, headers = api_instance.put_videos_video_id_chapters_with_http_info(video_id, request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateChaptersResponse>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->put_videos_video_id_chapters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **request** | [**UpdateChaptersRequest**](UpdateChaptersRequest.md) | Chapters array |  |

### Return type

[**UpdateChaptersResponse**](UpdateChaptersResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_videos_video_id_subtitles_lang_code

> <Subtitle> put_videos_video_id_subtitles_lang_code(video_id, lang_code, file, opts)

Upsert video subtitle

Add or replace a subtitle for a specific language using API key authentication

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

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
lang_code = 'lang_code_example' # String | Language Code (BCP 47)
file = File.new('/path/to/some/file') # File | Subtitle file (.srt or .vtt)
opts = {
  label: 'label_example' # String | Label (e.g. English)
}

begin
  # Upsert video subtitle
  result = api_instance.put_videos_video_id_subtitles_lang_code(video_id, lang_code, file, opts)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->put_videos_video_id_subtitles_lang_code: #{e}"
end
```

#### Using the put_videos_video_id_subtitles_lang_code_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Subtitle>, Integer, Hash)> put_videos_video_id_subtitles_lang_code_with_http_info(video_id, lang_code, file, opts)

```ruby
begin
  # Upsert video subtitle
  data, status_code, headers = api_instance.put_videos_video_id_subtitles_lang_code_with_http_info(video_id, lang_code, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Subtitle>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->put_videos_video_id_subtitles_lang_code_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **lang_code** | **String** | Language Code (BCP 47) |  |
| **file** | **File** | Subtitle file (.srt or .vtt) |  |
| **label** | **String** | Label (e.g. English) | [optional] |

### Return type

[**Subtitle**](Subtitle.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## put_videos_video_id_thumbnail

> <Video> put_videos_video_id_thumbnail(video_id, thumbnail)

Update video thumbnail

Update the thumbnail image for an existing video

### Examples

```ruby
require 'time'
require 'rixl_api'

api_instance = RixlApi::VideosApi.new
video_id = 'video_id_example' # String | Video ID
thumbnail = File.new('/path/to/some/file') # File | Thumbnail image file (max 5MB, image/*)

begin
  # Update video thumbnail
  result = api_instance.put_videos_video_id_thumbnail(video_id, thumbnail)
  p result
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->put_videos_video_id_thumbnail: #{e}"
end
```

#### Using the put_videos_video_id_thumbnail_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Video>, Integer, Hash)> put_videos_video_id_thumbnail_with_http_info(video_id, thumbnail)

```ruby
begin
  # Update video thumbnail
  data, status_code, headers = api_instance.put_videos_video_id_thumbnail_with_http_info(video_id, thumbnail)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Video>
rescue RixlApi::ApiError => e
  puts "Error when calling VideosApi->put_videos_video_id_thumbnail_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_id** | **String** | Video ID |  |
| **thumbnail** | **File** | Thumbnail image file (max 5MB, image/*) |  |

### Return type

[**Video**](Video.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

