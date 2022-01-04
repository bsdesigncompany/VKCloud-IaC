terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
      #  version = "1.33.0"
    }
    mcs = {
      source  = "MailRuCloudSolutions/mcs"
      version = "~> 0.4.2"
    }
  }
}

provider "openstack" {}
provider "mcs" {}
