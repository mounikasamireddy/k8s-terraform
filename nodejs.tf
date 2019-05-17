resource "kubernetes_deployment" "nodejs" {
  metadata {
    name = "nodejs"
    namespace = "smith"

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
          image = "bonomat/nodejs-hello-world"

          port {
            container_port = 8081
          }
        }

        node_name = "gke-ournewworld-default-pool-508b2eb7-mz4b"
      }
    }
  }
}
