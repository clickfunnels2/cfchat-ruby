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

# Unit tests for Cfchat::MessagesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MessagesApi' do
  before do
    # run before each test
    @api_instance = Cfchat::MessagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessagesApi' do
    it 'should create an instance of MessagesApi' do
      expect(@api_instance).to be_instance_of(Cfchat::MessagesApi)
    end
  end

  # unit tests for create_a_new_message_in_a_conversation
  # Create New Message
  # Create a new message in the conversation
  # @param account_id The numeric ID of the account
  # @param conversation_id The numeric ID of the conversation
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [CreateANewMessageInAConversation200Response]
  describe 'create_a_new_message_in_a_conversation test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_a_message
  # Delete a message
  # Delete a message and it&#39;s attachments from the conversation.
  # @param account_id The numeric ID of the account
  # @param conversation_id The numeric ID of the conversation
  # @param message_id The numeric ID of the message
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_a_message test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_all_messages
  # Get messages
  # List all messages of a conversation
  # @param account_id The numeric ID of the account
  # @param conversation_id The numeric ID of the conversation
  # @param [Hash] opts the optional parameters
  # @return [Array<ListAllMessages200ResponseInner>]
  describe 'list_all_messages test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
