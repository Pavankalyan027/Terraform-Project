variable "ami" {
  default = "ami-0199ac7c9fbf9ed83"
}

variable "instancetype" {
  default = "t3.micro"
}

variable "instancename" {
  default = "devOpserver"
  
}

variable "cidr" {
  default =  "10.0.0.0/16"
  
}

variable "vpcname" {
  default = "myvpc"
  
}