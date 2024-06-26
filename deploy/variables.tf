variable do_token {
  type = string
  description = "DigitalOcean API token"
  sensitive = true
}

variable ssh_private_key {
  type = string
  description = "SSH private key"
  sensitive = true
}

variable do_region {
    type = string
    default = "sgp1"
}

variable do_image {
    type = string
    default = "ubuntu-24-04-x64"
}

variable do_size {
    type = string
    default = "s-1vcpu-1gb"
}

variable do_ssh_key {
    type = string
    default = "aipc"
}

variable cs_domain {
    type = string
}

variable cs_password {
  type = string
  sensitive = true
}