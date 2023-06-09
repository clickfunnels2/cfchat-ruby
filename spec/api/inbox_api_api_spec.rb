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

# Unit tests for Cfchat::InboxAPIApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InboxAPIApi' do
  before do
    # run before each test
    @api_instance = Cfchat::InboxAPIApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InboxAPIApi' do
    it 'should create an instance of InboxAPIApi' do
      expect(@api_instance).to be_instance_of(Cfchat::InboxAPIApi)
    end
  end

  # unit tests for get_details_of_a_inbox
  # Inbox details
  # Get the details of an inbox
  # @param inbox_identifier The identifier obtained from API inbox channel
  # @param [Hash] opts the optional parameters
  # @return [PublicInbox]
  describe 'get_details_of_a_inbox test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
