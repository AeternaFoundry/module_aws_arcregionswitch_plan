output "arcregionswitch_plans_arn" {
  description = "Map of arn values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "arcregionswitch_plans_associated_alarms" {
  description = "Map of associated_alarms values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.associated_alarms if v.associated_alarms != null && length(v.associated_alarms) > 0 }
}
output "arcregionswitch_plans_description" {
  description = "Map of description values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.description if v.description != null && length(v.description) > 0 }
}
output "arcregionswitch_plans_execution_role" {
  description = "Map of execution_role values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.execution_role if v.execution_role != null && length(v.execution_role) > 0 }
}
output "arcregionswitch_plans_name" {
  description = "Map of name values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.name if v.name != null && length(v.name) > 0 }
}
output "arcregionswitch_plans_primary_region" {
  description = "Map of primary_region values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.primary_region if v.primary_region != null && length(v.primary_region) > 0 }
}
output "arcregionswitch_plans_recovery_approach" {
  description = "Map of recovery_approach values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.recovery_approach if v.recovery_approach != null && length(v.recovery_approach) > 0 }
}
output "arcregionswitch_plans_recovery_time_objective_minutes" {
  description = "Map of recovery_time_objective_minutes values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.recovery_time_objective_minutes if v.recovery_time_objective_minutes != null }
}
output "arcregionswitch_plans_region" {
  description = "Map of region values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.region if v.region != null && length(v.region) > 0 }
}
output "arcregionswitch_plans_regions" {
  description = "Map of regions values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.regions if v.regions != null && length(v.regions) > 0 }
}
output "arcregionswitch_plans_report_configuration" {
  description = "Map of report_configuration values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.report_configuration if v.report_configuration != null && length(v.report_configuration) > 0 }
}
output "arcregionswitch_plans_tags" {
  description = "Map of tags values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "arcregionswitch_plans_tags_all" {
  description = "Map of tags_all values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "arcregionswitch_plans_triggers" {
  description = "Map of triggers values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.triggers if v.triggers != null && length(v.triggers) > 0 }
}
output "arcregionswitch_plans_workflow" {
  description = "Map of workflow values across all arcregionswitch_plans, keyed the same as var.arcregionswitch_plans"
  value       = { for k, v in aws_arcregionswitch_plan.arcregionswitch_plans : k => v.workflow if v.workflow != null && length(v.workflow) > 0 }
}

