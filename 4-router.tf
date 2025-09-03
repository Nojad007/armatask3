resource "google_compute_router" "task3router" {
  name    = "task3router"
  region  = "southamerica-east1"
  network = google_compute_network.task3vpc.id
}


