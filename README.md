## AIPC Workshop Day03 

### Creation of the golden image

```
packer init <config hcl>
```

```
packer build --var do_token=${DO_PAT} .
```

### Deploy the golden image as a droplet on DO

Nagivate to the deploy directory

```
terraform init
```

```
terraform plan -var "do_token=${DO_PAT}" -var "ssh_private_key=/root/.ssh/id_ed25519" -var "cs_password=password123456" -var "cs_domain=test"
```

```
terraform apply --auto-approve -var "do_token=${DO_PAT}" -var "ssh_private_key=/root/.ssh/id_ed25519" -var "cs_password=password123456" -var "cs_domain=test"
```