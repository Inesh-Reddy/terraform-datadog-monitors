# Global Terraform
variable "environment" {
  description = "Architecture environment"
  type        = "string"
}

# Global DataDog
variable "message" {
  description = "Message sent when a Redis monitor is triggered"
}

variable "delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 900
}

variable "filter_tags_use_defaults" {
  description = "Use default filter tags convention"
  default     = "true"
}

variable "filter_tags_custom" {
  description = "Tags used for custom filtering when filter_tags_use_defaults is false"
  default     = "*"
}

# Redis specific variables
variable "redis_silenced" {
  description = "Groups to mute for Redis monitors"
  type        = "map"
  default     = {}
}

variable "evictedkeys_change_silenced" {
  description = "Groups to mute for Redis evicted keys monitor"
  type        = "map"
  default     = {}
}

variable "evictedkeys_change_message" {
  description = "Custom message for Redis evicted keys monitor"
  type        = "string"
  default     = ""
}

variable "evictedkeys_change_time_aggregator" {
  description = "Monitor aggregator for Redis evicted keys [available values: min, max or avg]"
  type        = "string"
  default     = "avg"
}

variable "evictedkeys_change_timeframe" {
  description = "Monitor timeframe for Redis evicted keys [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "evictedkeys_change_threshold_warning" {
  description = "Evicted keys change (warning threshold)"
  default     = 20
}

variable "evictedkeys_change_threshold_critical" {
  description = "Evicted keys change (critical threshold)"
  default     = 100
}

variable "expirations_silenced" {
  description = "Groups to mute for Redis keys expirations monitor"
  type        = "map"
  default     = {}
}

variable "expirations_rate_message" {
  description = "Custom message for Redis keys expirations monitor"
  type        = "string"
  default     = ""
}

variable "expirations_rate_time_aggregator" {
  description = "Monitor aggregator for Redis keys expirations [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "expirations_rate_timeframe" {
  description = "Monitor timeframe for Redis keys expirations [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "expirations_rate_threshold_critical" {
  description = "Expirations percent (critical threshold)"
  default     = 80
}

variable "expirations_rate_threshold_warning" {
  description = "Expirations percent (warning threshold)"
  default     = 60
}

variable "blocked_clients_silenced" {
  description = "Groups to mute for Redis Blocked clients monitor"
  type        = "map"
  default     = {}
}

variable "blocked_clients_message" {
  description = "Custom message for Redis Blocked clients monitor"
  type        = "string"
  default     = ""
}

variable "blocked_clients_time_aggregator" {
  description = "Monitor aggregator for Redis Blocked clients [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "blocked_clients_timeframe" {
  description = "Monitor timeframe for Redis Blocked clients [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "blocked_clients_threshold_critical" {
  description = "Blocked clients rate (critical threshold)"
  default     = 30
}

variable "blocked_clients_threshold_warning" {
  description = "Blocked clients rate (warning threshold)"
  default     = 10
}

variable "keyspace_silenced" {
  description = "Groups to mute for Redis keyspace monitor"
  type        = "map"

  default = {
    "*" = 0 # Mute all for now by default
  }
}

variable "keyspace_message" {
  description = "Custom message for Redis keyspace monitor"
  type        = "string"
  default     = ""
}

variable "keyspace_time_aggregator" {
  description = "Monitor aggregator for Redis keyspace [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "keyspace_timeframe" {
  description = "Monitor timeframe for Redis keyspace [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "keyspace_threshold_critical" {
  description = "Keyspace no changement (critical threshold)"
  default     = 0
}

variable "keyspace_threshold_warning" {
  description = "Keyspace no changement (warning threshold)"
  default     = 1
}

variable "mem_used_silenced" {
  description = "Groups to mute for Redis RAM memory used monitor"
  type        = "map"
  default     = {}
}

variable "mem_used_message" {
  description = "Custom message for Redis RAM memory used monitor"
  type        = "string"
  default     = ""
}

variable "mem_used_time_aggregator" {
  description = "Monitor aggregator for Redis RAM memory used [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "mem_used_timeframe" {
  description = "Monitor timeframe for Redis RAM memory used [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "mem_used_threshold_critical" {
  description = "RAM memory used limit (critical threshold)"
  default     = 95
}

variable "mem_used_threshold_warning" {
  description = "RAM memory used limit (warning threshold)"
  default     = 85
}

variable "mem_frag_silenced" {
  description = "Groups to mute for Redis memory RAM fragmentation monitor"
  type        = "map"
  default     = {}
}

variable "mem_frag_message" {
  description = "Custom message for Redis memory RAM fragmentation monitor"
  type        = "string"
  default     = ""
}

variable "mem_frag_time_aggregator" {
  description = "Monitor aggregator for Redis memory RAM fragmentation [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "mem_frag_timeframe" {
  description = "Monitor timeframe for Redis memory RAM fragmentation [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "mem_frag_threshold_critical" {
  description = "memory RAM fragmentation limit (critical threshold)"
  default     = 130
}

variable "mem_frag_threshold_warning" {
  description = "memory RAM fragmentation limit (warning threshold)"
  default     = 100
}

variable "rejected_con_silenced" {
  description = "Groups to mute for Redis rejected connections errors monitor"
  type        = "map"
  default     = {}
}

variable "rejected_con_message" {
  description = "Custom message for Redis rejected connections errors monitor"
  type        = "string"
  default     = ""
}

variable "rejected_con_time_aggregator" {
  description = "Monitor aggregator for Redis rejected connections errors [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "rejected_con_timeframe" {
  description = "Monitor timeframe for Redis rejected connections errors [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "rejected_con_threshold_critical" {
  description = "rejected connections errors limit (critical threshold)"
  default     = 50
}

variable "rejected_con_threshold_warning" {
  description = "rejected connections errors limit (warning threshold)"
  default     = 10
}

variable "latency_silenced" {
  description = "Groups to mute for Redis latency monitor"
  type        = "map"
  default     = {}
}

variable "latency_message" {
  description = "Custom message for Redis latency monitor"
  type        = "string"
  default     = ""
}

variable "latency_time_aggregator" {
  description = "Monitor aggregator for Redis latency [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "latency_timeframe" {
  description = "Monitor timeframe for Redis latency [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "latency_threshold_critical" {
  description = "latency limit (critical threshold)"
  default     = 100
}

variable "latency_threshold_warning" {
  description = "latency limit (warning threshold)"
  default     = 50
}

variable "hitrate_silenced" {
  description = "Groups to mute for Redis hitrate monitor"
  type        = "map"
  default     = {}
}

variable "hitrate_message" {
  description = "Custom message for Redis hitrate monitor"
  type        = "string"
  default     = ""
}

variable "hitrate_time_aggregator" {
  description = "Monitor aggregator for Redis hitrate [available values: min, max or avg]"
  type        = "string"
  default     = "min"
}

variable "hitrate_timeframe" {
  description = "Monitor timeframe for Redis hitrate [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  type        = "string"
  default     = "last_5m"
}

variable "hitrate_threshold_critical" {
  description = "hitrate limit (critical threshold)"
  default     = 10
}

variable "hitrate_threshold_warning" {
  description = "hitrate limit (warning threshold)"
  default     = 30
}

#
# Connection Down
#
variable "not_responding_silenced" {
  description = "Groups to mute for Redis does not respond monitor"
  type        = "map"
  default     = {}
}

variable "not_responding_message" {
  description = "Custom message for Redis does not respond monitor"
  type        = "string"
  default     = ""
}

variable "not_responding_by" {
  description = "Group by for the service check"
  type        = "string"
  default     = "\"host\",\"redis_host\",\"redis_port\""
}

variable "not_responding_last" {
  description = "Parameter 'last' for the service check"
  type        = "string"
  default     = 6
}

variable "not_responding_threshold_critical" {
  description = "Not responding limit (critical threshold)"
  default     = 5
}

variable "not_responding_threshold_warning" {
  description = "Not responding limit (warning threshold)"
  default     = 1
}

variable "not_responding_threshold_ok" {
  description = "Not responding limit (ok threshold)"
  default     = 1
}
