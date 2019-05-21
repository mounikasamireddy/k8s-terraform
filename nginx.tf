resource "kubernetes_deployment" "nginx" {
  metadata {
    name = "nginx"
    namespace = "smith1"

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
          image = "mounikavenna1281991/nginx"

          port {
            container_port = 80
          }
        }

        node_name = "gke-ournewworld-default-pool-508b2eb7-mz4b"
      }
    }
  }
}

