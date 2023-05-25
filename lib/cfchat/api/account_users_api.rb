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
  class AccountUsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an Account User
    # Create an Account User
    # @param account_id [Integer] The numeric ID of the account
    # @param data [CreateAnAccountUserRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def create_an_account_user(account_id, data, opts = {})
      data, _status_code, _headers = create_an_account_user_with_http_info(account_id, data, opts)
      data
    end

    # Create an Account User
    # Create an Account User
    # @param account_id [Integer] The numeric ID of the account
    # @param data [CreateAnAccountUserRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def create_an_account_user_with_http_info(account_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsersApi.create_an_account_user ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountUsersApi.create_an_account_user"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling AccountUsersApi.create_an_account_user"
      end
      # resource path
      local_var_path = '/platform/api/v1/accounts/{account_id}/account_users'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['platformAppApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsersApi.create_an_account_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsersApi#create_an_account_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an Account User
    # Delete an Account User
    # @param account_id [Integer] The numeric ID of the account
    # @param data [DeleteAnAccountUserRequest] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_an_account_user(account_id, data, opts = {})
      delete_an_account_user_with_http_info(account_id, data, opts)
      nil
    end

    # Delete an Account User
    # Delete an Account User
    # @param account_id [Integer] The numeric ID of the account
    # @param data [DeleteAnAccountUserRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_an_account_user_with_http_info(account_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsersApi.delete_an_account_user ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountUsersApi.delete_an_account_user"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling AccountUsersApi.delete_an_account_user"
      end
      # resource path
      local_var_path = '/platform/api/v1/accounts/{account_id}/account_users'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
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
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['platformAppApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsersApi.delete_an_account_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsersApi#delete_an_account_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all Account Users
    # List all account users
    # @param account_id [Integer] The numeric ID of the account
    # @param [Hash] opts the optional parameters
    # @return [Array<ListAllAccountUsers200ResponseInner>]
    def list_all_account_users(account_id, opts = {})
      data, _status_code, _headers = list_all_account_users_with_http_info(account_id, opts)
      data
    end

    # List all Account Users
    # List all account users
    # @param account_id [Integer] The numeric ID of the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ListAllAccountUsers200ResponseInner>, Integer, Hash)>] Array<ListAllAccountUsers200ResponseInner> data, response status code and response headers
    def list_all_account_users_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountUsersApi.list_all_account_users ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountUsersApi.list_all_account_users"
      end
      # resource path
      local_var_path = '/platform/api/v1/accounts/{account_id}/account_users'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ListAllAccountUsers200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['platformAppApiKey']

      new_options = opts.merge(
        :operation => :"AccountUsersApi.list_all_account_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountUsersApi#list_all_account_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
