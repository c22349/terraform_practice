resource "local_file" "helloworld" {
    content  = "hello world!"
    filename = "hello.txt"
}

variable "oci_config_file_profile" {
  type    = string
  default = "DEFAULT"
}

variable "tenancy_ocid" {
  description = "tenancy OCID"
  type        = string
  nullable    = false
}

variable "compartment_id" {
  description = "compartment OCID"
  type        = string
  nullable    = false
}

variable "vcn_name" {
  description = "VCN name"
  nullable    = false
}

variable "kube_client_cidr" {
  description = "CIDR of Kubernetes API clients"
  type        = string
  nullable    = false
}

variable "kubernetes_api_port" {
  description = "port used for kubernetes API"
  type        = string
  default     = "6443"
}

variable "worker_lb_ingress_rules" {
  description = "traffic allowed to worker load balancer"
  type = list(object({
    source   = string
    port_min = string
    port_max = string
  }))
  nullable = false
}

variable "worker_ingress_rules" {
  description = "traffic allowed directly to workers"
  type = list(object({
    source   = string
    port_min = string
    port_max = string
  }))
  nullable = true
}
