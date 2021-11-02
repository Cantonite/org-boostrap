resource "github_repository" "org_bootstrap" { # This repository!
  name        = "org-boostrap"
  description = "Everything in this organisation starts here. Nothing else is manual."
}

resource "tfe_workspace" "org_bootstrap" {
  name         = "org-bootstrap"
  organization = "Cantonite"

  vcs_repo {
    identifier     = "Cantonite/${github_repository.org_bootstrap.name}"
    oauth_token_id = var.oauth_token_id
    branch         = ""
  }
}

resource "github_repository" "repos" {
  name        = "repos"
  description = "Create respositories in this repository."
  auto_init   = true
}

resource "tfe_workspace" "repos" {
  name         = "repos"
  organization = "Cantonite"
  auto_apply   = true

  vcs_repo {
    identifier     = "Cantonite/${github_repository.repos.name}"
    oauth_token_id = var.oauth_token_id
    branch         = ""
  }
}
