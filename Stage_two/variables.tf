variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "yolo-commerce"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "development"
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  default     = "test_yolo_vm"
}

variable "vm_box" {
  description = "Vagrant box to use"
  type        = string
  default     = "geerlingguy/ubuntu2004"
}

variable "vm_memory" {
  description = "VM memory in MB"
  type        = number
  default     = 2048
}

variable "vm_cpus" {
  description = "Number of CPU cores"
  type        = number
  default     = 1
}

variable "vm_ip" {
  description = "VM IP address"
  type        = string
  default     = "10.0.2.15"
}

variable "frontend_port" {
  description = "Frontend application port"
  type        = number
  default     = 3000
}

variable "backend_port" {
  description = "Backend API port"
  type        = number
  default     = 5000
}

variable "mongodb_port" {
  description = "MongoDB port"
  type        = number
  default     = 27017
}

variable "repo_url" {
  description = "Application repository URL"
  type        = string
  default     = "https://github.com/BrianBravoski/yolo"
}

variable "app_directory" {
  description = "Application deployment directory"
  type        = string
  default     = "/opt/yolo"
}