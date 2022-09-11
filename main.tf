module "instance-module" {
    source          = "./instance-module"
    instance_ami    = var.instance_ami
    instance_type   = var.instance_type
    instance_count  = var.instance_count
    key_name        = var.key_name
    region          = var.region
    profile         = var.profile
    environment     = var.environment
}