require 'microsoft_kiota_abstractions'
require_relative '../rixl'
require_relative './feeds'
require_relative './item/with_feed_item_request_builder'

module Rixl
    module Feeds
        ## 
        # Builds and executes requests for operations under \feeds
        class FeedsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            ## Gets an item from the rixl.feeds.item collection
            ## @param feed_id Feed ID
            ## @return a with_feed_item_request_builder
            ## 
            def by_feed_id(feed_id)
                raise StandardError, 'feed_id cannot be null' if feed_id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["feedId"] = feed_id
                return Rixl::Feeds::Item::WithFeedItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new FeedsRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/feeds")
            end
        end
    end
end
