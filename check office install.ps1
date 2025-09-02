# Check if Office 365 is installed
Write-Host "Checking for Office installation"
Sleep 1

    $Keys = Get-Item -Path HKLM:\Software\RegisteredApplications | Select-Object -ExpandProperty property
    $Product = $Keys | Where-Object {$_ -Match "Excel.Application."}
    $OfficeVersion = ($Product.Replace("Excel.Application.","")+".0")
    Write-Host "Office version $OfficeVersion is installed"
    Sleep 1