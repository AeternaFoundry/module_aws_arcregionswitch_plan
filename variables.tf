variable "arcregionswitch_plans" {
  description = <<EOT
Map of arcregionswitch_plans, attributes below
Required:
    - execution_role
    - name
    - recovery_approach
    - regions
Optional:
    - description
    - primary_region
    - recovery_time_objective_minutes
    - region
    - tags
    - associated_alarms (block):
        - alarm_type (required)
        - cross_account_role (optional)
        - external_id (optional)
        - map_block_key (required)
        - resource_identifier (required)
    - report_configuration (block):
        - report_output (optional, block):
            - s3_configuration (optional, block):
                - bucket_owner (required)
                - bucket_path (required)
    - triggers (block):
        - action (required)
        - conditions (optional, block):
            - associated_alarm_name (required)
            - condition (required)
        - description (optional)
        - min_delay_minutes_between_executions (required)
        - target_region (required)
    - workflow (block):
        - step (optional, block):
            - arc_routing_control_config (optional, block):
                - cross_account_role (optional)
                - external_id (optional)
                - region_and_routing_controls (optional, block):
                    - region (required)
                    - routing_control (optional, block):
                        - routing_control_arn (required)
                        - state (required)
                - timeout_minutes (optional)
            - custom_action_lambda_config (optional, block):
                - lambda (optional, block):
                    - arn (required)
                    - cross_account_role (optional)
                    - external_id (optional)
                - region_to_run (required)
                - retry_interval_minutes (required)
                - timeout_minutes (optional)
                - ungraceful (optional, block):
                    - behavior (required)
            - description (optional)
            - document_db_config (optional, block):
                - behavior (required)
                - cross_account_role (optional)
                - database_cluster_arns (required)
                - external_id (optional)
                - global_cluster_identifier (required)
                - timeout_minutes (optional)
                - ungraceful (optional, block):
                    - ungraceful (required)
            - ec2_asg_capacity_increase_config (optional, block):
                - asg (optional, block):
                    - arn (required)
                    - cross_account_role (optional)
                    - external_id (optional)
                - capacity_monitoring_approach (required)
                - target_percent (optional)
                - timeout_minutes (optional)
                - ungraceful (optional, block):
                    - minimum_success_percentage (required)
            - ecs_capacity_increase_config (optional, block):
                - capacity_monitoring_approach (required)
                - service (optional, block):
                    - cluster_arn (required)
                    - cross_account_role (optional)
                    - external_id (optional)
                    - service_arn (required)
                - target_percent (optional)
                - timeout_minutes (optional)
                - ungraceful (optional, block):
                    - minimum_success_percentage (required)
            - eks_resource_scaling_config (optional, block):
                - capacity_monitoring_approach (required)
                - eks_clusters (optional, block):
                    - cluster_arn (required)
                    - cross_account_role (optional)
                    - external_id (optional)
                - kubernetes_resource_type (optional, block):
                    - api_version (required)
                    - kind (required)
                - scaling_resources (optional, block):
                    - namespace (required)
                    - resources (optional, block):
                        - hpa_name (optional)
                        - name (required)
                        - namespace (required)
                        - resource_name (required)
                - target_percent (required)
                - timeout_minutes (optional)
                - ungraceful (optional, block):
                    - minimum_success_percentage (required)
            - execution_approval_config (optional, block):
                - approval_role (required)
                - timeout_minutes (optional)
            - execution_block_type (required)
            - global_aurora_config (optional, block):
                - behavior (required)
                - cross_account_role (optional)
                - database_cluster_arns (required)
                - external_id (optional)
                - global_cluster_identifier (required)
                - timeout_minutes (optional)
                - ungraceful (optional, block):
                    - ungraceful (required)
            - name (required)
            - parallel_config (optional, block):
                - step (optional, block):
                    - arc_routing_control_config (optional, block):
                        - cross_account_role (optional)
                        - external_id (optional)
                        - region_and_routing_controls (optional, block):
                            - region (required)
                            - routing_control (optional, block):
                                - routing_control_arn (required)
                                - state (required)
                        - timeout_minutes (optional)
                    - custom_action_lambda_config (optional, block):
                        - lambda (optional, block):
                            - arn (required)
                            - cross_account_role (optional)
                            - external_id (optional)
                        - region_to_run (required)
                        - retry_interval_minutes (required)
                        - timeout_minutes (optional)
                        - ungraceful (optional, block):
                            - behavior (required)
                    - description (optional)
                    - document_db_config (optional, block):
                        - behavior (required)
                        - cross_account_role (optional)
                        - database_cluster_arns (required)
                        - external_id (optional)
                        - global_cluster_identifier (required)
                        - timeout_minutes (optional)
                        - ungraceful (optional, block):
                            - ungraceful (required)
                    - ec2_asg_capacity_increase_config (optional, block):
                        - asg (optional, block):
                            - arn (required)
                            - cross_account_role (optional)
                            - external_id (optional)
                        - capacity_monitoring_approach (required)
                        - target_percent (optional)
                        - timeout_minutes (optional)
                        - ungraceful (optional, block):
                            - minimum_success_percentage (required)
                    - ecs_capacity_increase_config (optional, block):
                        - capacity_monitoring_approach (required)
                        - service (optional, block):
                            - cluster_arn (required)
                            - cross_account_role (optional)
                            - external_id (optional)
                            - service_arn (required)
                        - target_percent (optional)
                        - timeout_minutes (optional)
                        - ungraceful (optional, block):
                            - minimum_success_percentage (required)
                    - eks_resource_scaling_config (optional, block):
                        - capacity_monitoring_approach (required)
                        - eks_clusters (optional, block):
                            - cluster_arn (required)
                            - cross_account_role (optional)
                            - external_id (optional)
                        - kubernetes_resource_type (optional, block):
                            - api_version (required)
                            - kind (required)
                        - scaling_resources (optional, block):
                            - namespace (required)
                            - resources (optional, block):
                                - hpa_name (optional)
                                - name (required)
                                - namespace (required)
                                - resource_name (required)
                        - target_percent (required)
                        - timeout_minutes (optional)
                        - ungraceful (optional, block):
                            - minimum_success_percentage (required)
                    - execution_approval_config (optional, block):
                        - approval_role (required)
                        - timeout_minutes (optional)
                    - execution_block_type (required)
                    - global_aurora_config (optional, block):
                        - behavior (required)
                        - cross_account_role (optional)
                        - database_cluster_arns (required)
                        - external_id (optional)
                        - global_cluster_identifier (required)
                        - timeout_minutes (optional)
                        - ungraceful (optional, block):
                            - ungraceful (required)
                    - name (required)
                    - rds_create_cross_region_read_replica_config (optional, block):
                        - cross_account_role (optional)
                        - db_instance_arn_map (required)
                        - external_id (optional)
                        - timeout_minutes (optional)
                    - rds_promote_read_replica_config (optional, block):
                        - cross_account_role (optional)
                        - db_instance_arn_map (required)
                        - external_id (optional)
                        - timeout_minutes (optional)
                    - region_switch_plan_config (optional, block):
                        - arn (required)
                        - cross_account_role (optional)
                        - external_id (optional)
                    - route53_health_check_config (optional, block):
                        - cross_account_role (optional)
                        - external_id (optional)
                        - hosted_zone_id (required)
                        - record_name (required)
                        - record_set (optional, block):
                            - record_set_identifier (required)
                            - region (required)
                        - timeout_minutes (optional)
            - rds_create_cross_region_read_replica_config (optional, block):
                - cross_account_role (optional)
                - db_instance_arn_map (required)
                - external_id (optional)
                - timeout_minutes (optional)
            - rds_promote_read_replica_config (optional, block):
                - cross_account_role (optional)
                - db_instance_arn_map (required)
                - external_id (optional)
                - timeout_minutes (optional)
            - region_switch_plan_config (optional, block):
                - arn (required)
                - cross_account_role (optional)
                - external_id (optional)
            - route53_health_check_config (optional, block):
                - cross_account_role (optional)
                - external_id (optional)
                - hosted_zone_id (required)
                - record_name (required)
                - record_set (optional, block):
                    - record_set_identifier (required)
                    - region (required)
                - timeout_minutes (optional)
        - workflow_description (optional)
        - workflow_target_action (required)
        - workflow_target_region (optional)
EOT

  type = map(object({
    execution_role                  = string
    name                            = string
    recovery_approach               = string
    regions                         = list(string)
    description                     = optional(string)
    primary_region                  = optional(string)
    recovery_time_objective_minutes = optional(number)
    region                          = optional(string)
    tags                            = optional(map(string))
    associated_alarms = optional(list(object({
      alarm_type          = string
      cross_account_role  = optional(string)
      external_id         = optional(string)
      map_block_key       = string
      resource_identifier = string
    })))
    report_configuration = optional(list(object({
      report_output = optional(list(object({
        s3_configuration = optional(list(object({
          bucket_owner = string
          bucket_path  = string
        })))
      })))
    })))
    triggers = optional(list(object({
      action = string
      conditions = optional(list(object({
        associated_alarm_name = string
        condition             = string
      })))
      description                          = optional(string)
      min_delay_minutes_between_executions = number
      target_region                        = string
    })))
    workflow = optional(list(object({
      step = optional(list(object({
        arc_routing_control_config = optional(list(object({
          cross_account_role = optional(string)
          external_id        = optional(string)
          region_and_routing_controls = optional(list(object({
            region = string
            routing_control = optional(list(object({
              routing_control_arn = string
              state               = string
            })))
          })))
          timeout_minutes = optional(number)
        })))
        custom_action_lambda_config = optional(list(object({
          lambda = optional(list(object({
            arn                = string
            cross_account_role = optional(string)
            external_id        = optional(string)
          })))
          region_to_run          = string
          retry_interval_minutes = number
          timeout_minutes        = optional(number)
          ungraceful = optional(list(object({
            behavior = string
          })))
        })))
        description = optional(string)
        document_db_config = optional(list(object({
          behavior                  = string
          cross_account_role        = optional(string)
          database_cluster_arns     = list(string)
          external_id               = optional(string)
          global_cluster_identifier = string
          timeout_minutes           = optional(number)
          ungraceful = optional(list(object({
            ungraceful = string
          })))
        })))
        ec2_asg_capacity_increase_config = optional(list(object({
          asg = optional(list(object({
            arn                = string
            cross_account_role = optional(string)
            external_id        = optional(string)
          })))
          capacity_monitoring_approach = string
          target_percent               = optional(number)
          timeout_minutes              = optional(number)
          ungraceful = optional(list(object({
            minimum_success_percentage = number
          })))
        })))
        ecs_capacity_increase_config = optional(list(object({
          capacity_monitoring_approach = string
          service = optional(list(object({
            cluster_arn        = string
            cross_account_role = optional(string)
            external_id        = optional(string)
            service_arn        = string
          })))
          target_percent  = optional(number)
          timeout_minutes = optional(number)
          ungraceful = optional(list(object({
            minimum_success_percentage = number
          })))
        })))
        eks_resource_scaling_config = optional(list(object({
          capacity_monitoring_approach = string
          eks_clusters = optional(list(object({
            cluster_arn        = string
            cross_account_role = optional(string)
            external_id        = optional(string)
          })))
          kubernetes_resource_type = optional(list(object({
            api_version = string
            kind        = string
          })))
          scaling_resources = optional(list(object({
            namespace = string
            resources = optional(list(object({
              hpa_name      = optional(string)
              name          = string
              namespace     = string
              resource_name = string
            })))
          })))
          target_percent  = number
          timeout_minutes = optional(number)
          ungraceful = optional(list(object({
            minimum_success_percentage = number
          })))
        })))
        execution_approval_config = optional(list(object({
          approval_role   = string
          timeout_minutes = optional(number)
        })))
        execution_block_type = string
        global_aurora_config = optional(list(object({
          behavior                  = string
          cross_account_role        = optional(string)
          database_cluster_arns     = list(string)
          external_id               = optional(string)
          global_cluster_identifier = string
          timeout_minutes           = optional(number)
          ungraceful = optional(list(object({
            ungraceful = string
          })))
        })))
        name = string
        parallel_config = optional(list(object({
          step = optional(list(object({
            arc_routing_control_config = optional(list(object({
              cross_account_role = optional(string)
              external_id        = optional(string)
              region_and_routing_controls = optional(list(object({
                region = string
                routing_control = optional(list(object({
                  routing_control_arn = string
                  state               = string
                })))
              })))
              timeout_minutes = optional(number)
            })))
            custom_action_lambda_config = optional(list(object({
              lambda = optional(list(object({
                arn                = string
                cross_account_role = optional(string)
                external_id        = optional(string)
              })))
              region_to_run          = string
              retry_interval_minutes = number
              timeout_minutes        = optional(number)
              ungraceful = optional(list(object({
                behavior = string
              })))
            })))
            description = optional(string)
            document_db_config = optional(list(object({
              behavior                  = string
              cross_account_role        = optional(string)
              database_cluster_arns     = list(string)
              external_id               = optional(string)
              global_cluster_identifier = string
              timeout_minutes           = optional(number)
              ungraceful = optional(list(object({
                ungraceful = string
              })))
            })))
            ec2_asg_capacity_increase_config = optional(list(object({
              asg = optional(list(object({
                arn                = string
                cross_account_role = optional(string)
                external_id        = optional(string)
              })))
              capacity_monitoring_approach = string
              target_percent               = optional(number)
              timeout_minutes              = optional(number)
              ungraceful = optional(list(object({
                minimum_success_percentage = number
              })))
            })))
            ecs_capacity_increase_config = optional(list(object({
              capacity_monitoring_approach = string
              service = optional(list(object({
                cluster_arn        = string
                cross_account_role = optional(string)
                external_id        = optional(string)
                service_arn        = string
              })))
              target_percent  = optional(number)
              timeout_minutes = optional(number)
              ungraceful = optional(list(object({
                minimum_success_percentage = number
              })))
            })))
            eks_resource_scaling_config = optional(list(object({
              capacity_monitoring_approach = string
              eks_clusters = optional(list(object({
                cluster_arn        = string
                cross_account_role = optional(string)
                external_id        = optional(string)
              })))
              kubernetes_resource_type = optional(list(object({
                api_version = string
                kind        = string
              })))
              scaling_resources = optional(list(object({
                namespace = string
                resources = optional(list(object({
                  hpa_name      = optional(string)
                  name          = string
                  namespace     = string
                  resource_name = string
                })))
              })))
              target_percent  = number
              timeout_minutes = optional(number)
              ungraceful = optional(list(object({
                minimum_success_percentage = number
              })))
            })))
            execution_approval_config = optional(list(object({
              approval_role   = string
              timeout_minutes = optional(number)
            })))
            execution_block_type = string
            global_aurora_config = optional(list(object({
              behavior                  = string
              cross_account_role        = optional(string)
              database_cluster_arns     = list(string)
              external_id               = optional(string)
              global_cluster_identifier = string
              timeout_minutes           = optional(number)
              ungraceful = optional(list(object({
                ungraceful = string
              })))
            })))
            name = string
            rds_create_cross_region_read_replica_config = optional(list(object({
              cross_account_role  = optional(string)
              db_instance_arn_map = map(string)
              external_id         = optional(string)
              timeout_minutes     = optional(number)
            })))
            rds_promote_read_replica_config = optional(list(object({
              cross_account_role  = optional(string)
              db_instance_arn_map = map(string)
              external_id         = optional(string)
              timeout_minutes     = optional(number)
            })))
            region_switch_plan_config = optional(list(object({
              arn                = string
              cross_account_role = optional(string)
              external_id        = optional(string)
            })))
            route53_health_check_config = optional(list(object({
              cross_account_role = optional(string)
              external_id        = optional(string)
              hosted_zone_id     = string
              record_name        = string
              record_set = optional(list(object({
                record_set_identifier = string
                region                = string
              })))
              timeout_minutes = optional(number)
            })))
          })))
        })))
        rds_create_cross_region_read_replica_config = optional(list(object({
          cross_account_role  = optional(string)
          db_instance_arn_map = map(string)
          external_id         = optional(string)
          timeout_minutes     = optional(number)
        })))
        rds_promote_read_replica_config = optional(list(object({
          cross_account_role  = optional(string)
          db_instance_arn_map = map(string)
          external_id         = optional(string)
          timeout_minutes     = optional(number)
        })))
        region_switch_plan_config = optional(list(object({
          arn                = string
          cross_account_role = optional(string)
          external_id        = optional(string)
        })))
        route53_health_check_config = optional(list(object({
          cross_account_role = optional(string)
          external_id        = optional(string)
          hosted_zone_id     = string
          record_name        = string
          record_set = optional(list(object({
            record_set_identifier = string
            region                = string
          })))
          timeout_minutes = optional(number)
        })))
      })))
      workflow_description   = optional(string)
      workflow_target_action = string
      workflow_target_region = optional(string)
    })))
  }))
}

