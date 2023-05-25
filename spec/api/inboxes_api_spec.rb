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

# Unit tests for Cfchat::InboxesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InboxesApi' do
  before do
    # run before each test
    @api_instance = Cfchat::InboxesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InboxesApi' do
    it 'should create an instance of InboxesApi' do
      expect(@api_instance).to be_instance_of(Cfchat::InboxesApi)
    end
  end

  # unit tests for add_new_agent_to_inbox
  # Add a New Agent
  # Add a new Agent to Inbox
  # @param account_id The numeric ID of the account
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Array<Agent>]
  describe 'add_new_agent_to_inbox test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_agent_in_inbox
  # Remove an Agent from Inbox
  # Remove an Agent from Inbox
  # @param account_id The numeric ID of the account
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_agent_in_inbox test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_inbox
  # Get an inbox
  # Get an inbox available in the current account
  # @param account_id The numeric ID of the account
  # @param id ID of the inbox
  # @param [Hash] opts the optional parameters
  # @return [Inbox]
  describe 'get_inbox test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_inbox_agent_bot
  # Show Inbox Agent Bot
  # See if an agent bot is associated to the Inbox
  # @param account_id The numeric ID of the account
  # @param id ID of the inbox
  # @param [Hash] opts the optional parameters
  # @return [AgentBot]
  describe 'get_inbox_agent_bot test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_inbox_members
  # List Agents in Inbox
  # Get Details of Agents in an Inbox
  # @param account_id The numeric ID of the account
  # @param inbox_id The ID of the Inbox
  # @param [Hash] opts the optional parameters
  # @return [Array<Agent>]
  describe 'get_inbox_members test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for inbox_creation
  # Create an inbox
  # You can create more than one website inbox in each account
  # @param account_id The numeric ID of the account
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Inbox]
  describe 'inbox_creation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_all_inboxes
  # List all inboxes
  # List all inboxes available in the current account
  # @param account_id The numeric ID of the account
  # @param [Hash] opts the optional parameters
  # @return [Array<Inbox>]
  describe 'list_all_inboxes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_agent_bot
  # Add or remove agent bot
  # To add an agent bot pass agent_bot id, to remove agent bot from an inbox pass null
  # @param account_id The numeric ID of the account
  # @param id ID of the inbox
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_agent_bot test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_agents_in_inbox
  # Update Agents in Inbox
  # All agents except the one passed in params will be removed
  # @param account_id The numeric ID of the account
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Array<Agent>]
  describe 'update_agents_in_inbox test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_inbox
  # Update Inbox
  # Add avatar and disable auto assignment for an inbox
  # @param account_id The numeric ID of the account
  # @param id ID of the inbox
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [Inbox]
  describe 'update_inbox test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end