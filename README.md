# gcp-cloud-composer
# GCP Cloud Composer with Terraform

This project provides Terraform configurations for provisioning and managing **Google Cloud Composer** environments (Airflow 2.x), following infrastructure-as-code best practices.

---

## 🚀 Features

- Create Cloud Composer 2/3 environments using Terraform
- Modular setup for DAGs, dependencies, variables, and secrets
- Supports CI/CD integration via Cloud Build
- Follows GCP Composer security guidelines

---

## 📦 Requirements

- [Terraform](https://developer.hashicorp.com/terraform/install) ≥ 1.3
- Google Cloud SDK (`gcloud`)
- A GCP project with the following enabled:
  - Composer API
  - IAM, Storage, Compute, Cloud Build
- Service account with roles:
  - `roles/composer.admin`
  - `roles/storage.admin`
  - `roles/iam.serviceAccountUser`

---

## 🌱 Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/ParagShahade/gcp-cloud-composer.git
cd gcp-cloud-composer

<!-- BEGIN_TF_DOCS -->

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_gcp_composer"></a> [gcp\_composer](#module\_gcp\_composer) | ./modules/composer | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_composer_name"></a> [composer\_name](#input\_composer\_name) | n/a | `string` | `"my-composer-env-test-module"` | no |
| <a name="input_composer_sa_name"></a> [composer\_sa\_name](#input\_composer\_sa\_name) | n/a | `string` | `"composer-service-account"` | no |
| <a name="input_environment_size"></a> [environment\_size](#input\_environment\_size) | n/a | `string` | `"ENVIRONMENT_SIZE_SMALL"` | no |
| <a name="input_gke_pods_ip_range"></a> [gke\_pods\_ip\_range](#input\_gke\_pods\_ip\_range) | Secondary IP Ranges for GKE Pods and Services | `string` | `"10.1.0.0/20"` | no |
| <a name="input_gke_services_ip_range"></a> [gke\_services\_ip\_range](#input\_gke\_services\_ip\_range) | n/a | `string` | `"10.2.0.0/20"` | no |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | n/a | `string` | `"composer-2.11.1-airflow-2.10.2"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | n/a | `string` | `"composer-vpc"` | no |
| <a name="input_primary_subnet_cidr"></a> [primary\_subnet\_cidr](#input\_primary\_subnet\_cidr) | n/a | `string` | `"10.0.0.0/24"` | no |
| <a name="input_primary_subnet_name"></a> [primary\_subnet\_name](#input\_primary\_subnet\_name) | n/a | `string` | `"primary-subnet"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | GCP Project ID | `string` | `"your-project-id"` | no |
| <a name="input_region"></a> [region](#input\_region) | GCP Region | `string` | `"europe-west1"` | no |
| <a name="input_secondary_subnet_cidr"></a> [secondary\_subnet\_cidr](#input\_secondary\_subnet\_cidr) | n/a | `string` | `"10.0.1.0/24"` | no |
| <a name="input_secondary_subnet_name"></a> [secondary\_subnet\_name](#input\_secondary\_subnet\_name) | n/a | `string` | `"secondary-subnet"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->