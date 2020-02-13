output "id" {
  description = "the id of the EFS File system"
  value       = "${aws_efs_file_system.efs.id}"
}

output "arn" {
  description = "the arn of the EFS file system"
  value       = "${aws_efs_file_system.efs.arn}"
}

output "dns" {
  description = "the dns name of the EFS file system"
  value       = "${aws_efs_file_system.efs.dns_name}"
}
