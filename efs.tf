resource "aws_efs_file_system" "efs" {
  creation_token                  = var.name
  encrypted                       = var.encrypted
  kms_key_id                      = var.kms_key_id
  performance_mode                = var.performance_mode
  provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps
  throughput_mode                 = var.throughput_mode
}

resource "aws_efs_mount_target" "efs_mount_targets" {
  count = local.region-to-az-count-map[var.region]

  file_system_id = aws_efs_file_system.efs.id
  subnet_id      = var.subnet_ids[count.index]
}

