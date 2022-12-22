resource "aws_key_pair" "docker" {
  key_name   = "aws-docker"
  public_key = file("./aws-docker.pub")
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # owner Ubuntu-AWS us-east-2
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "c4.large"
  key_name               = aws_key_pair.docker.key_name
  vpc_security_group_ids = ["${aws_security_group.SG_Padrao.id}"]


  tags = {
    Name = "Jenkins"
    Lab  = "Estudo-Jenkins"
    Iac  = "Terraform"
  }
}

