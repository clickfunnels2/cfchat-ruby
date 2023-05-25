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

# Unit tests for Cfchat::ContactsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactsApi' do
  before do
    # run before each test
    @api_instance = Cfchat::ContactsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactsApi' do
    it 'should create an instance of ContactsApi' do
      expect(@api_instance).to be_instance_of(Cfchat::ContactsApi)
    end
  end

  # unit tests for contact_conversations
  # Contact Conversations
  # Get conversations associated to that contact
  # @param account_id The numeric ID of the account
  # @param id ID of the contact
  # @param [Hash] opts the optional parameters
  # @return [Array<ContactConversationsInner>]
  describe 'contact_conversations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for contact_create
  # Create Contact
  # Create a new Contact
  # @param account_id The numeric ID of the account
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [ExtendedContact]
  describe 'contact_create test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for contact_delete
  # Delete Contact
  # @param account_id The numeric ID of the account
  # @param id ID of the contact
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'contact_delete test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for contact_details
  # Show Contact
  # Get a contact belonging to the account using ID
  # @param account_id The numeric ID of the account
  # @param id ID of the contact
  # @param [Hash] opts the optional parameters
  # @return [ExtendedContact]
  describe 'contact_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for contact_filter
  # Contact Filter
  # Filter contacts with custom filter options and pagination
  # @param account_id The numeric ID of the account
  # @param payload 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page 
  # @return [Array<ContactListInner>]
  describe 'contact_filter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for contact_list
  # List Contacts
  # Listing all the resolved contacts with pagination (Page size &#x3D; 15) . Resolved contacts are the ones with a value for identifier, email or phone number
  # @param account_id The numeric ID of the account
  # @param [Hash] opts the optional parameters
  # @option opts [String] :sort The attribute by which list should be sorted
  # @option opts [Integer] :page The page parameter
  # @return [Array<ContactListInner>]
  describe 'contact_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for contact_search
  # Search Contacts
  # Search the resolved contacts using a search key, currently supports email search (Page size &#x3D; 15). Resolved contacts are the ones with a value for identifier, email or phone number
  # @param account_id The numeric ID of the account
  # @param [Hash] opts the optional parameters
  # @option opts [String] :q Search using contact &#x60;name&#x60;, &#x60;identifier&#x60;, &#x60;email&#x60; or &#x60;phone number&#x60;
  # @option opts [String] :sort The attribute by which list should be sorted
  # @option opts [Integer] :page The page parameter
  # @return [ContactSearch200Response]
  describe 'contact_search test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for contact_update
  # Update Contact
  # Update a contact belonging to the account using ID
  # @param account_id The numeric ID of the account
  # @param id ID of the contact
  # @param data 
  # @param [Hash] opts the optional parameters
  # @return [ContactBase]
  describe 'contact_update test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
