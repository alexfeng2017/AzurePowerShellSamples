# Managing Storage Accounts

# List all storage accounts
Get-AzureStorageAccount

# Specify a existing storage accont name
$storageAccount = "azuresupport"

# Get a speicic storage account
Get-AzureStorageAccount -StorageAccountName $storageAccount

# Format the output with Format-Table
Get-AzureStorageAccount | Format-Table -Property StorageAccountName, Location, AffinityGroup -AutoSize

# Get a specific storage accont primary and secondary keys
Get-AzureStorageKey -StorageAccountName $storageAccount

# Create a new Azure storage account
$newStorageAccountNmae = "azuresupport101"
New-AzureStorageAccount -StorageAccountName $newStorageAccountNmae -Location "Southeast Asia" -Description "This is a storage acount created via PowerShll cmdlet" -Label "Crated via PowerShell"

# Regenerate Primary or Secondary key for a specific storage account
New-AzureStorageKey -KeyType Secondary -StorageAccountName $newStorageAccountNmae

# Update storage account Description and Lebel properties
Set-AzureStorageAccount -StorageAccountName $newStorageAccountNmae -Description "A new description updated from PS" -Label "A new label set via PS"

# Remove a storage account
Remove-AzureStorageAccount -StorageAccountName $newStorageAccountNmae
