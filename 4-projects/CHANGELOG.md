# Changelog

## plassen-cloud-1.0.0

### Changes
* common.auto.tfvars
  * define values
    * billing_account
    * org_id
    * terraform SA
    * location_kms
    * location_gcs
    * specific billing accounts for each project type
    * default budget amount
* access_control.auto.tfvars
  * define access_control_manager_policy_id
* [development,production,non-production].auto.tfvars
  * define perimeter_name
* shared.auto.tfvars
  * define default_region
* pcs.auto.tfvars
  * define app_infra_pipeline_cloudbuild_sa
* [pcs/dev|prod|non-prod] subfolders
  * variables.tf
    * add specific billing acct vars
  * example*.tf
    * change code to refer to specific billing vars
    * change "bu1" references to "pcs" (plassen cloud solution)



* variables.tf
    * define specific billing accounts
    * change budget default value

* set development values
  * perimenter_name
* set non-production values
  * perimenter_name
* set production values
  * perimeter_name
* set shared values
  * default_region
* changes on shared folder
  * change code to accept specific billing account if defined
