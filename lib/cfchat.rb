=begin
#CF Chat

#This is the API documentation for CF Chat server.

The version of the OpenAPI document: 1.0.0
Contact: support@clickfunnels.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'cfchat/api_client'
require 'cfchat/api_error'
require 'cfchat/version'
require 'cfchat/configuration'

# Models
require 'cfchat/models/account'
require 'cfchat/models/account_create_update_payload'
require 'cfchat/models/account_summary'
require 'cfchat/models/account_summary_previous'
require 'cfchat/models/add_new_agent_to_account_request'
require 'cfchat/models/add_new_agent_to_inbox_request'
require 'cfchat/models/add_new_agent_to_team_request'
require 'cfchat/models/agent'
require 'cfchat/models/agent_bot'
require 'cfchat/models/agent_bot_create_update_payload'
require 'cfchat/models/agent_conversation_metrics'
require 'cfchat/models/agent_conversation_metrics_metric'
require 'cfchat/models/assign_a_conversation_request'
require 'cfchat/models/automation_rule'
require 'cfchat/models/automation_rule_create_update_payload'
require 'cfchat/models/bad_request_error'
require 'cfchat/models/canned_response'
require 'cfchat/models/canned_response_create_update_payload'
require 'cfchat/models/contact'
require 'cfchat/models/contact_base'
require 'cfchat/models/contact_conversations_inner'
require 'cfchat/models/contact_conversations_inner_all_of'
require 'cfchat/models/contact_conversations_inner_all_of1'
require 'cfchat/models/contact_conversations_inner_all_of_meta'
require 'cfchat/models/contact_conversations_inner_all_of_meta_sender'
require 'cfchat/models/contact_create'
require 'cfchat/models/contact_filter_request_inner'
require 'cfchat/models/contact_inbox_creation_request'
require 'cfchat/models/contact_inboxes'
require 'cfchat/models/contact_list_inner'
require 'cfchat/models/contact_payload'
require 'cfchat/models/contact_payload_contact'
require 'cfchat/models/contact_search200_response'
require 'cfchat/models/contact_update'
require 'cfchat/models/contactable_inboxes'
require 'cfchat/models/conversation'
require 'cfchat/models/conversation_add_labels_request'
require 'cfchat/models/conversation_labels'
require 'cfchat/models/conversation_list'
require 'cfchat/models/conversation_list_data'
require 'cfchat/models/conversation_list_data_payload_inner'
require 'cfchat/models/conversation_list_meta200_response'
require 'cfchat/models/conversation_list_meta200_response_meta'
require 'cfchat/models/conversation_message_create'
require 'cfchat/models/conversation_show'
require 'cfchat/models/conversation_show_all_of'
require 'cfchat/models/conversation_show_all_of_meta'
require 'cfchat/models/conversation_show_all_of_meta_sender'
require 'cfchat/models/conversation_status_toggle'
require 'cfchat/models/conversation_status_toggle_payload'
require 'cfchat/models/create_a_new_message_in_a_conversation200_response'
require 'cfchat/models/create_an_account_user_request'
require 'cfchat/models/custom_attribute'
require 'cfchat/models/custom_attribute_create_update_payload'
require 'cfchat/models/custom_filter'
require 'cfchat/models/custom_filter_create_update_payload'
require 'cfchat/models/delete_agent_in_inbox_request'
require 'cfchat/models/delete_agent_in_team_request'
require 'cfchat/models/delete_an_account_user_request'
require 'cfchat/models/extended_contact'
require 'cfchat/models/extended_contact_all_of'
require 'cfchat/models/generic_id'
require 'cfchat/models/get_account_conversation_metrics200_response'
require 'cfchat/models/get_sso_url_of_a_user200_response'
require 'cfchat/models/inbox'
require 'cfchat/models/inbox_creation_request'
require 'cfchat/models/inbox_creation_request_channel'
require 'cfchat/models/integrations_app'
require 'cfchat/models/integrations_hook'
require 'cfchat/models/integrations_hook_create_payload'
require 'cfchat/models/integrations_hook_update_payload'
require 'cfchat/models/list_all_account_users200_response_inner'
require 'cfchat/models/list_all_conversation_statistics200_response_inner'
require 'cfchat/models/list_all_messages200_response_inner'
require 'cfchat/models/message'
require 'cfchat/models/new_conversation200_response'
require 'cfchat/models/new_conversation_request'
require 'cfchat/models/platform_account'
require 'cfchat/models/public_contact'
require 'cfchat/models/public_contact_create_update_payload'
require 'cfchat/models/public_conversation'
require 'cfchat/models/public_inbox'
require 'cfchat/models/public_inbox_working_hours_inner'
require 'cfchat/models/public_message'
require 'cfchat/models/public_message_create_payload'
require 'cfchat/models/public_message_update_payload'
require 'cfchat/models/request_error'
require 'cfchat/models/team'
require 'cfchat/models/team_create_update_payload'
require 'cfchat/models/toggle_status_of_a_conversation_request'
require 'cfchat/models/update_agent_bot_request'
require 'cfchat/models/update_agent_in_account_request'
require 'cfchat/models/update_inbox_request'
require 'cfchat/models/update_inbox_request_channel'
require 'cfchat/models/user'
require 'cfchat/models/user_create_update_payload'
require 'cfchat/models/webhook'
require 'cfchat/models/webhook_create_update_payload'

# APIs
require 'cfchat/api/account_agent_bots_api'
require 'cfchat/api/account_users_api'
require 'cfchat/api/accounts_api'
require 'cfchat/api/agent_bots_api'
require 'cfchat/api/agents_api'
require 'cfchat/api/automation_rule_api'
require 'cfchat/api/canned_response_api'
require 'cfchat/api/canned_responses_api'
require 'cfchat/api/contact_api'
require 'cfchat/api/contacts_api'
require 'cfchat/api/contacts_api_api'
require 'cfchat/api/conversation_assignment_api'
require 'cfchat/api/conversation_labels_api'
require 'cfchat/api/conversations_api'
require 'cfchat/api/conversations_api_api'
require 'cfchat/api/custom_attributes_api'
require 'cfchat/api/custom_filters_api'
require 'cfchat/api/inbox_api_api'
require 'cfchat/api/inboxes_api'
require 'cfchat/api/integrations_api'
require 'cfchat/api/messages_api'
require 'cfchat/api/messages_api_api'
require 'cfchat/api/profile_api'
require 'cfchat/api/reports_api'
require 'cfchat/api/teams_api'
require 'cfchat/api/users_api'
require 'cfchat/api/webhooks_api'

module Cfchat
  class << self
    # Customize default settings for the SDK using block.
    #   Cfchat.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
