output "url" {
    description = "Browser URL for container site"
    value       = join(":", ["http://localhost", tostring(81)])
}
