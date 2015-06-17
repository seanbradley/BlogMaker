#blogmaker
####Terraform script and configuration files.


###ABOUT BLOGMAKER

BlogMaker is a simple cloud configuration utility leveraging Terraform by Hashicorp. You can learn more about Terraform here:

<https://www.terraform.io/>

Examples of a variety of architectures that can be spun up with Terraform can be found in Hashicorp's repo here:

<https://github.com/hashicorp/terraform/tree/master/examples>

###TECHNOLOGY STACK
This example, here, specifies AWS as the provider, and instantiates a given number (default = 1) of EC2 instance(s) (Ubuntu Precise 12.04-i386), a single SQL database, and an Elastic Load Balancer (ELB). The goal: rapid spin-up of brand-spankin' new, fully-featured, skinnable, and potentially scalable websites in the cloud suitable for the average small business client.

###INSTALLATION
1) Download and unzip Terraform's zipped installation files from the Hashicorp site into your chosen directory

2) Assuming you're working on Linux, add Terraform's binaries to your path, like so...

    $pwd
    /home/seanbradley/Projects/tf
    $export PATH=/home/seanbradley/Projects/tf:$PATH

3) Check to see if it's installed correctly by entering the following in the CLI...

    $terraform

4) Clone this repo into and tweak per your needs.

5) You need an AWS account to make this work, of course. Once you have an AWS SECRET_KEY and AWS ACCESS_KEY, you'll need to create a separate terraform.tfvars file to contain these variables, like so:

    $cd ~/blogmaker
    $touch terraform.tfvars

Edit terraform.tvars to include...

    access_key = "your_access_key_here"
    secret_key = "your_secret_key_here"
    
Make sure to include terraform.tfvars in your .gitignore file. Secret keys should not be included in version control.







------------------------------------------------------------------------

###LICENSE AND CONTACT INFO

Copyright © 2015 by Sean Bradley.

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDER AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

If you're a developer interested in checking out the site, or interested in using a fork of blogmaker for commercial purposes, please kindly give me a heads-up at:

sean@blogblimp.com
