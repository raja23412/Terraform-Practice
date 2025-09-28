 module "vpcmodule" {
   source = "C:/Users/Asus/Downloads/terra-modules/modules/vpc/"
   vpc_info = {
      vpcname = "modulevpc"
     vpccidr = "192.168.0.0/16"
   }
   
 }
 module "submodule" {
   
   source = "C:/Users/Asus/Downloads/terra-modules/modules/vpc/"
   vpc_id = module.vpcmodule.vpc_id
   vpc_info = {
    sub_info = {
      subcidr = "192.168.0.0/24"
      subaz = "ap-south-1a"
      subname = "modulesub"
   }
 }
 }