# Zones

resource "cloudflare_zone" "uk_enigma2" {
  zone = "enigma2.uk"
}

# Build Server

resource "cloudflare_record" "uk_enigma2_build" {
  zone_id = cloudflare_zone.uk_enigma2.id
  name    = "build"
  value   = "1.2.3.4"
  type    = "A"
  ttl     = 60
}
