=begin
#CF Chat

#This is the API documentation for CF Chat server.

The version of the OpenAPI document: 1.0.0
Contact: support@clickfunnels.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Cfchat::AccountAgentBotsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountAgentBotsApi' do
  before do
    # run before each test
    @api_instance = Cfchat::AccountAgentBotsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountAgentBotsApi' do
    it 'should create an instance of AccountAgentBotsApi' do
      expect(@api_instance).to be_instance_of(Cfchat::AccountAgentBotsApi)
    end
  end

  # unit tests for create_an_account_agent_bot
  # Create an Agent Bot
  # Create an agent bot in the account
  # @param account_id The numeric ID of the account
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AgentBot]
  describe 'create_an_account_agent_bot test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_an_account_agent_bot
  # Delete an AgentBot
  # Delete an AgentBot from the account
  # @param account_id The numeric ID of the account
  # @param id The ID of the agentbot to be updated
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_an_account_agent_bot test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_details_of_a_single_account_agent_bot
  # Get an agent bot details
  # Get the details of an agent bot in the account
  # @param account_id The numeric ID of the account
  # @param id The ID of the agentbot to be updated
  # @param [Hash] opts the optional parameters
  # @return [AgentBot]
  describe 'get_details_of_a_single_account_agent_bot test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_all_account_agent_bots
  # List all AgentBots
  # List all agent bots available for the current account
  # @param account_id The numeric ID of the account
  # @param [Hash] opts the optional parameters
  # @return [Array<AgentBot>]
  describe 'list_all_account_agent_bots test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_an_account_agent_bot
  # Update an agent bot
  # Update an agent bot&#39;s attributes
  # @param account_id The numeric ID of the account
  # @param id The ID of the agentbot to be updated
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AgentBot]
  describe 'update_an_account_agent_bot test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
