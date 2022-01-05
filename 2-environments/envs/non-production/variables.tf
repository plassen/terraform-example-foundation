/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "org_id" {
  description = "The organization id for the associated services"
  type        = string
}

variable "dev_monitoring_billing_account" {
  description = "The ID of the billing account to associate this project with"
  type        = string
}

variable "dev_secrets_billing_account" {
  description = "The ID of the billing account to associate with base shared voc project"
  type        = string
}

variable "dev_shared_base_billing_account" {
  description = "The ID of the billing account to associate with base shared voc project"
  type        = string
}

variable "dev_shared_restricted_billing_account" {
  description = "The ID of the billing account to associate with base shared voc project"
  type        = string
}

variable "nonprod_monitoring_billing_account" {
  description = "The ID of the billing account to associate this project with"
  type        = string
}

variable "nonprod_secrets_billing_account" {
  description = "The ID of the billing account to associate with base shared voc project"
  type        = string
}

variable "nonprod_shared_base_billing_account" {
  description = "The ID of the billing account to associate with base shared voc project"
  type        = string
}

variable "nonprod_shared_restricted_billing_account" {
  description = "The ID of the billing account to associate with base shared voc project"
  type        = string
}

variable "prod_monitoring_billing_account" {
  description = "The ID of the billing account to associate this project with"
  type        = string
}

variable "prod_secrets_billing_account" {
  description = "The ID of the billing account to associate with base shared voc project"
  type        = string
}

variable "prod_shared_base_billing_account" {
  description = "The ID of the billing account to associate with base shared voc project"
  type        = string
}

variable "prod_shared_restricted_billing_account" {
  description = "The ID of the billing account to associate with base shared voc project"
  type        = string
}

variable "terraform_service_account" {
  description = "Service account email of the account to impersonate to run Terraform."
  type        = string
}

variable "parent_folder" {
  description = "Optional - for an organization with existing projects or for development/validation. It will place all the example foundation resources under the provided folder instead of the root organization. The value is the numeric folder ID. The folder must already exist. Must be the same value used in previous step."
  type        = string
  default     = ""
}

variable "monitoring_workspace_users" {
  description = "Google Workspace or Cloud Identity group that have access to Monitoring Workspaces."
  type        = string
}

variable "project_prefix" {
  description = "Name prefix to use for projects created. Should be the same in all steps. Max size is 3 characters."
  type        = string
  default     = "prj"
}

variable "folder_prefix" {
  description = "Name prefix to use for folders created. Should be the same in all steps."
  type        = string
  default     = "fldr"
}

variable "base_network_project_budget_amount" {
  description = "The amount to use as the budget for the base networks project"
  type        = number
  default     = 1000
}

variable "restricted_network_project_budget_amount" {
  description = "The amount to use as the budget for the restricted networks project."
  type        = number
  default     = 1000
}

variable "monitoring_project_budget_amount" {
  description = "The amount to use as the budget for the monitoring project."
  type        = number
  default     = 1000
}

variable "secret_project_budget_amount" {
  description = "The amount to use as the budget for the secrets project."
  type        = number
  default     = 1000
}
