variable "folders" {
  description = <<EOT
Map of folders, attributes below
Required:
    - title
Optional:
    - org_id
    - parent_folder_uid
    - prevent_destroy_if_not_empty
    - uid
EOT

  type = map(object({
    title                        = string
    org_id                       = optional(string)
    parent_folder_uid            = optional(string)
    prevent_destroy_if_not_empty = optional(bool)
    uid                          = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

