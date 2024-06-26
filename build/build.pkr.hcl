source digitalocean codeserver {
    api_token = var.do_token
    region    = var.do_region
    image     = var.do_image
    size      = var.do_size
    ssh_username = "root"
    snapshot_name = "codeserver"
}

build {
  sources = ["source.digitalocean.codeserver"]

  provisioner "ansible" {
    playbook_file = "playbook.yml"
    extra_arguments = ["--scp-extra-args", "'-O'"]
  }
}