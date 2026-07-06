variable "subscription_policy_exemptions" {
  description = <<EOT
Map of subscription_policy_exemptions, attributes below
Required:
    - exemption_category
    - name
    - policy_assignment_id
    - subscription_id
Optional:
    - description
    - display_name
    - expires_on
    - metadata
    - policy_definition_reference_ids
EOT

  type = map(object({
    exemption_category              = string
    name                            = string
    policy_assignment_id            = string
    subscription_id                 = string
    description                     = optional(string)
    display_name                    = optional(string)
    expires_on                      = optional(string)
    metadata                        = optional(string)
    policy_definition_reference_ids = optional(list(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.subscription_policy_exemptions : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.subscription_policy_exemptions : (
        v.display_name == null || (length(v.display_name) >= 1 && length(v.display_name) <= 128)
      )
    ])
    error_message = "must be between 1 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.subscription_policy_exemptions : (
        v.description == null || (length(v.description) >= 1 && length(v.description) <= 512)
      )
    ])
    error_message = "must be between 1 and 512 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.subscription_policy_exemptions : (
        v.policy_definition_reference_ids == null || (length(v.policy_definition_reference_ids) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_subscription_policy_exemption's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: subscription_id
  #   source:    [from commonids.ValidateSubscriptionID] !ok
  # path: subscription_id
  #   source:    [from commonids.ValidateSubscriptionID] err != nil
  # path: exemption_category
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: policy_assignment_id
  #   source:    [from validate.PolicyAssignmentID] !ok
  # path: policy_assignment_id
  #   source:    [from validate.PolicyAssignmentID] err != nil
  # path: expires_on
  #   source:    [from azValidate.ISO8601DateTime] !ok
  # path: expires_on
  #   source:    [from azValidate.ISO8601DateTime] err != nil
}

