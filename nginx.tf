resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx"
    namespace = "smith"

    labels {
      app = "nginx"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels {
        app = "nginx"
      }
    }

    template {
      metadata {
        labels {
          app = "nginx"
        }
      }

      spec {
        container {
          name  = "nginx"
          image = "nginx:1.7.8"

          port {
            container_port = 8080
          }
        }

        node_name = "gke-ournewworld-default-pool-508b2eb7-mz4b"
      }
    }
  }
}

