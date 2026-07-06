output "subscription_policy_exemptions" {
  description = "All subscription_policy_exemption resources"
  value       = azurerm_subscription_policy_exemption.subscription_policy_exemptions
}
output "subscription_policy_exemptions_description" {
  description = "List of description values across all subscription_policy_exemptions"
  value       = [for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : v.description]
}
output "subscription_policy_exemptions_display_name" {
  description = "List of display_name values across all subscription_policy_exemptions"
  value       = [for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : v.display_name]
}
output "subscription_policy_exemptions_exemption_category" {
  description = "List of exemption_category values across all subscription_policy_exemptions"
  value       = [for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : v.exemption_category]
}
output "subscription_policy_exemptions_expires_on" {
  description = "List of expires_on values across all subscription_policy_exemptions"
  value       = [for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : v.expires_on]
}
output "subscription_policy_exemptions_metadata" {
  description = "List of metadata values across all subscription_policy_exemptions"
  value       = [for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : v.metadata]
}
output "subscription_policy_exemptions_name" {
  description = "List of name values across all subscription_policy_exemptions"
  value       = [for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : v.name]
}
output "subscription_policy_exemptions_policy_assignment_id" {
  description = "List of policy_assignment_id values across all subscription_policy_exemptions"
  value       = [for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : v.policy_assignment_id]
}
output "subscription_policy_exemptions_policy_definition_reference_ids" {
  description = "List of policy_definition_reference_ids values across all subscription_policy_exemptions"
  value       = [for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : v.policy_definition_reference_ids]
}
output "subscription_policy_exemptions_subscription_id" {
  description = "List of subscription_id values across all subscription_policy_exemptions"
  value       = [for k, v in azurerm_subscription_policy_exemption.subscription_policy_exemptions : v.subscription_id]
}

