provider "aws" {
  region = "us-east-1"
}


###### you need to get VPC ID data from VPC workspace and use it to create DNS resources ####

// HINT:

# 1 use data terraform_remote_state {} to get data from VPC workspace

# 2 use locals{} to transform the data and insert it to dns_entry variable
#   - output data type from VPC workspaces is map. you can use function values to get value from this map
#   - to insert data to dns_entry variable, you can use for loop + merge + conditional expressions

# 3 use dns module from TF cloud registry to create dns resources based on data from #2
