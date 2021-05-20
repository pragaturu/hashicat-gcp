module "network" {
  source  = "app.terraform.io/Prasada-training/network/google"
  version = "2.5.0"
  # insert the 3 required variables here
  network_name = "prasada-network"
  project_id = var.project
    subnets = [
    {
        subnet_name   = "prasada-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
    }
    ]  
}
