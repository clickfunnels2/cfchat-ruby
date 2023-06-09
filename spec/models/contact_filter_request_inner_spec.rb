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

# Unit tests for Cfchat::ContactFilterRequestInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Cfchat::ContactFilterRequestInner do
  let(:instance) { Cfchat::ContactFilterRequestInner.new }

  describe 'test an instance of ContactFilterRequestInner' do
    it 'should create an instance of ContactFilterRequestInner' do
      expect(instance).to be_instance_of(Cfchat::ContactFilterRequestInner)
    end
  end
  describe 'test attribute "attribute_key"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "filter_operator"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["equal_to", "not_equal_to", "contains", "does_not_contain"])
      # validator.allowable_values.each do |value|
      #   expect { instance.filter_operator = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "values"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "query_operator"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["AND", "OR"])
      # validator.allowable_values.each do |value|
      #   expect { instance.query_operator = value }.not_to raise_error
      # end
    end
  end

end
