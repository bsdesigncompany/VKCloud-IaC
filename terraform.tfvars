#Networks
external_network = "ext-net"
dns_ip           = ["8.8.8.8", "8.8.8.4"]
network_http = {
  subnet_name = "subnet-http"
  cidr        = "192.168.1.0/24"
}
network_db = {
  subnet_name = "subnet-db"
  cidr        = "192.168.2.0/24"
}

#instances configuration
image       = "Ubuntu-18.04-Standard"
public_key  = "./keys/terraform.pem.pub"
flavor_http = "Basic-1-1-10"
flavor_db   = "Basic-1-1-10"

http_instance_names = ["http-instance-1", "http-instance-2"]
db_instance_names   = ["db-instance-1"]
