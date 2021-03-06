provider "google" {
    project = "applied-card-331603"
    region = "us-central1"
}  

variable "mt" {

    type =string
    default= "f1-micro"
}

resource "google_compute_instance" "myvm" {
    name = "myfirstvm"
    zone = "us-central1-a"
    machine_type = var.mt
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

resource "google_compute_instance" "myvm1" {
    name = "mysecondvm"
    zone = "us-central1-a"
    machine_type = var.mt
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

resource "google_compute_instance" "myvm3" {
    name = "mythirdvm"
    zone = "us-central1-a"
    machine_type = var.mt
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