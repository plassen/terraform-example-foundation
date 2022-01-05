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

locals {
  floating_billing_account = var.floating_billing_account != "" ? var.floating_billing_account : var.billing_account
}

module "floating_project" {
  source                      = "../../modules/single_project"
  impersonate_service_account = var.terraform_service_account
  org_id                      = var.org_id
  billing_account             = local.floating_billing_account
  folder_id                   = data.google_active_folder.env.name
  environment                 = "development"
  alert_spent_percents        = var.alert_spent_percents
  alert_pubsub_topic          = var.alert_pubsub_topic
  budget_amount               = var.budget_amount
  project_prefix              = var.project_prefix

  # Metadata
  project_suffix    = "sample-floating"
  application_name  = "pcs-sample-application"
  billing_code      = lower(local.floating_billing_account)
  primary_contact   = "pedro-at-plassen-dot-cloud"
  secondary_contact = "pedro-dot-plassen-dot-lopes-at-gmail-dot-com"
  business_code     = "pcs"
}
