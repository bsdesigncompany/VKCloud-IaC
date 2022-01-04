image            = "Ubuntu-18.04-Standard"
external_network = "ext-net"
public_key       = "./keys/terraform.pem.pub"
dns_ip           = ["8.8.8.8", "8.8.8.4"]
flavor_http      = "Basic-1-1-10"
network_http = {
  subnet_name = "subnet-http"
  cidr        = "192.168.1.0/24"
}

http_instance_names = ["http-instance-1", "http-instance-1"]

flavor_db = "Basic-1-1-10"
network_db = {
  subnet_name = "subnet-db"
  cidr        = "192.168.2.0/24"
}

db_instance_names = ["db-instance-1"]
