terraform {
    required_version = "~> 1.12.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.4.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "VishwaInfra" {
	ami = "ami-0cbbe2c6a1bb2ad63" 
	instance_type = "t2.nano"
}
