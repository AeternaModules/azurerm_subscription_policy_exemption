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
        v.policy_definition_reference_ids == null || (alltrue([for x in v.policy_definition_reference_ids : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.subscription_policy_exemptions : (
        v.metadata == null || (can(jsondecode(v.metadata)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

