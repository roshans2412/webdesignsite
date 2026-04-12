variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "cloudpixel-ai"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-south1"
}

variable "billing_account" {
  description = "GCP Billing Account ID"
  type        = string
  default     = "01C9BC-0DFCA3-04838D"
}
