resource "kubernetes_deployment" "mongo_deployment" {
  metadata {
    name = "mongo-deployment"
    namespace = "smith1"
    labels {
      app = "mongo"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels {
        app = "mongo"
      }
    }

    template {
      metadata {
        labels {
          app = "mongo"
        }
      }

      spec {
        container {
          name  = "mongo"
          image = "mongo"

          port {
            container_port = 9090
          }
        }

        node_name = "gke-ournewworld-default-pool-c79fd9b4-ltr0"
      }
    }
  }
}

