########## Provider 
provider "aviatrix" {
  username     = "admin"
  password      = var.ctrl_password
  controller_ip = "18.157.190.93"
  version       = "2.17.0"
}


##### Aviatrix Security Domain Connection Policy

resource "aviatrix_segmentation_security_domain_connection_policy" "security_domain_connection_policy" {
  domain_name_1 = var.domain_name_2
  domain_name_2 = var.domain_name_1
}
