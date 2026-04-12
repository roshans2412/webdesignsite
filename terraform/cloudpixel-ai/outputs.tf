output "project_id" {
  description = "CloudPixel AI Project ID"
  value       = var.project_id
}

output "region" {
  description = "GCP Region"
  value       = var.region
}

output "agent_kb_bucket" {
  description = "Agent Knowledge Base Bucket"
  value       = google_storage_bucket.agent_kb.name
}

output "vertex_ai_status" {
  description = "Vertex AI API Status"
  value       = google_project_service.vertex_ai.service
}
