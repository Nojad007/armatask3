resource "google_compute_region_instance_template" "task3temp" {
  name         = "task3temp"
  description  = "This template is used to clone lizzo"
  region       = google_compute_subnetwork.task3net.region
  # or write region argument statically as
  # region = "" (optional if provider default is set)
  machine_type = "e2-medium"


  # Create a new disk from an image and set as boot disk
  disk {
    source_image = "debian-cloud/debian-12"
    auto_delete = true
    disk_size_gb = 100
    boot         = true
  }

  # Network Configurations 
  network_interface {
    subnetwork = google_compute_subnetwork.task3net.id
    /*access_config {
      # Include this section to give the VM an external IP address
    } */
  }

  # Install Webserver using file() function
  metadata_startup_script = file("./startup.sh")
}
