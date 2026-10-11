output "folders_id" {
  description = "Map of id values across all folders, keyed the same as var.folders except keys with no id are omitted"
  value       = { for k, v in grafana_folder.folders : k => v.id if v.id != null && length(v.id) > 0 }
}
output "folders_org_id" {
  description = "Map of org_id values across all folders, keyed the same as var.folders except keys with no org_id are omitted"
  value       = { for k, v in grafana_folder.folders : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "folders_parent_folder_uid" {
  description = "Map of parent_folder_uid values across all folders, keyed the same as var.folders except keys with no parent_folder_uid are omitted"
  value       = { for k, v in grafana_folder.folders : k => v.parent_folder_uid if v.parent_folder_uid != null && length(v.parent_folder_uid) > 0 }
}
output "folders_prevent_destroy_if_not_empty" {
  description = "Map of prevent_destroy_if_not_empty values across all folders, keyed the same as var.folders except keys with no prevent_destroy_if_not_empty are omitted"
  value       = { for k, v in grafana_folder.folders : k => v.prevent_destroy_if_not_empty if v.prevent_destroy_if_not_empty != null }
}
output "folders_title" {
  description = "Map of title values across all folders, keyed the same as var.folders except keys with no title are omitted"
  value       = { for k, v in grafana_folder.folders : k => v.title if v.title != null && length(v.title) > 0 }
}
output "folders_uid" {
  description = "Map of uid values across all folders, keyed the same as var.folders except keys with no uid are omitted"
  value       = { for k, v in grafana_folder.folders : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "folders_url" {
  description = "Map of url values across all folders, keyed the same as var.folders except keys with no url are omitted"
  value       = { for k, v in grafana_folder.folders : k => v.url if v.url != null && length(v.url) > 0 }
}

