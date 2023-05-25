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
  class ContactApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create contact inbox
    # Create a contact inbox record for an inbox
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Float] ID of the contact
    # @param data [ContactInboxCreationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ContactInboxes]
    def contact_inbox_creation(account_id, id, data, opts = {})
      data, _status_code, _headers = contact_inbox_creation_with_http_info(account_id, id, data, opts)
      data
    end

    # Create contact inbox
    # Create a contact inbox record for an inbox
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Float] ID of the contact
    # @param data [ContactInboxCreationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactInboxes, Integer, Hash)>] ContactInboxes data, response status code and response headers
    def contact_inbox_creation_with_http_info(account_id, id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.contact_inbox_creation ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ContactApi.contact_inbox_creation"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactApi.contact_inbox_creation"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling ContactApi.contact_inbox_creation"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/contacts/{id}/contact_inboxes'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json; charset=utf-8'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(data)

      # return_type
      return_type = opts[:debug_return_type] || 'ContactInboxes'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"ContactApi.contact_inbox_creation",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#contact_inbox_creation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Contactable Inboxes
    # Get List of contactable Inboxes
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Float] ID of the contact
    # @param [Hash] opts the optional parameters
    # @return [ContactableInboxes]
    def contactable_inboxes_get(account_id, id, opts = {})
      data, _status_code, _headers = contactable_inboxes_get_with_http_info(account_id, id, opts)
      data
    end

    # Get Contactable Inboxes
    # Get List of contactable Inboxes
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Float] ID of the contact
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContactableInboxes, Integer, Hash)>] ContactableInboxes data, response status code and response headers
    def contactable_inboxes_get_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactApi.contactable_inboxes_get ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ContactApi.contactable_inboxes_get"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ContactApi.contactable_inboxes_get"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/contacts/{id}/contactable_inboxes'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'ContactableInboxes'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"ContactApi.contactable_inboxes_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactApi#contactable_inboxes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
