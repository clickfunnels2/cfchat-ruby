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
require 'date'

# Unit tests for Cfchat::UpdateAgentInAccountRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Cfchat::UpdateAgentInAccountRequest do
  let(:instance) { Cfchat::UpdateAgentInAccountRequest.new }

  describe 'test an instance of UpdateAgentInAccountRequest' do
    it 'should create an instance of UpdateAgentInAccountRequest' do
      expect(instance).to be_instance_of(Cfchat::UpdateAgentInAccountRequest)
    end
  end
  describe 'test attribute "role"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["agent", "administrator"])
      # validator.allowable_values.each do |value|
      #   expect { instance.role = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "availability"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["available", "busy", "offline"])
      # validator.allowable_values.each do |value|
      #   expect { instance.availability = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "auto_offline"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
