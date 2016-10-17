output "public_subnet_ids" {
  value = ["${module.vpc.public_subnet_ids}"]
}

output "private_subnet_ids" {
  value = ["${module.vpc.private_subnet_ids}"]
}

output "bastion_host_dns" {
  value = "${module.vpc.bastion_host_dns}"
}

output "bastion_host_ip" {
  value = "${module.vpc.bastion_host_ip}"
}
