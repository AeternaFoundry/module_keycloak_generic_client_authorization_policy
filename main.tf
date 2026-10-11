resource "keycloak_generic_client_authorization_policy" "generic_client_authorization_policies" {
  for_each = var.generic_client_authorization_policies

  decision_strategy  = each.value.decision_strategy
  name               = each.value.name
  realm_id           = each.value.realm_id
  resource_server_id = each.value.resource_server_id
  type               = each.value.type
  config             = each.value.config
  description        = each.value.description
  logic              = each.value.logic
}

