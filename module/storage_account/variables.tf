variable "sa_prefix" { type = string }
variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "account_tier" { 
    type = string 
    default = "Standard" 
    }
variable "replication_type" { 
    type = string 
default = "LRS" 
}
variable "account_kind" { 
    type = string 
default = "StorageV2" 
}
variable "tags" { 
    type = map(string) 
    default = {} 
    }