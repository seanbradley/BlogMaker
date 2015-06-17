# outputs.tf

# Prints the ELB's address to a text file...

output "address" {
  value = "Instances: ${element(aws_instance.web.*.id, 0)}"
}
