# Disables ipv6 for all adapters and lists devices effected
Write-Host "Disabling IPv6"
Sleep 1

    Get-NetAdapterBinding -ComponentID ms_tcpip6 | Disable-NetAdapterBinding -ComponentID ms_tcpip6 -PassThru
