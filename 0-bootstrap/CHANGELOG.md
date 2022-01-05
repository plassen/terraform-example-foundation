# Changelog

## plassen-cloud-1.0.0 

### Changes
* set Organization ID
* set Group Organization Admin
* set Group Billing Admin
* set Default Region
* select Cloud Build option
* split billing_account into two separate accounts:
  * seed_billing_account
  * cloudbuild_billing_account
  * accordingly, change sa_org_iam_permissions:
    * change role from billing.user to billing.admin
  * accordingly, disable resource billing_account_iam_member

### Fixes
* Issue related with bug (https://github.com/terraform-google-modules/terraform-example-foundation/issues/546)
  * add IAM role 'Security Reviewer' to Cloud Build CICD service account, at organization level
  * add IAM role 'Folder Viewer' to Cloud Build CICD service account, at organization level
  * note to self: try the 'run as SA' in the cloud build trigger setting
