variable "vpc_info" {
  type = object({
    vpcname = string
    vpccidr = string
    sub_info = object({
      subname = string
      subcidr = string
      subaz = string
    }) 
  })

default = {
     vpcname = "vpc-mo"
     vpccidr = "10.0.0.0/16"
     sub_info = {
       subname = "sub-mo"
       subaz ="ap-south-1a"
       subcidr = "10.0.0.0/24"

     }
}
}