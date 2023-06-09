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

# Unit tests for Cfchat::ProfileApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProfileApi' do
  before do
    # run before each test
    @api_instance = Cfchat::ProfileApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProfileApi' do
    it 'should create an instance of ProfileApi' do
      expect(@api_instance).to be_instance_of(Cfchat::ProfileApi)
    end
  end

  # unit tests for fetch_profile
  # Fetch user profile
  # Get the user profile details
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'fetch_profile test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
