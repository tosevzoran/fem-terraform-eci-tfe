locals {
  project = {
    "fem-eci-project" = {
      description = "FrontEndMasters Devops project"
    }
  }

  workspace = {
    "fem-eci-tfe" = {
      description = "FrontEndMasters Devops workspace"
      execution_mode = "local"
      project_id = module.project["fem-eci-project"].id
    }
  }
}
