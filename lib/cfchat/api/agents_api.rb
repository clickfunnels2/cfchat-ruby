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
  class AgentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a New Agent
    # Add a new Agent to Account
    # @param account_id [Integer] The numeric ID of the account
    # @param data [AddNewAgentToAccountRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Agent]
    def add_new_agent_to_account(account_id, data, opts = {})
      data, _status_code, _headers = add_new_agent_to_account_with_http_info(account_id, data, opts)
      data
    end

    # Add a New Agent
    # Add a new Agent to Account
    # @param account_id [Integer] The numeric ID of the account
    # @param data [AddNewAgentToAccountRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Agent, Integer, Hash)>] Agent data, response status code and response headers
    def add_new_agent_to_account_with_http_info(account_id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentsApi.add_new_agent_to_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AgentsApi.add_new_agent_to_account"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling AgentsApi.add_new_agent_to_account"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/agents'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Agent'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"AgentsApi.add_new_agent_to_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgentsApi#add_new_agent_to_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove an Agent from Account
    # Remove an Agent from Account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the agent to be deleted
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_agent_from_account(account_id, id, opts = {})
      delete_agent_from_account_with_http_info(account_id, id, opts)
      nil
    end

    # Remove an Agent from Account
    # Remove an Agent from Account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the agent to be deleted
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_agent_from_account_with_http_info(account_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentsApi.delete_agent_from_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AgentsApi.delete_agent_from_account"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgentsApi.delete_agent_from_account"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/agents/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"AgentsApi.delete_agent_from_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgentsApi#delete_agent_from_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Agents in Account
    # Get Details of Agents in an Account
    # @param account_id [Integer] The numeric ID of the account
    # @param [Hash] opts the optional parameters
    # @return [Array<Agent>]
    def get_account_agents(account_id, opts = {})
      data, _status_code, _headers = get_account_agents_with_http_info(account_id, opts)
      data
    end

    # List Agents in Account
    # Get Details of Agents in an Account
    # @param account_id [Integer] The numeric ID of the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Agent>, Integer, Hash)>] Array<Agent> data, response status code and response headers
    def get_account_agents_with_http_info(account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentsApi.get_account_agents ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AgentsApi.get_account_agents"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/agents'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Agent>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"AgentsApi.get_account_agents",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgentsApi#get_account_agents\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Agent in Account
    # Update an Agent in Account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the agent to be updated.
    # @param data [UpdateAgentInAccountRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Agent]
    def update_agent_in_account(account_id, id, data, opts = {})
      data, _status_code, _headers = update_agent_in_account_with_http_info(account_id, id, data, opts)
      data
    end

    # Update Agent in Account
    # Update an Agent in Account
    # @param account_id [Integer] The numeric ID of the account
    # @param id [Integer] The ID of the agent to be updated.
    # @param data [UpdateAgentInAccountRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Agent, Integer, Hash)>] Agent data, response status code and response headers
    def update_agent_in_account_with_http_info(account_id, id, data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AgentsApi.update_agent_in_account ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AgentsApi.update_agent_in_account"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AgentsApi.update_agent_in_account"
      end
      # verify the required parameter 'data' is set
      if @api_client.config.client_side_validation && data.nil?
        fail ArgumentError, "Missing the required parameter 'data' when calling AgentsApi.update_agent_in_account"
      end
      # resource path
      local_var_path = '/api/v1/accounts/{account_id}/agents/{id}'.sub('{' + 'account_id' + '}', CGI.escape(account_id.to_s)).sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Agent'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['userApiKey']

      new_options = opts.merge(
        :operation => :"AgentsApi.update_agent_in_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AgentsApi#update_agent_in_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
