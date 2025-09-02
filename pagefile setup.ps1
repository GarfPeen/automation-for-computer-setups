# Sets page file to min 3000 max 3000, disables Windows management
Write-Host "Setting Page File Size"

    # Disable automatic page file management
    $sys = Get-WmiObject Win32_ComputerSystem -EnableAllPrivileges
    $sys.AutomaticManagedPagefile = $false
    $sys.Put()

    # Get the page file setting for C:\pagefile.sys
    $pagefile = Get-WmiObject -Query "Select * From Win32_PageFileSetting Where Name like '%pagefile.sys'"

    # Set the initial and maximum size (3GB for Basic Laptop)
    $pagefile.InitialSize = 3000
    $pagefile.MaximumSize = 3000

    # Apply the changes
    $pagefile.Put()

    Write-Host "Page file size set to 3000mb."
    Sleep 1
