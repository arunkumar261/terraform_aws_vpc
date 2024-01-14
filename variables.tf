#for vpc
variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  type = bool
  default = true
}
variable "common_tags" {
  type = map
 default = {}
}

variable "vpc_tags" {
  type = map
 default = {}
}

variable "project_name" {
  default = "roboshop"
}
variable "environment" {
  default = "dev"
}

#for igw
variable "igw_tags" {
    type = map
  default = {}
}
#for public subnet
variable "public_subnets_cidr" {
  type = list
    validation {
      condition = length(var.public_subnets_cidr)==2
      error_message = "pls give 2 valid public sunbet cidr s"
    }
}
variable "public_subnets_tags" {
  default = {}
}


#for private subnet
variable "private_subnets_cidr" {
  type = list
    validation {
      condition = length(var.private_subnets_cidr)==2
      error_message = "pls give 2 valid private sunbet cidr s"
    }
}
variable "private_subnets_tags" {
  default = {}
}


#for database subnet
variable "database_subnets_cidr" {
  type = list
    validation {
      condition = length(var.database_subnets_cidr)==2
      error_message = "pls give 2 valid database sunbet cidr s"
    }
}
variable "database_subnets_tags" {
  default = {}
}


#nat gateway

variable "nat_gateway_tags" {
  default = {}
}

#for public route
variable "public_route_table_tags" {
  default = {}
}

#for private route
variable "private_route_table_tags" {
  default = {}
}
#for database  route
variable "database_route_table_tags" {
  default = {}
}



variable "is_peering_required" {
    type = bool
  default = false
}


variable "acceptor_vpc_id" {
  type = string
  default = ""
}


variable "vpc_peering_tags" {
  default = {}
}