output "subscription_policy_exemptions_description" {
  description = "Map of description values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.description }
}
output "subscription_policy_exemptions_display_name" {
  description = "Map of display_name values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.display_name }
}
output "subscription_policy_exemptions_exemption_category" {
  description = "Map of exemption_category values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.exemption_category }
}
output "subscription_policy_exemptions_expires_on" {
  description = "Map of expires_on values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.expires_on }
}
output "subscription_policy_exemptions_metadata" {
  description = "Map of metadata values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.metadata }
}
output "subscription_policy_exemptions_name" {
  description = "Map of name values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.name }
}
output "subscription_policy_exemptions_policy_assignment_id" {
  description = "Map of policy_assignment_id values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.policy_assignment_id }
}
output "subscription_policy_exemptions_policy_definition_reference_ids" {
  description = "Map of policy_definition_reference_ids values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.policy_definition_reference_ids }
}
output "subscription_policy_exemptions_subscription_id" {
  description = "Map of subscription_id values across all subscription_policy_exemptions, keyed the same as var.subscription_policy_exemptions"
  value       = { for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : k => v.subscription_id }
}

