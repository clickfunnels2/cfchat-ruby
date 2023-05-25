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

# Unit tests for Cfchat::ExtendedContact
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Cfchat::ExtendedContact do
  let(:instance) { Cfchat::ExtendedContact.new }

  describe 'test an instance of ExtendedContact' do
    it 'should create an instance of ExtendedContact' do
      expect(instance).to be_instance_of(Cfchat::ExtendedContact)
    end
  end
  describe 'test attribute "payload"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "availability_status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["online", "offline"])
      # validator.allowable_values.each do |value|
      #   expect { instance.availability_status = value }.not_to raise_error
      # end
    end
  end

end
