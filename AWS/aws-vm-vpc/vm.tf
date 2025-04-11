resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "vm" {
  ami           = "ami-0d866da98d63e2b42"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.key.key_name
  subnet_id     = data.terraform_remote_state.vpc.outputs.resources_info.subnet_id
  vpc_security_group_ids = [data.terraform_remote_state.vpc.outputs.resources_info.security_group_id]

  tags =  local.tags
}