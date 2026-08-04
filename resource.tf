resource "aws_instance" "ec1" {
  ami           = "ami-02b64aa047cb5edf5"
  instance_type = "t3.micro" 
  key_name      = "March_KP"
  
}
