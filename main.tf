data "oci_queue_consumer_groups" "queue_consumer_groups_lookup" {
  for_each = var.queue_consumer_groups_lookup

  display_name = each.value.display_name
  queue_id     = each.value.queue_id
  state        = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

