provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "code" {
  chart       = "code-server"
  repository  = "https://nicholaswilde.github.io/helm-charts/"
  description = "My Code Server"
  name        = "code-server"
  namespace   = "code"
  version     = "1.1.1"
  values = [
    "${file("helm/code-server-values.yml")}"
  ]
}

resource "helm_release" "traefik" {
  chart      = "traefik"
  repository = "https://helm.traefik.io/traefik"
  name       = "traefik"
  namespace  = "traefik"
  version    = "12.0.7"
  values = [
    "${file("../k3s/launchpad/kubernetes/traefik-cert-manager/traefik/values.yaml")}"
  ]
}
