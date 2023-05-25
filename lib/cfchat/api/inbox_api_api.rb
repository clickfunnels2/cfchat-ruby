=begin
#CF Chat

#This is the API documentation for CF Chat server.

The version of the OpenAPI document: 1.0.0
Contact: support@clickfunnels.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module Cfchat
  class InboxAPIApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Inbox details
    # Get the details of an inbox
    # @param inbox_identifier [String] The identifier obtained from API inbox channel
    # @param [Hash] opts the optional parameters
    # @return [PublicInbox]
    def get_details_of_a_inbox(inbox_identifier, opts = {})
      data, _status_code, _headers = get_details_of_a_inbox_with_http_info(inbox_identifier, opts)
      data
    end

    # Inbox details
    # Get the details of an inbox
    # @param inbox_identifier [String] The identifier obtained from API inbox channel
    # @param [Hash] opts the optional parameters
    # @return [Array<(PublicInbox, Integer, Hash)>] PublicInbox data, response status code and response headers
    def get_details_of_a_inbox_with_http_info(inbox_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InboxAPIApi.get_details_of_a_inbox ...'
      end
      # verify the required parameter 'inbox_identifier' is set
      if @api_client.config.client_side_validation && inbox_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'inbox_identifier' when calling InboxAPIApi.get_details_of_a_inbox"
      end
      # resource path
      local_var_path = '/public/api/v1/inboxes/{inbox_identifier}'.sub('{' + 'inbox_identifier' + '}', CGI.escape(inbox_identifier.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PublicInbox'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"InboxAPIApi.get_details_of_a_inbox",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InboxAPIApi#get_details_of_a_inbox\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end