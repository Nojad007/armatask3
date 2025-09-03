resource "google_compute_firewall" "allow-web-traffic" {
  name    = "allow-web-traffic"
  network = google_compute_network.task3vpc.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}



resource "google_compute_firewall" "rdp" {
  name    = "rdp"
  network = google_compute_network.task3vpc.name

  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
}



resource "google_compute_firewall" "allow-ping" {
  name    = "allow-ping"
  network = google_compute_network.task3vpc.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
  
}