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
image               = "Ubuntu-18.04-Standard"
public_key          = "./keys/terraform.pem.pub"
flavor_http         = "Basic-1-1-10"
http_instance_names = ["http-instance-1"]

#database instance
db_instance_names  = ["db-instance"]
db-instance-flavor = "Basic-1-2-20"
db-type            = "mysql"
db-type-version    = "5.7"
