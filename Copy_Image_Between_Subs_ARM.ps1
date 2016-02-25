## Copy OS Image From One Subscription to Another
#
# Select Source Subscription
Select-AzureSubscription "MySubscription-PAYG"

# Source Storage Account Information #
$sourceStorageAccountName = "testvm23rg6812"
$sourceKey = "9KvryAO/iYYQM/zHV+Oxd5Tx11wJ3jeZV4GRkV4kr9B56eQ=="
$sourceURI = "https://testvm23rg6812.blob.core.windows.net/system/Microsoft.Compute/Images/vhds/osDisk.vhd"
$sourceContext = New-AzureStorageContext –StorageAccountName $sourceStorageAccountName -StorageAccountKey $sourceKey 

# Destination Storage Account Information #
$destinationStorageAccountName = "testvm67rg3874"
$destinationKey = "9KvryAO/iY+5HurzHV+Oxd5Tx11wkkdjeZV4GRkm8kr9B56eQ=="
$destinationContext = New-AzureStorageContext –StorageAccountName $destinationStorageAccountName -StorageAccountKey $destinationKey

# Destination VHD blob #
$blobName = "New-osDisk.3c90a0e8-3ecd-4020-a086-dfdd4ef543c4.vhd" 

# Create the destination container #
$destinationContainerName = "newtestvmcon67"
New-AzureStorageContainer -Name $destinationContainerName -Context $destinationContext 

# Copy the blob # 
$blobCopy = Start-AzureStorageBlobCopy -AbsoluteUri $sourceURI -Context $sourceContext -DestBlob $blobName -DestContainer $destinationContainerName -DestContext $destinationContext
