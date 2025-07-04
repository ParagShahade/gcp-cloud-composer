provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "primary_subnet" {
  name                     = var.primary_subnet_name
  region                   = var.region
  network                  = google_compute_network.vpc_network.self_link
  ip_cidr_range            = var.primary_subnet_cidr
  private_ip_google_access = true

  secondary_ip_range {
    range_name    = "gke-pods"
    ip_cidr_range = var.gke_pods_ip_range
  }

  secondary_ip_range {
    range_name    = "gke-services"
    ip_cidr_range = var.gke_services_ip_range
  }
}

resource "google_compute_subnetwork" "secondary_subnet" {
  name                     = var.secondary_subnet_name
  region                   = var.region
  network                  = google_compute_network.vpc_network.self_link
  ip_cidr_range            = var.secondary_subnet_cidr
  private_ip_google_access = true
}

resource "google_service_account" "composer_sa" {
  account_id   = var.composer_sa_name
  display_name = "Composer Service Account"
  project      = var.project_id
}

resource "google_project_iam_member" "composer_worker_role" {
  project = var.project_id
  role    = "roles/composer.worker"
  member  = "serviceAccount:${google_service_account.composer_sa.email}"
}

resource "google_project_iam_member" "composer_service_agent" {
  project = var.project_id
  role    = "roles/composer.serviceAgent"
  member  = "serviceAccount:${google_service_account.composer_sa.email}"
}

resource "google_project_iam_member" "composer_vpc_access" {
  project = var.project_id
  role    = "roles/vpcaccess.user"
  member  = "serviceAccount:${google_service_account.composer_sa.email}"
}

data "google_project" "project" {}

resource "google_project_iam_member" "composer_service_agent_v2_ext" {
  project = var.project_id
  role    = "roles/composer.ServiceAgentV2Ext"
  member  = "serviceAccount:service-${data.google_project.project.number}@cloudcomposer-accounts.iam.gserviceaccount.com"
}

resource "google_composer_environment" "composer_env" {
  name    = var.composer_name
  region  = var.region
  project = var.project_id

  config {
    environment_size = var.environment_size

    software_config {
      image_version = var.image_version
    }

    node_config {
      network              = google_compute_network.vpc_network.self_link
      subnetwork           = google_compute_subnetwork.primary_subnet.self_link
      service_account      = google_service_account.composer_sa.email
      enable_ip_masq_agent = true

      ip_allocation_policy {
        cluster_secondary_range_name  = "gke-pods"
        services_secondary_range_name = "gke-services"
      }
    }

    private_environment_config {
      cloud_composer_connection_subnetwork = google_compute_subnetwork.primary_subnet.self_link
    }
  }
}
