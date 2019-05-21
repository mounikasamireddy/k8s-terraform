resource "kubernetes_namespace" "default" {
  metadata {
    name = "smith1"
    }
  }
