# main.tf

# First we specify the cloud provider...

provider "aws" {
    region = "${var.aws_region}"
}

# Now we specify required servers--aka "resources".

# A resource is specified by two params: TYPE (e.g., "aws_elb") 
# and NAME (e.g., "web"). The combo of TYPE and NAME must be unique 
# for each resource. Config for the resource is inside the curly braces.
# See Terraform docs for specific config possibilities per resource type.

# The first resource specified is the Elastic Load Balancer.
# https://www.terraform.io/docs/providers/aws/r/elb.html

resource "aws_elb" "web" {

    # A tag for the ELB's name...
    name = "blogmaker-elb"

    # Set it up in same availability zone as we intend for web app servers...
    availability_zones = ["${aws_instance.web.*.availability_zone}"]

    listener {
        instance_port = 80
        instance_protocol = "http"
        lb_port = 80
        lb_protocol = "http"
    }

/*
    health_check {
        healthy_threshold = 2
        unhealthy_threshold = 2
        timeout = 3
        target = "HTTP:80/"
        interval = 30
    }
*/

    # The instances are registered automatically...
    instances = ["${aws_instance.web.*.id}"]
}


# Now we specify the web app servers.

# We'll start with just one app server behind the ELB 
# (to save cost till more machines are required by client's traffic)...

resource "aws_instance" "web" {
    instance_type = "t1.micro"
    ami = "${lookup(var.aws_amis, var.aws_region)}"
    tags {
        Name = "BlogMaker"
    }

    # increment number of instances to create here
    count = 1
  
}
