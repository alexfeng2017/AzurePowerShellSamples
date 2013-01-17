# Managing SQL Database Server Firewall Rules

$sqlDatabaseServerName = "your_sql_database_server_name"

# Get all firewall rules for a server
Get-AzureSqlDatabaseServerFirewallRule -ServerName $sqlDatabaseServerName

# Add a firewall rule to allow a specific IP Address
New-AzureSqlDatabaseServerFirewallRule -ServerName $sqlDatabaseServerName -RuleName "my-development-machine" -StartIpAddress "192.168.1.1" -EndIpAddress "192.168.1.1" -Force

# Add a firewall rule to allow an IP range
New-AzureSqlDatabaseServerFirewallRule -ServerName $sqlDatabaseServerName -RuleName "my-development-team" -StartIpAddress "192.168.1.1" -EndIpAddress "192.168.1.100" -Force

# Add a firewall rule to allow all IP Address
New-AzureSqlDatabaseServerFirewallRule -ServerName $sqlDatabaseServerName -RuleName "all-ip-addresses" -StartIpAddress "0.0.0.0" -EndIpAddress "255.255.255.255" -Force 

# Refresh all firewall rules and we can see all newly added firewall rules
Get-AzureSqlDatabaseServerFirewallRule -ServerName $sqlDatabaseServerName

# Update a firewll rule in a server
Set-AzureSqlDatabaseServerFirewallRule -ServerName $sqlDatabaseServerName -RuleName my-development-machine -StartIpAddress "192.168.1.100" -EndIpAddress "192.168.1.100" -Force

# Remove a firewall rule in a server
Remove-AzureSqlDatabaseServerFirewallRule -ServerName $sqlDatabaseServerName -RuleName all-ip-addresses
