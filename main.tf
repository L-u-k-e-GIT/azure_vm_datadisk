

########## DATA DISK CREATION ###########
resource "azurerm_managed_disk" "managed_disk" {
  name                 = "${var.MD_DISKDATA_PREFIX}-${var.MD_PROJECT_NAME}-${var.MD_SUBSCRIPTION_PREFIX}-${var.MD_REGION_PREFIX}-${var.MD_VMNAME}-${var.MD_DISK_NUMBER}"
  location             = var.MD_LOCATION
  resource_group_name  = var.MD_RGNAME
  storage_account_type = var.MD_SA_TYPE
  create_option        = "Empty"
  disk_size_gb         = var.MD_SA_SIZE
  zone                 = var.MD_ZONE
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_virtual_machine_data_disk_attachment" "managed_disk_attach" {
  managed_disk_id    = azurerm_managed_disk.managed_disk.id
  virtual_machine_id = var.MD_VM_ID
  lun                = var.MD_DISK_NUMBER
  caching            = "None"
}


