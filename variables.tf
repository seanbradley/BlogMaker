# variables.tf

#ami = "ami-408c7f28"

variable "aws_region" {
    description = "The AWS region in which to deploy instances."
    default = "us-east-1"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
    default = {
        #"eu-west-1" = "ami-b1cf19c6"
        "us-east-1" = "ami-08175661" #Simpletown Django
        #"us-west-1" = "ami-3f75767a"
        #"us-west-2" = "ami-21f78e11"
    }
}
