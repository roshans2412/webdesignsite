# CloudPixel AI - GCP Infrastructure
# Project: cloudpixel-ai
# DO NOT USE for bank-project-solutions

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Enable Vertex AI API
resource "google_project_service" "vertex_ai" {
  project = var.project_id
  service = "aiplatform.googleapis.com"
  disable_on_destroy = false
}

# Enable Cloud Run API
resource "google_project_service" "cloud_run" {
  project = var.project_id
  service = "run.googleapis.com"
  disable_on_destroy = false
}

# Enable Cloud Storage API
resource "google_project_service" "storage" {
  project = var.project_id
  service = "storage.googleapis.com"
  disable_on_destroy = false
}

# Storage Bucket - Agent Knowledge Base
resource "google_storage_bucket" "agent_kb" {
  name     = "${var.project_id}-agent-kb"
  location = var.region
  force_destroy = true

  uniform_bucket_level_access = true
}
