resource "google_project_service" "all_services" {
  for_each = toset(local.base_services)

  project            = var.project_id
  service            = each.value
  disable_on_destroy = false
}