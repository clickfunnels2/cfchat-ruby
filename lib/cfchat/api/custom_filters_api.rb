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
  class CustomFiltersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a custom filter
    # Create a custom filter in the account
    # @param account_id [Integer] The numeric ID of the account
    # @param data [CustomFilterCreateUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_type The type of custom filter
    # @return [CustomFilter]
    def create_a_custom_filter(account_id, data, opts = {})
      data, _status_code, _headers = create_a_custom_filter_with_http_info(account_id, data, opts)
      data
    end

    # Create a custom filter
    # Create a custom filter in the account
    # @param account_id [Integer] The numeric ID of the account
    # @param data [CustomFilterCreateUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_type The type of custom filter
    # @return [Array<(CustomFilter, Integer, Hash)>] CustomFilter data, response status code and response headers
    def create_a_custom_filter_with_http_info(account_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomFiltersApi.create_a_custom_filter ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomFiltersApi.create_a_custom_filter"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling CustomFiltersApi.create_a_custom_filter"
      end
      allowable_values = ["conversation", "contact", "report"]
      if @api_client.config.client_side_validation && opts[:'filter_type'] && !allowable_values.include?(opts[:'filter_type'])
        fail ArgumentError, "invalid value for \"filter_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/custom_filters'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter_type'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?

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
      return_type = opts[:debug_return_type] || 'CustomFilter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"CustomFiltersApi.create_a_custom_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomFiltersApi#create_a_custom_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a custom filter
    # Delete a custom filter from the account
    # @param account_id [Integer] The numeric ID of the account
    # @param custom_filter_id [Integer] The numeric ID of the custom filter
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_a_custom_filter(account_id, custom_filter_id, opts = {})
      delete_a_custom_filter_with_http_info(account_id, custom_filter_id, opts)
      nil
    end

    # Delete a custom filter
    # Delete a custom filter from the account
    # @param account_id [Integer] The numeric ID of the account
    # @param custom_filter_id [Integer] The numeric ID of the custom filter
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_a_custom_filter_with_http_info(account_id, custom_filter_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomFiltersApi.delete_a_custom_filter ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomFiltersApi.delete_a_custom_filter"
      end
      # verify the required parameter 'custom_filter_id' is set
      if @api_client.config.client_side_validation && custom_filter_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_filter_id' when calling CustomFiltersApi.delete_a_custom_filter"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/custom_filters/{custom_filter_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'custom_filter_id' + '}', CGI.escape(custom_filter_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"CustomFiltersApi.delete_a_custom_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomFiltersApi#delete_a_custom_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a custom filter details
    # Get the details of a custom filter in the account
    # @param account_id [Integer] The numeric ID of the account
    # @param custom_filter_id [Integer] The numeric ID of the custom filter
    # @param [Hash] opts the optional parameters
    # @return [CustomFilter]
    def get_details_of_a_single_custom_filter(account_id, custom_filter_id, opts = {})
      data, _status_code, _headers = get_details_of_a_single_custom_filter_with_http_info(account_id, custom_filter_id, opts)
      data
    end

    # Get a custom filter details
    # Get the details of a custom filter in the account
    # @param account_id [Integer] The numeric ID of the account
    # @param custom_filter_id [Integer] The numeric ID of the custom filter
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomFilter, Integer, Hash)>] CustomFilter data, response status code and response headers
    def get_details_of_a_single_custom_filter_with_http_info(account_id, custom_filter_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomFiltersApi.get_details_of_a_single_custom_filter ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomFiltersApi.get_details_of_a_single_custom_filter"
      end
      # verify the required parameter 'custom_filter_id' is set
      if @api_client.config.client_side_validation && custom_filter_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_filter_id' when calling CustomFiltersApi.get_details_of_a_single_custom_filter"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/custom_filters/{custom_filter_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'custom_filter_id' + '}', CGI.escape(custom_filter_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomFilter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"CustomFiltersApi.get_details_of_a_single_custom_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomFiltersApi#get_details_of_a_single_custom_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all custom filters
    # List all custom filters in a category of a user
    # @param account_id [Integer] The numeric ID of the account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_type The type of custom filter
    # @return [Array<CustomFilter>]
    def list_all_filters(account_id, opts = {})
      data, _status_code, _headers = list_all_filters_with_http_info(account_id, opts)
      data
    end

    # List all custom filters
    # List all custom filters in a category of a user
    # @param account_id [Integer] The numeric ID of the account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter_type The type of custom filter
    # @return [Array<(Array<CustomFilter>, Integer, Hash)>] Array<CustomFilter> data, response status code and response headers
    def list_all_filters_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomFiltersApi.list_all_filters ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomFiltersApi.list_all_filters"
      end
      allowable_values = ["conversation", "contact", "report"]
      if @api_client.config.client_side_validation && opts[:'filter_type'] && !allowable_values.include?(opts[:'filter_type'])
        fail ArgumentError, "invalid value for \"filter_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/custom_filters'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter_type'] = opts[:'filter_type'] if !opts[:'filter_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<CustomFilter>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"CustomFiltersApi.list_all_filters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomFiltersApi#list_all_filters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a custom filter
    # Update a custom filter's attributes
    # @param account_id [Integer] The numeric ID of the account
    # @param custom_filter_id [Integer] The numeric ID of the custom filter
    # @param data [CustomFilterCreateUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [CustomFilter]
    def update_a_custom_filter(account_id, custom_filter_id, data, opts = {})
      data, _status_code, _headers = update_a_custom_filter_with_http_info(account_id, custom_filter_id, data, opts)
      data
    end

    # Update a custom filter
    # Update a custom filter&#39;s attributes
    # @param account_id [Integer] The numeric ID of the account
    # @param custom_filter_id [Integer] The numeric ID of the custom filter
    # @param data [CustomFilterCreateUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CustomFilter, Integer, Hash)>] CustomFilter data, response status code and response headers
    def update_a_custom_filter_with_http_info(account_id, custom_filter_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomFiltersApi.update_a_custom_filter ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CustomFiltersApi.update_a_custom_filter"
      end
      # verify the required parameter 'custom_filter_id' is set
      if @api_client.config.client_side_validation && custom_filter_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_filter_id' when calling CustomFiltersApi.update_a_custom_filter"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling CustomFiltersApi.update_a_custom_filter"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/custom_filters/{custom_filter_id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'custom_filter_id' + '}', CGI.escape(custom_filter_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CustomFilter'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"CustomFiltersApi.update_a_custom_filter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomFiltersApi#update_a_custom_filter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end