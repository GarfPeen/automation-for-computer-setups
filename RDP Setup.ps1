# Enables RDP, disables Network Level Authentication
Write-Host "Enabling RDP/Disabling NLA"
Sleep 1

    Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "UserAuthentication" -Value 0

# Restart the RDP service to apply changes
    Restart-Service -Name TermService -Force
    Sleep 1 

# Adds "User" to remote users group
Write-Host "Adding "User" to the RDP group"
Sleep 1

    Invoke-Command -ScriptBlock {NET LOCALGROUP "Remote Desktop Users" /ADD "DOMAIN\USER"}
    Sleep 1
