resource "elasticstack_kibana_security_enable_rule" "kibana_security_enable_rules" {
  for_each = var.kibana_security_enable_rules

  key                = each.value.key
  value              = each.value.value
  disable_on_destroy = each.value.disable_on_destroy
  space_id           = each.value.space_id
  timeouts           = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

