    resource "google_compute_instance" "myvm" {
      name         = "myvm"
      machine_type = "e2-medium" # Or your preferred machine type
      zone         = "southamerica-east1-a" # Or your preferred zone
      

      boot_disk {
        initialize_params {
          image = "windows-server-2022-dc-v20250710" # Or your preferred Windows Server image
          size  = 50
        }
      }

      network_interface {
        subnetwork = google_compute_subnetwork.task3net.name
        access_config { # To assign a public IP address
        }
      }
      metadata = {
        windows-startup-script-ps1 = <<-EOT
          # Optional: PowerShell script to run on startup
          # Example: Install features, configure settings, etc.
        EOT
      }
 # Use file() to get shell script for startup script argument
   metadata_startup_script = file("./startup.sh")
   }

