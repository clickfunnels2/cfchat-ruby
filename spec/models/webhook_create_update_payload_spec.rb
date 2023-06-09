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

# Unit tests for Cfchat::WebhookCreateUpdatePayload
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Cfchat::WebhookCreateUpdatePayload do
  let(:instance) { Cfchat::WebhookCreateUpdatePayload.new }

  describe 'test an instance of WebhookCreateUpdatePayload' do
    it 'should create an instance of WebhookCreateUpdatePayload' do
      expect(instance).to be_instance_of(Cfchat::WebhookCreateUpdatePayload)
    end
  end
  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "subscriptions"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["conversation_created", "conversation_status_changed", "conversation_updated", "message_created", "message_updated", "webwidget_triggered"])
      # validator.allowable_values.each do |value|
      #   expect { instance.subscriptions = value }.not_to raise_error
      # end
    end
  end

end
