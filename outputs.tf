output "volumes" {
  value = [
    {
      name      = "docker-sock"
      host_path = jsonencode({
        type = "Socket"
        path = "/var/run/docker.sock"
      })
    }
  ]
}

output "volume_mounts" {
  value = [
    {
      name       = "docker-sock"
      mount_path = "/var/run/docker.sock"
    }
  ]
}
