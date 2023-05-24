module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cyberwizard42+afttestacc@gmail.com"
    AccountName               = "aft-test"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "cyberwizard42@gmail.com"
    SSOUserFirstName          = "cyber"
    SSOUserLastName           = "wizard"
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