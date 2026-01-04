# nestlepeas
## Terraform Application named “peas”

This Terraform assignmnet provisions basic Azure infrastructure for the peas application.
It creates:

* One Azure Resource Group following the naming convention

* One Azure Storage Account

* One additional Resource Group named peas_app_container

* The setup supports multiple environments (Production and Non-Production) using the same Terraform code.

## Assumptions

* Azure credentials are already available.

* Subscription and Tenant IDs are known and passed through variables.

* Region is fixed to Germany West Central as per requirement.

* Global Terraform modules are assumed to exist and are mocked locally.

## How to Run the Code

* Initialize Terraform:

` terraform init `


* Review the execution plan:

`terraform plan -var-file=np.tfvars (for non-prod)`
`terraform plan -var-file=np.tfvars (for prod)`


* Apply the configuration:

`terraform apply -var-file=np.tfvars (for non-prod)`
`terraform apply -var-file=np.tfvars (for prod)`
