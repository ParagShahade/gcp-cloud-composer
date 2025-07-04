module "gcp_composer" {
  source                = "./modules/composer"
  project_id            = var.project_id
  region                = var.region
  network_name          = var.network_name
  primary_subnet_name   = var.primary_subnet_name
  primary_subnet_cidr   = var.primary_subnet_cidr
  gke_pods_ip_range     = var.gke_pods_ip_range
  gke_services_ip_range = var.gke_services_ip_range
  secondary_subnet_name = var.secondary_subnet_name
  secondary_subnet_cidr = var.secondary_subnet_cidr
  composer_sa_name      = var.composer_sa_name
  composer_name         = var.composer_name
  environment_size      = var.environment_size
  image_version         = var.image_version
}
