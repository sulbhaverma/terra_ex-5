output "aks_name" {
  value = module.aks.cluster_name
}

output "kube_config" {
  value     = module.aks.kube_config_raw
  sensitive = true
}
