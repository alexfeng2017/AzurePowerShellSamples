# Setup and managing Windows Azure Virtual Networks

# Windows Azure Virtual Network Config (.netcfg)
# http://msdn.microsoft.com/en-us/library/windowsazure/jj157100

# Get the available data center locations for the current subscription
Get-AzureLocation

# Create a affinity group (which will be used by Virtual Network)
$ag_name = "SoutheastAsiaAG"
$ag_desc = "Affinity group for the Southeast Asia"
$ag_label = "SEA"

New-AzureAffinityGroup -Name $ag_name -Location "Southeast Asia" -Label $ag_label -Description $ag_desc

# Update an affinity group
$ag_desc = "Updated desc"
$ag_label = "Southeast Asia"
Set-AzureAffinityGroup -Name $ag_name -Label $ag_label -Description $ag_desc

# Delete an affinity group
Remove-AzureAffinityGroup -Name "affinity_group_name"

# Create a virtual network
  # 1. Get the current virtual network configuration
	Get-AzureVNetConfig -ExportToFile "D:\Workspace\Windows Azure\myvnets.netcfg"
	
	# 2. Edit the configure file to add a vNet
	
	# 3. Use the edited .netcfg file to create the net virtual network
	Set-AzureVNetConfig -ConfigurationPath "D:\Workspace\Windows Azure\myvnets.netcfg"
	
# Delete a virtual network: Perform the similar steps to edit the .netcfg file to 
# remove the vNet and update to Windows Azure

# To remove all networks associate with your current subscription
Remove-AzureVNetConfig
