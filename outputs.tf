output "queue_consumer_groups_lookup_id" {
  description = "Map of id values across all queue_consumer_groups_lookup, keyed the same as var.queue_consumer_groups_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_queue_consumer_groups.queue_consumer_groups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "queue_consumer_groups_lookup_consumer_group_collection" {
  description = "Map of consumer_group_collection values across all queue_consumer_groups_lookup, keyed the same as var.queue_consumer_groups_lookup except keys with no consumer_group_collection are omitted"
  value       = { for k, v in data.oci_queue_consumer_groups.queue_consumer_groups_lookup : k => v.consumer_group_collection if v.consumer_group_collection != null && length(v.consumer_group_collection) > 0 }
}
output "queue_consumer_groups_lookup_display_name" {
  description = "Map of display_name values across all queue_consumer_groups_lookup, keyed the same as var.queue_consumer_groups_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_queue_consumer_groups.queue_consumer_groups_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "queue_consumer_groups_lookup_filter" {
  description = "Map of filter values across all queue_consumer_groups_lookup, keyed the same as var.queue_consumer_groups_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_queue_consumer_groups.queue_consumer_groups_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "queue_consumer_groups_lookup_queue_id" {
  description = "Map of queue_id values across all queue_consumer_groups_lookup, keyed the same as var.queue_consumer_groups_lookup except keys with no queue_id are omitted"
  value       = { for k, v in data.oci_queue_consumer_groups.queue_consumer_groups_lookup : k => v.queue_id if v.queue_id != null && length(v.queue_id) > 0 }
}
output "queue_consumer_groups_lookup_state" {
  description = "Map of state values across all queue_consumer_groups_lookup, keyed the same as var.queue_consumer_groups_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_queue_consumer_groups.queue_consumer_groups_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

