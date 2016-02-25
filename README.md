# Copy generalized OS Image From One Subscription to Another in Azure

> **Note:** 
> [Generalizing linux virtual machine](https://azure.microsoft.com/en-us/documentation/articles/virtual-machines-linux-capture-image-resource-manager/)
 
### Script Usage

Script is very simple for usage, you should update only few variables suiting your needs. *e.g.*

##### *Source Subscription*

- **Storage Account Name** - `$sourceStorageAccountName = "testvm23rg6812"`
- **Key of Storage Account** - `$sourceKey = "9KvryAO/iYYQM/zHV+Oxd5Tx11wJ3jeZV4GRkV4kr9B56eQ=="`
- **URI of VHD** 
  - `$sourceURI = "https://testvm23rg6812.blob.core.windows.net/system/Microsoft.Compute/Images/vhds/osDisk.vhd"`

##### *Destination Subscription*
- **Storage Account Name** - `$destinationStorageAccountName = "testvm67rg3874"`
- **Key of Storage Account** - `$destinationKey = "9KvryAO/iY+5HurzHV+Oxd5Tx11wkkdjeZV4GRkm8kr9B56eQ=="`
- **New VHD Blob Name** - `$blobName = "New-osDisk.3c90a0e8-3ecd-4020-a086-dfdd4ef543c4.vhd"`
- **Container Name** - `$destinationContainerName = "newtestvmcon67"`

> **Note:** 
> This script works with Azure Powershell version 0.9.8

