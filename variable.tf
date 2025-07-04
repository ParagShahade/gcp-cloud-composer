variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "your-project-id"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "europe-west1"
}
variable "network_name" {
  default = "composer-vpc"
}
variable "primary_subnet_name" {
  default = "primary-subnet"
}
variable "primary_subnet_cidr" {
  default = "10.0.0.0/24"
}
variable "secondary_subnet_name" {
  default = "secondary-subnet"
}
variable "secondary_subnet_cidr" {
  default = "10.0.1.0/24"
}
variable "composer_name" {
  default = "my-composer-env-test-module"
}
variable "environment_size" {
  default = "ENVIRONMENT_SIZE_SMALL"
}
variable "image_version" {
  default = "composer-2.11.1-airflow-2.10.2"
}
variable "composer_sa_name" {
  default = "composer-service-account"
}

# Secondary IP Ranges for GKE Pods and Services
variable "gke_pods_ip_range" {
  default = "10.1.0.0/20"
}
variable "gke_services_ip_range" {
  default = "10.2.0.0/20"
}
