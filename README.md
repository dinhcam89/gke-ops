# GCP GKE Terraform Project

This repository contains a Terraform project structure for deploying and managing Google Kubernetes Engine (GKE) clusters in Google Cloud Platform (GCP). The project supports deploying infrastructure for multiple environments (`dev` and `prod`) using reusable and modular Terraform configurations.

## Project Structure

The repository is organized as follows:

```
.
├── modules/
│   ├── gke/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── nat/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
└── environments/
    ├── dev/
    │   ├── main.tf
    │   ├── variables.tf
    │   ├── terraform.tfvars
    │   └── providers.tf
    └── prod/
        ├── main.tf
        ├── variables.tf
        ├── terraform.tfvars
        └── providers.tf
```

### Modules

- **`gke/`**: Contains the configuration for creating a GKE cluster.
- **`vpc/`**: Contains the configuration for setting up a Virtual Private Cloud (VPC) network and subnets.
- **`nat/`**: Contains the configuration for setting up a Cloud NAT and Cloud Router for internet access.

### Environments

- **`dev/`**: Configurations specific to the development environment, including variable values and provider details.
- **`prod/`**: Configurations specific to the production environment, including variable values and provider details.

## Prerequisites

1. Install [Terraform](https://www.terraform.io/downloads.html).
2. Set up a Google Cloud Platform (GCP) project.
3. Configure the `gcloud` CLI and authenticate:
   ```bash
   gcloud auth application-default login
   ```
4. Ensure that the necessary APIs are enabled:
   - Kubernetes Engine API
   - Compute Engine API
   - Cloud Resource Manager API

## Usage

### Step 1: Initialize Terraform

Navigate to the desired environment folder (`environments/dev` or `environments/prod`) and initialize Terraform:

```bash
cd environments/dev
terraform init
```

### Step 2: Plan the Infrastructure

Run the following command to see a preview of the changes that Terraform will apply:

```bash
terraform plan
```

### Step 3: Apply the Configuration

Apply the Terraform configuration to create resources in GCP:

```bash
terraform apply
```

### Step 4: Destroy the Infrastructure (If Needed)

To tear down the infrastructure, run:

```bash
terraform destroy
```

## Configuration Details

### Variables

Each module and environment defines its own set of variables. Common variables include:

- **Cluster Settings**:
  - `cluster_name`: Name of the GKE cluster.
  - `region`: Region for the cluster.
  - `initial_node_count`: Number of nodes in the cluster.
  - `machine_type`: Machine type for the cluster nodes.

- **VPC Settings**:
  - `network_name`: Name of the VPC network.
  - `subnet_name`: Name of the subnet.
  - `subnet_cidr`: CIDR range for the subnet.

- **NAT Settings**:
  - `router_name`: Name of the Cloud Router.
  - `nat_name`: Name of the Cloud NAT.

### Outputs

The project outputs key details, such as:

- GKE cluster endpoint and name.
- VPC network and subnet names.
- Cloud Router and NAT names.

## Customization

You can customize the configurations for each environment by modifying the `terraform.tfvars` and `variables.tf` files in the respective environment folders.

For example, to use a different machine type for the `prod` environment, update the `terraform.tfvars` file in `environments/prod`.

## Best Practices

- Use [Terraform Workspaces](https://www.terraform.io/language/state/workspaces) for managing multiple environments if your project grows.
- Store sensitive variables (like credentials) securely using tools like [Terraform Cloud](https://www.terraform.io/cloud) or environment variable-based secrets management.

## Author

Created by **@dinhcam89**.

---
Happy Terraforming! 🚀
