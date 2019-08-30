resource "google_compute_subnetwork" "subnet" {
  name          = "${var.subnet_name}"
  ip_cidr_range = "${var.subnet_cidr_range}"
  network       = "${var.network_name}"
  region        = "${var.region}"
}