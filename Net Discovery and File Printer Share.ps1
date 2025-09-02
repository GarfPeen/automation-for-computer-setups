# Enables Network Discovery and File and Printer Sharing for domain network
Write-Host "Enabling Network Discovery/File and Printer Sharing"
Sleep 1

    Set-NetFirewallRule -DisplayGroup "Network Discovery" -Enabled True -Profile Domain
    Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True -Profile Domain
