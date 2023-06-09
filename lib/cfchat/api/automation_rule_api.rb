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
  class AutomationRuleApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a new automation rule
    # Add a new automation rule to account
    # @param account_id [Integer] The numeric ID of the account
    # @param data [AutomationRuleCreateUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [AutomationRule]
    def add_new_automation_rule_to_account(account_id, data, opts = {})
      data, _status_code, _headers = add_new_automation_rule_to_account_with_http_info(account_id, data, opts)
      data
    end

    # Add a new automation rule
    # Add a new automation rule to account
    # @param account_id [Integer] The numeric ID of the account
    # @param data [AutomationRuleCreateUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AutomationRule, Integer, Hash)>] AutomationRule data, response status code and response headers
    def add_new_automation_rule_to_account_with_http_info(account_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationRuleApi.add_new_automation_rule_to_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AutomationRuleApi.add_new_automation_rule_to_account"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling AutomationRuleApi.add_new_automation_rule_to_account"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/automation_rules'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AutomationRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"AutomationRuleApi.add_new_automation_rule_to_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationRuleApi#add_new_automation_rule_to_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a automation rule from account
    # Remove a automation rule from account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the automation rule to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_automation_rule_from_account(account_id, id, opts = {})
      delete_automation_rule_from_account_with_http_info(account_id, id, opts)
      nil
    end

    # Remove a automation rule from account
    # Remove a automation rule from account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the automation rule to be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_automation_rule_from_account_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationRuleApi.delete_automation_rule_from_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AutomationRuleApi.delete_automation_rule_from_account"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AutomationRuleApi.delete_automation_rule_from_account"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/automation_rules/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"AutomationRuleApi.delete_automation_rule_from_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationRuleApi#delete_automation_rule_from_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all automation rules in an account
    # Get details of automation rules in an Account
    # @param account_id [Integer] The numeric ID of the account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page parameter (default to 1)
    # @return [Array<AutomationRule>]
    def get_account_automation_rule(account_id, opts = {})
      data, _status_code, _headers = get_account_automation_rule_with_http_info(account_id, opts)
      data
    end

    # List all automation rules in an account
    # Get details of automation rules in an Account
    # @param account_id [Integer] The numeric ID of the account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The page parameter (default to 1)
    # @return [Array<(Array<AutomationRule>, Integer, Hash)>] Array<AutomationRule> data, response status code and response headers
    def get_account_automation_rule_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationRuleApi.get_account_automation_rule ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AutomationRuleApi.get_account_automation_rule"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/automation_rules'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AutomationRule>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"AutomationRuleApi.get_account_automation_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationRuleApi#get_account_automation_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a automation rule details
    # Get the details of a automation rule in the account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the automation rule to be updated.
    # @param [Hash] opts the optional parameters
    # @return [AutomationRule]
    def get_details_of_a_single_automation_rule(account_id, id, opts = {})
      data, _status_code, _headers = get_details_of_a_single_automation_rule_with_http_info(account_id, id, opts)
      data
    end

    # Get a automation rule details
    # Get the details of a automation rule in the account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the automation rule to be updated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AutomationRule, Integer, Hash)>] AutomationRule data, response status code and response headers
    def get_details_of_a_single_automation_rule_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationRuleApi.get_details_of_a_single_automation_rule ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AutomationRuleApi.get_details_of_a_single_automation_rule"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AutomationRuleApi.get_details_of_a_single_automation_rule"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/automation_rules/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'AutomationRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"AutomationRuleApi.get_details_of_a_single_automation_rule",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationRuleApi#get_details_of_a_single_automation_rule\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update automation rule in Account
    # Update a automation rule in account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the automation rule to be updated.
    # @param data [AutomationRuleCreateUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [AutomationRule]
    def update_automation_rule_in_account(account_id, id, data, opts = {})
      data, _status_code, _headers = update_automation_rule_in_account_with_http_info(account_id, id, data, opts)
      data
    end

    # Update automation rule in Account
    # Update a automation rule in account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the automation rule to be updated.
    # @param data [AutomationRuleCreateUpdatePayload] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AutomationRule, Integer, Hash)>] AutomationRule data, response status code and response headers
    def update_automation_rule_in_account_with_http_info(account_id, id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomationRuleApi.update_automation_rule_in_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AutomationRuleApi.update_automation_rule_in_account"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AutomationRuleApi.update_automation_rule_in_account"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling AutomationRuleApi.update_automation_rule_in_account"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/automation_rules/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'AutomationRule'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"AutomationRuleApi.update_automation_rule_in_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomationRuleApi#update_automation_rule_in_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
