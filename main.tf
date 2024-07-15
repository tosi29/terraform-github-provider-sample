terraform {
  required_version = ">= 1.6.6"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

data "github_ip_ranges" "test" {}

output "github_actions_ipv4_list" {
    value = data.github_ip_ranges.test.actions_ipv4
}

