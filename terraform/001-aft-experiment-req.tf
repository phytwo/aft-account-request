module "account_request_01" {
  source  = "github.com/phytwo/aft-account-request.git//terraform/modules/aft-account-request?ref=v1.0.0"

  control_tower_parameters = {
    AccountEmail              = "cyberwizard42+afttestacc@gmail.com"
    AccountName               = "aft-test"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "cyberwizard42@gmail.com"
    SSOUserFirstName          = "Cyber"
    SSOUserLastName           = "Wizard"
  }

  account_tags = {
    "001:Owner"       = "cyberwizard42@gmail.com"
    "001:Division"    = "RND"
    "001:Environment" = "Experimental"
  }

  change_management_parameters = {
    change_requested_by = "Cyber Wizard Cloud Research Team"
    change_reason       = "Experimenting AFT implementation."
  }

  account_customizations_name = "SANDBOX"
}