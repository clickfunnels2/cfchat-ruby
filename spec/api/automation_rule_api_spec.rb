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

# Unit tests for Cfchat::AutomationRuleApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AutomationRuleApi' do
  before do
    # run before each test
    @api_instance = Cfchat::AutomationRuleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AutomationRuleApi' do
    it 'should create an instance of AutomationRuleApi' do
      expect(@api_instance).to be_instance_of(Cfchat::AutomationRuleApi)
    end
  end

  # unit tests for add_new_automation_rule_to_account
  # Add a new automation rule
  # Add a new automation rule to account
  # @param account_id The numeric ID of the account
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AutomationRule]
  describe 'add_new_automation_rule_to_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_automation_rule_from_account
  # Remove a automation rule from account
  # Remove a automation rule from account
  # @param account_id The numeric ID of the account
  # @param id The ID of the automation rule to be deleted
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_automation_rule_from_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_account_automation_rule
  # List all automation rules in an account
  # Get details of automation rules in an Account
  # @param account_id The numeric ID of the account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page parameter
  # @return [Array<AutomationRule>]
  describe 'get_account_automation_rule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_details_of_a_single_automation_rule
  # Get a automation rule details
  # Get the details of a automation rule in the account
  # @param account_id The numeric ID of the account
  # @param id The ID of the automation rule to be updated.
  # @param [Hash] opts the optional parameters
  # @return [AutomationRule]
  describe 'get_details_of_a_single_automation_rule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_automation_rule_in_account
  # Update automation rule in Account
  # Update a automation rule in account
  # @param account_id The numeric ID of the account
  # @param id The ID of the automation rule to be updated.
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [AutomationRule]
  describe 'update_automation_rule_in_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
