output "id" {
  value = controltower_aws_account.account.account_id
  #value       = module.account.id
  description = "The AWS account ID"
}

output "tfe_workspace_id" {
  value       = try(module.tfe_workspace.0.workspace_id, "")
  description = "The TFE workspace ID"
}

output "additional_tfe_workspace" {
  value       = { for name, workspace in var.additional_tfe_workspaces : name => module.additional_tfe_workspaces[name].workspace_id }
  description = "Map of additional TFE workspaces containing name and workspace ID"
}
