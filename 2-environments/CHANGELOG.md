# Changelog

## plassen-cloud-1.0.0 

### Changes
* add terraform SA to devops admin group
* set Organization ID
* set terraform SA
* set Monitoring Admin group
* split billing_account into billing accounts for each proj in each env
  * change var names
  * custom var values
  * change input names for env module in each environment
  * change env module variables
* update project labels
* set projects budget
  * add budget amount input variables to env module
  * define budget values in tfvars
  * define budget variables in each environment
