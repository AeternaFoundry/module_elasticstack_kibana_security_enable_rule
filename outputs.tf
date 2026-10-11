output "kibana_security_enable_rules_id" {
  description = "Map of id values across all kibana_security_enable_rules, keyed the same as var.kibana_security_enable_rules except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_security_enable_rule.kibana_security_enable_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_security_enable_rules_all_rules_enabled" {
  description = "Map of all_rules_enabled values across all kibana_security_enable_rules, keyed the same as var.kibana_security_enable_rules except keys with no all_rules_enabled are omitted"
  value       = { for k, v in elasticstack_kibana_security_enable_rule.kibana_security_enable_rules : k => v.all_rules_enabled if v.all_rules_enabled != null }
}
output "kibana_security_enable_rules_disable_on_destroy" {
  description = "Map of disable_on_destroy values across all kibana_security_enable_rules, keyed the same as var.kibana_security_enable_rules except keys with no disable_on_destroy are omitted"
  value       = { for k, v in elasticstack_kibana_security_enable_rule.kibana_security_enable_rules : k => v.disable_on_destroy if v.disable_on_destroy != null }
}
output "kibana_security_enable_rules_key" {
  description = "Map of key values across all kibana_security_enable_rules, keyed the same as var.kibana_security_enable_rules except keys with no key are omitted"
  value       = { for k, v in elasticstack_kibana_security_enable_rule.kibana_security_enable_rules : k => v.key if v.key != null && length(v.key) > 0 }
}
output "kibana_security_enable_rules_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_security_enable_rules, keyed the same as var.kibana_security_enable_rules except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_security_enable_rule.kibana_security_enable_rules : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_security_enable_rules_space_id" {
  description = "Map of space_id values across all kibana_security_enable_rules, keyed the same as var.kibana_security_enable_rules except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_security_enable_rule.kibana_security_enable_rules : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_security_enable_rules_value" {
  description = "Map of value values across all kibana_security_enable_rules, keyed the same as var.kibana_security_enable_rules except keys with no value are omitted"
  value       = { for k, v in elasticstack_kibana_security_enable_rule.kibana_security_enable_rules : k => v.value if v.value != null && length(v.value) > 0 }
}

