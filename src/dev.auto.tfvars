resource_group = {
        resource_group1 = {
            name = "NilankarRg"
            location = "West Europe" 
        }

}


vnets ={
     vnet1 = {
        name                = "prodVnet"
        location            = "West Europe"
        resource_group_name = "NilankarRg"
        address_space       = ["192.168.0.0/16"]
     }
}


subnets = {
    Subnet1 = {
        name                 = "example-subnet"
        resource_group_name  = "NilankarRg"
        virtual_network_name = "prodVnet"
        address_prefixes     = ["192.168.1.0/24"]
    }

}