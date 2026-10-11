resource "grafana_folder" "folders" {
  for_each = var.folders

  title                        = each.value.title
  org_id                       = each.value.org_id
  parent_folder_uid            = each.value.parent_folder_uid
  prevent_destroy_if_not_empty = each.value.prevent_destroy_if_not_empty
  uid                          = each.value.uid
}

