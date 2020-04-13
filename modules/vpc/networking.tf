resource "aws_vpc" "svunnam-main" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "${var.tenancy}"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "svunnam-public" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.subnet_cidr}"
  tags = {
    Name = "public-subnet"
  }
}

output "vpc_id" {
  value = "${aws_vpc.svunnam-main.id}"
}

output "subnet_id" {
  value = "${aws_subnet.svunnam-public.id}"
}
