resource "kubernetes_deployment" "nodejs" {
  metadata {
    name = "nodejs"
    namespace = "smith1"

    labels {
      app = "nodejs"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels {
        app = "nodejs"
      }
    }

    template {
      metadata {
        labels {
          app = "nodejs"
        }
      }

      spec {
        container {
          name  = "nodejs"
          image = "mounikavenna1281991/nodejs"

          port {
            container_port = 3001
          }
        }

        node_name = "gke-ournewworld-default-pool-508b2eb7-mz4b"
      }
    }
  }
}
