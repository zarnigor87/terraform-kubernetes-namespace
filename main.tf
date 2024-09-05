resource "kubernetes_namespace" "this" {
  metadata {
    name = var.name
  }
}

resource "kubernetes_resource_quota" "pod" {
  metadata {
    name = "pod-quota"
    namespace = kubernetes_namespace.this1.metadata.0.name
  }
  spec {
    hard = {
      pods = var.number_of_pods
    }
    scopes = ["BestEffort"]
  }
}


variable number_of_pods {
  default = 36
  type = number 
  description = "The number of pods to create"
}

