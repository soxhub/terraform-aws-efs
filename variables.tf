variable "name" {
  description = "the unique name of the EFS file system"
}

variable "region" {
  description = "the region the EFS file system resides in"
}

variable "encrypted" {
  description = "whether the EFS file system is encrypted or not"

  default = false
}

variable "kms_key_id" {
  description = "the kms key arn for encrpyting. required if encrypted is true"

  default = ""
}

variable "performance_mode" {
  description = "either generalPurpose or maxIO"

  default = "generalPurpose"
}

variable "provisioned_throughput_in_mibps" {
  description = "the throughput measured in MiB/s when throughput_mode is provisioned"

  default = "0"
}

variable "throughput_mode" {
  description = "either bursting or provisioned"

  default = "bursting"
}

variable "subnet_ids" {
  description = "the list of subnet ids to add the efs mount target in"

  default = []
}

