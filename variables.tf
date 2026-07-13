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
  # --- Unconfirmed validation candidates, derived from azurerm_subscription_policy_exemption's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
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
  # path: display_name
  #   condition: length(value) >= 1 && length(value) <= 128
  #   message:   must be between 1 and 128 characters
  # path: description
  #   condition: length(value) >= 1 && length(value) <= 512
  #   message:   must be between 1 and 512 characters
  # path: policy_definition_reference_ids[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: expires_on
  #   source:    [from azValidate.ISO8601DateTime] !ok
  # path: expires_on
  #   source:    [from azValidate.ISO8601DateTime] err != nil
  # path: metadata
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
}

