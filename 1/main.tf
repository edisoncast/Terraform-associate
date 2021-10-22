provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "vm" {
    ami = "YOURAMIID"
    subnet_id = "YOURSUBNETID" 
    instance_type = "t3.micro"
    tags = {
      "Name" = "my-first-tf-node"
    }
}
