# https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_zones
# Datasource: Get a list of Google Compute zones that are UP in a region
data "google_compute_zones" "task3zone" {
  status = "UP"
  # region = "" (optional if provider default is set)
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_region_instance_group_manager
# Resource: Managed Instance Group
resource "google_compute_region_instance_group_manager" "task3mig" {
  depends_on         = [google_compute_router_nat.task3nat]
  name               = "app"
  base_instance_name = "linux"
  #region = "" (optional if provider default is set)

   # Compute zones to be used for VM creation
  distribution_policy_zones = data.google_compute_zones.task3zone.names


  # Instance Template
  version {
    instance_template = google_compute_region_instance_template.task3temp.id
  }
  
  target_size = 3

  # Named Port
  named_port {
    name = "webserver"
    port = 80
  }

  # Autohealing Config
  auto_healing_policies {
    health_check      = google_compute_region_health_check.task3hc.id
    initial_delay_sec = 300
  }
}