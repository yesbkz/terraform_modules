variable "cloudflare_email" {
  description = "Email address associated with your Cloudflare account"
  type        = string
  default     = null
}

variable "cloudflare_api_token" {
  description = "API token for accessing Cloudflare"
  type        = string
  sensitive   = true
  default     = null
}

variable "cloudflare_zone_id" {
  description = "Zone ID for Cloudflare"
  type        = string
  default     = null
}


variable "dns_records" {
  description = "A map of DNS records"
  type = map(object({
    name    = string
    content = string
    type    = string
    proxied = bool
    ttl     = number
  }))
  default = null
}
