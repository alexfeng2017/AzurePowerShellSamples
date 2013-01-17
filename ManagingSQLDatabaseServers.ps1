# Managing SQL Database Servers

# List all SQL Database servers under the current subscription
Get-AzureSqlDatabaseServer

# Create a new SQL Database server
New-AzureSqlDatabaseServer -Location "Southeast Asia" -AdministratorLogin "my_login" -AdministratorLoginPassword "Passw0rd!" -Force

# Mark the newly created SQL Database server name, and refresh all servers
$sqlDatabaseServerName = "syiiwwahe7"
Get-AzureSqlDatabaseServer

# Update the firewall rule
Set-AzureSqlDatabaseServer -ServerName $sqlDatabaseServerName -AdminPassword "Passw0rd!_New" -Force

# Remove a SQL Database server, and refresh all servers
Remove-AzureSqlDatabaseServer -ServerName $sqlDatabaseServerName -Force
Get-AzureSqlDatabaseServer
