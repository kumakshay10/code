vnets={
    vnet1 = {
    name                = "akshayvnet"
    location            = "East Asia"
    resource_group_name = "akrg"
    address_space       = ["10.0.0.0/16"]
    subnets = {
        snet1 ={
            name = "frontend_subnet"
            address_prefixes = ["10.0.1.0/24"]
        }

        snet2={
            name = "backend_subnet"
            address_prefixes=["10.0.2.0/24"]
        }
    }
        
  }

   vnet2 = {
    name                = "akshayvnet2"
    location            = "East Asia"
    resource_group_name = "akrg"
    address_space       = ["10.0.0.0/16"]
    subnets = {
        snet1 ={
            name = "frontend_subnet"
            address_prefixes = ["10.0.1.0/24"]
        }

        snet2={
            name = "backend_subnet"
            address_prefixes=["10.0.2.0/24"]
        }
    }
        
  }
    }