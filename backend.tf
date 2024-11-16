terraform { 
  cloud { 
    
    organization = "fem-devops-zok" 

    workspaces { 
      name = "fem-eci-tfe" 
    } 
  } 
}
