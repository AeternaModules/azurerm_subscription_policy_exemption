output "subscription_policy_exemptions_id" {
  description = "Map of id values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "subscription_policy_exemptions_description" {
  description = "Map of description values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "subscription_policy_exemptions_display_name" {
  description = "Map of display_name values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "subscription_policy_exemptions_exemption_category" {
  description = "Map of exemption_category values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.exemption_category if v.exemption_category != null && length(v.exemption_category) > 0 }
}
output "subscription_policy_exemptions_expires_on" {
  description = "Map of expires_on values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.expires_on if v.expires_on != null && length(v.expires_on) > 0 }
}
output "subscription_policy_exemptions_metadata" {
  description = "Map of metadata values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "subscription_policy_exemptions_name" {
  description = "Map of name values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "subscription_policy_exemptions_policy_assignment_id" {
  description = "Map of policy_assignment_id values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.policy_assignment_id if v.policy_assignment_id != null && length(v.policy_assignment_id) > 0 }
}
output "subscription_policy_exemptions_policy_definition_reference_ids" {
  description = "Map of policy_definition_reference_ids values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.policy_definition_reference_ids if v.policy_definition_reference_ids != null && length(v.policy_definition_reference_ids) > 0 }
}
output "subscription_policy_exemptions_subscription_id" {
  description = "Map of subscription_id values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}

