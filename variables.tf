variable "queue_consumer_groups_lookup" {
  description = <<EOT
Map of queue_consumer_groups_lookup, attributes below
Optional:
    - display_name
    - queue_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    display_name = optional(string)
    queue_id     = optional(string)
    state        = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

