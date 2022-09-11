variable "instance_ami" {
    type = map
    default = {
	  "us-east-1" = "ami-090fa75af13c156b4"
	  "us-west-2" = "ami-0cea098ed2ac54925"
   }
}

variable "instance_type" {
    type = string
}

variable "key_name"{
    type = string
}

variable "instance_count"{
    type = string
}

variable "profile"{
    type = string
}

variable "region"{
    type = string
}

variable "environment"{
    type = string
}