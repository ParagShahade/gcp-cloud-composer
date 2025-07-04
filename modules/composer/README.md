<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_composer_environment.composer_env](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/composer_environment) | resource |
| [google_compute_network.vpc_network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.primary_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.secondary_subnet](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_project_iam_member.composer_service_agent](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_iam_member.composer_service_agent_v2_ext](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_iam_member.composer_vpc_access](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_project_iam_member.composer_worker_role](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |
| [google_service_account.composer_sa](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_composer_name"></a> [composer\_name](#input\_composer\_name) | n/a | `any` | n/a | yes |
| <a name="input_composer_sa_name"></a> [composer\_sa\_name](#input\_composer\_sa\_name) | n/a | `any` | n/a | yes |
| <a name="input_environment_size"></a> [environment\_size](#input\_environment\_size) | n/a | `any` | n/a | yes |
| <a name="input_gke_pods_ip_range"></a> [gke\_pods\_ip\_range](#input\_gke\_pods\_ip\_range) | n/a | `any` | n/a | yes |
| <a name="input_gke_services_ip_range"></a> [gke\_services\_ip\_range](#input\_gke\_services\_ip\_range) | n/a | `any` | n/a | yes |
| <a name="input_image_version"></a> [image\_version](#input\_image\_version) | n/a | `any` | n/a | yes |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | n/a | `any` | n/a | yes |
| <a name="input_primary_subnet_cidr"></a> [primary\_subnet\_cidr](#input\_primary\_subnet\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_primary_subnet_name"></a> [primary\_subnet\_name](#input\_primary\_subnet\_name) | n/a | `any` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_secondary_subnet_cidr"></a> [secondary\_subnet\_cidr](#input\_secondary\_subnet\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_secondary_subnet_name"></a> [secondary\_subnet\_name](#input\_secondary\_subnet\_name) | n/a | `any` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->