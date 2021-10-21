terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Cantonite"

    workspaces {
      name = "org-bootstrap"
    }
  }
}
