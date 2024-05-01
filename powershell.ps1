# Install the Azure PowerShell module
Install-Module -Name Az -AllowClobber -Scope CurrentUser

# Import the Azure PowerShell module
Import-Module Az

# Connect to your Azure account
Connect-AzAccount

# Define parameters
$resourceGroupName = "myResourceGroup"
$location = "West Europe"
$storageAccountName = "mystorageaccount"

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName Standard_GRS -Kind StorageV2