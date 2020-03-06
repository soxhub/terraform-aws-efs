output "id" {
  description = "the id of the EFS File system"
  value       = aws_efs_file_system.efs.id
}

output "arn" {
  description = "the arn of the EFS file system"
  value       = aws_efs_file_system.efs.arn
}

output "dns" {
  description = "the dns name of the EFS file system"
  value       = aws_efs_file_system.efs.dns_name
}

output "mount_target_ids" {
  description = "the list of mount target ids"
  value       = [aws_efs_mount_target.efs_mount_targets.*.id]
}

output "mount_target_ips" {
  description = "the list of mount target ips"
  value       = [aws_efs_mount_target.efs_mount_targets.*.ip_address]
}

