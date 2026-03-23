# RIXL Ruby SDK

The RIXL Ruby SDK provides a simple and expressive way to interact with the RIXL API. Built for productivity and ease of use.

## Gems

The SDK is split into service-specific gems:

- **rixl-sdk-ruby-feeds**: Access and manage feeds.
- **rixl-sdk-ruby-videos**: Video lifecycle and processing management.
- **rixl-sdk-ruby-images**: Image management and transformations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rixl-sdk-ruby-videos'
```

And then execute:

```bash
bundle install
```

## Usage

```ruby
require 'rixl_videos_sdk'

api = RixlVideosSdk::VideosApi.new
# api.get_video(...)
```

## Documentation

Full documentation is available at [docs.rixl.com](https://docs.rixl.com).
