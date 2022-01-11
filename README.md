# Pedro Plassen Portfolio Project (PPPP)
## Setting up an Organization on Google Cloud

This repo is based on [terraform-example-foundation](https://github.com/terraform-google-modules/terraform-example-foundation/), and provides an automated solution to deploy and manage an Organization in Google Cloud, following the best practices defined on the [Google Cloud security foundations guide](https://services.google.com/fh/files/misc/google-cloud-security-foundations-guide.pdf).

Details about customizations can be found on the CHANGELOG.md file on each step.

The setup process can be found on the original [README.md](https://github.com/terraform-google-modules/terraform-example-foundation/blob/0ee39ceff2dce8c3a3b61d59bb1d45a4d0687e74/README.md) file.

### 1.Overview

The organization structure follows Google Cloud security foundations proposed model:

![Organization structure!](./docs/org_layout.png)

* **Bootstrap** - folder with projects that support the organization structure configuration process
  * **seed** 
      * bucket where the organization terraform state file is stored
      * SA used for applying all structure changes via Terraform
  * **ci/cd** 
      * Source code repositories where organization's terraform configuration files are stored 
      * Cloud build triggers for planning and applying organization's Terraform files
* **Common** - folder with projects/services shared by all environments
* **Prod/NonProd/Dev** - folders for grouping projects by environment type
  * **Base Shared VPC** - contains subnets that allow non-sensitive traffic between local environment application projects
  * **Restricted Shared VPC** - contains subnets to allow sensitive traffic between local environment application projects

### 2.Security Model

#### IAM Permissions

#### Organization Policies

#### Access control
