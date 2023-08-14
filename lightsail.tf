resource "aws_lightsail_instance" "example_instance" {
  name              = "VShopify"    
  availability_zone = "us-east-1a" 
  blueprint_id      = "linux_2_0"  
  bundle_id         = "2xlarge_2_0" 

  key_pair_name = "your-ssh-key-pair" 

  tags = {
    Name = "MyLightsailInstance"
  }
}
