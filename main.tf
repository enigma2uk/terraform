# Zones

resource "cloudflare_zone" "uk_enigma2" {
  zone = "enigma2.uk"
}

# Build Server

resource "cloudflare_record" "uk_enigma2_dev_build" {
  zone_id = cloudflare_zone.uk_enigma2.id
  name    = "build.dev"
  value   = "194.147.58.99"
  type    = "A"
  ttl     = 60
}
