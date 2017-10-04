provider "ibm" {
  bluemix_api_key = "${var.bluemix_api_key}"
}

data "ibm_org" "orgData" {
  org = "${var.org}"
}

data "ibm_space" "spaceData" {
  org   = "${var.org}"
  space = "${var.space}"
}

data "ibm_account" "accountData" {
  org_guid = "${data.ibm_org.orgData.id}"
}

resource "random_id" "name" {
  byte_length = 4
}

variable "bluemix_api_key" {}
variable "org" {}
variable "space" {
  default = "dev"
}

