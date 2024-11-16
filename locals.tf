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
      vcs_repo_identifier = "${var.github_organization_name}/fem-terraform-eci-tfe"
    }


    "fem-eci-github" = {
      description = "FrontEndMasters Github workspace"
      execution_mode = "local"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-terraform-eci-github"
    }
  }
}
