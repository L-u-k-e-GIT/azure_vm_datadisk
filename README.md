# azure_vm_datadisk
Create and attach a data disk to a vm

**Example of usage**

```erlang

module "vm_data_disk" {
  
  source                 = "git::https://github.com/L-u-k-e-GIT/azure_vm_datadisk"
  
  #Naming Convention variable you can use your own or just put a variable with disk name
  MD_DISKDATA_PREFIX     = var.DISKDATA_PREFIX
  MD_PROJECT_NAME        = var.PROJECT_NAME
  MD_SUBSCRIPTION_PREFIX = var.SUBSCRIPTION_PREFIX
  MD_REGION_PREFIX       = var.REGION_PREFIX
  MD_VMNAME              = var.vmname 
  MD_DISK_NUMBER         = "1"
  
  # Disk property 
 
  MD_LOCATION            = var.LOCATION                       # Region
  MD_RGNAME              = azurerm_resource_group.rg.name     # Resource Gruoup Name
  MD_SA_TYPE             = var.SA_TYPE                        # Disk Type example "StandardSSD_LRS"
  MD_SA_SIZE             = var.DISK_SIZE                      # Disk Size in GB      
  MD_VM_ID               = var.VM_ID                          # ID of vm where to attach disk
  
}
```



# azure_vm_datadisk****``****