module "account_request_02" {
  source  = "github.com/phytwo/aft-account-request.git//terraform/modules/aft-account-request?ref=v1.0.0"

  control_tower_parameters = {
    AccountEmail              = "cyberwizard42+dnsman@gmail.com"
    AccountName               = "DNS Management"
    ManagedOrganizationalUnit = "Infrastructure" 
    SSOUserEmail              = "cyberwizard42@gmail.com"
    SSOUserFirstName          = "Cyber"
    SSOUserLastName           = "Wizard"
  }

  account_tags = {
    "001:Owner"       = "cyberwizard42@gmail.com"
    "001:Division"    = "Management"
    "001:Environment" = "Production"
  }

  change_management_parameters = {
    change_requested_by = "Cyber Wizard Operations Management Team."
    change_reason       = "Creating account for centralised DNS management."
  }

  account_customizations_name = "PRODUCTION"
}