resource "google_compute_subnetwork" "task3net" {
  name                     = "task3netnet"
  ip_cidr_range            = "10.100.0.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.task3vpc.id
  private_ip_google_access = true
}

# Regional Proxy-Only Subnet 
# Required for Regional Application Load Balancer for traffic offloading
resource "google_compute_subnetwork" "regional-proxy-subnet-task3net" {
  name          = "regional-proxy-subnet-task3net"
  region        = "southamerica-east1"
  ip_cidr_range = "10.100.1.0/24"
  purpose       = "REGIONAL_MANAGED_PROXY"
  network       = google_compute_network.task3vpc.id
  role          = "ACTIVE"
}















#resource "google_compute_subnetwork" "mynet" {
#  name                     = "mynet"
#  ip_cidr_range            = "10.99.10.0/24"
#  region                   = "us-east1"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}





#resource "google_compute_subnetwork" "loganet" {
#  name                     = "loganet"
#  ip_cidr_range            = "10.100.9.0/24"
#  region                   = "europe-west9"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}




#resource "google_compute_subnetwork" "adnet" {
#  name                     = "adnet"
#  ip_cidr_range            = "10.101.8.0/24"
#  region                   = "australia-southeast1"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}






#resource "google_compute_subnetwork" "coopernet" {
#  name                     = "coopernet"
#  ip_cidr_range            = "10.102.7.0/24"
#  region                   = "africa-south1"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}




#resource "google_compute_subnetwork" "chucknet" {
#  name                     = "chucknet"
#  ip_cidr_range            = "10.103.6.0/24"
#  region                   = "asia-northeast1"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}




#resource "google_compute_subnetwork" "sekunet" {
#  name                     = "sekunet"
#  ip_cidr_range            = "10.104.5.0/24"
#  region                   = "asia-southeast1"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}







#resource "google_compute_subnetwork" "andrenet" {
#  name                     = "andrenet"
#  ip_cidr_range            = "10.105.6.0/24"
#  region                   = "asia-south2"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}




#resource "google_compute_subnetwork" "carltonet" {
#  name                     = "carltonet"
#  ip_cidr_range            = "10.106.5.0/24"
#  region                   = "me-west1"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}




#resource "google_compute_subnetwork" "williamnet" {
#  name                     = "williamnet"
#  ip_cidr_range            = "10.107.4.0/24"
#  region                   = "asia-northeast3"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}





#resource "google_compute_subnetwork" "alexnet" {
#  name                     = "alexnet"
#  ip_cidr_range            = "10.108.3.0/24"
#  region                   = "southamerica-east1"
#  network                  = google_compute_network.vmgo.id
#  private_ip_google_access = true
#}











#me - us-east1
#logan - europe-west9
#adnet - austrailia-southeast1
#coopernet - africa-south1
#chucknet - asia-northeast1
#seku - us-west1
#andre - asia-south2
#carlton - me-west1
#william - asia-northeast3
#alex - southamerica-east1