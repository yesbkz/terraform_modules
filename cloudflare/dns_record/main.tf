resource "cloudflare_dns_record" "record" {
  for_each = var.dns_records

  zone_id = var.cloudflare_zone_id
  name    = each.value.name
  content = each.value.content
  type    = each.value.type
  proxied = each.value.proxied
  ttl     = each.value.ttl
}
