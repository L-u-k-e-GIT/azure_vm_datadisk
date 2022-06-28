########### MODULE VARIABLES
variable "MD_VMNAME" {
  description = "Virtual Machine Name where to attach disk"
  type        = string
  default     = ""
}

variable "MD_LOCATION" {
  description = "Region where deploy disk"
  type        = string
  default     = ""
}

variable "MD_RGNAME" {
  description = "Resource Group where deploy disk"
  type        = string
  default     = ""
}

variable "MD_SA_TYPE" {
  description = "Storage Account Type"
  type        = string
  default     = ""
}

variable "MD_SA_SIZE" {
  description = "Storage Account Size"
  type        = string
  default     = ""
}


variable "MD_VM_ID" {
  description = "Virtual Machine ID where to attach disk"
  type        = string
  default     = ""
}

variable "MD_DISK_NUMBER" {
  description = "Disk sequential number"
  type        = string
  default     = ""
}

variable "MD_ZONE" {
  description = "Disk sequential number"
  type        = string
  default     = ""
}



###########NAMING CONVENTION PREFIX
variable "MD_DISKDATA_PREFIX" {
  description = "Virtual Machine Disk Prefix"
  type        = string
  default     = ""
}

variable "MD_PROJECT_NAME" {
  description = "Project Name Prefix"
  type        = string
  default     = ""
}

variable "MD_SUBSCRIPTION_PREFIX" {
  description = "Subscription Prefix"
  type        = string
  default     = ""
}

variable "MD_REGION_PREFIX" {
  description = "Region Prefix"
  type        = string
  default     = ""
}



