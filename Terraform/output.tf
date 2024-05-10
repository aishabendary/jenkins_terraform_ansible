output "RDS_HOSTNAME" {
  description = "Hostname of the RDS instance"
  value       = aws_db_instance.my_rds.endpoint
}

output "RDS_USERNAME" {
  description = "Username of the RDS instance"
  value       = aws_db_instance.my_rds.username
}

# output "RDS_PASSWORD" {
#   description = "Password of the RDS instance"
#   sensitive   = true
#   value       = aws_db_instance.my_rds.password
# }

output "RDS_PASSWORD_FILE" {
  description = "Path to the file containing the password of the RDS instance"
  value       = local_file.rds_password_file.filename
}

output "RDS_PORT" {
  description = "Port of the RDS instance"
  value       = aws_db_instance.my_rds.port
}

data "aws_elasticache_cluster" "redis_cluster" {
  cluster_id = aws_elasticache_cluster.redis_cluster_1.id
}

output "REDIS_HOSTNAME" {
  description = "Hostname of the ElastiCache cluster"
  value       = data.aws_elasticache_cluster.redis_cluster.cache_nodes[0].address
}

output "REDIS_PORT" {
  description = "Port of the ElastiCache cluster"
  value       = aws_elasticache_cluster.redis_cluster_1.port
}

