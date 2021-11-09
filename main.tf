provider "google" {
    project = "applied-card-331603"
    region = "us-central1"
}  

resource "google_compute_instance" "myvm" {
    name = "myfirstvm"
    zone = "us-central1-a"
    machine_type = "f1-micro"
    network_interface {
network = "default"
access_config{}
}
boot_disk {
initialize_params {
image = "debian-cloud/debian-10"
}
}
}