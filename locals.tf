locals {
  project = {
    "fem-eci-project" = {
      description = "FrontEndMasters Devops project"
    }
  }

  workspace = {
    "fem-eci-tfe" = {
      description = "FrontEndMasters Devops workspace"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "tosevzoran/fem-terraform-eci-tfe"
    }
  }
}
