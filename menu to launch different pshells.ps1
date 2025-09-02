# Define the menu options
Write-Host "Select Laptop Build"
Write-Host "1. Basic Laptop"
Write-Host "2. Engineering Laptop"
Write-Host "3. Sales Laptop"
Write-Host "4. Desktop PC"
Write-Host "5. Exit"

# Get user input
$choice = Read-Host "Please enter your choice (1, 2, 3, 4, or 5)"

# Process choice using switch statement, all ps files must be in same folder as this menu
switch ($choice) {
    "1" {
        Write-Host "Starting Basic Laptop Setup"
        # Call or execute Script A here
        # Example: & "C:\Path\To\ScriptA.ps1"
	Sleep 2
	& $PSScriptRoot\basic.ps1
    }
    "2" {
        Write-Host "Starting Engineering Laptop Setup"
        # Call or execute Script B here
        # Example: & "C:\Path\To\ScriptB.ps1"
        Sleep 2
	& $PSScriptRoot\engineering.ps1
    }
    "3" {
        Write-Host "Starting Sales Laptop Setup"
        # Call or execute Script C here
        # Example: & "C:\Path\To\ScriptB.ps1"
        Sleep 2
	& $PSScriptRoot\sales.ps1
    }
    "4" {
        Write-Host "Starting Desktop PC Setup"
        # Call or execute Script C here
        # Example: & "C:\Path\To\ScriptB.ps1"
        Sleep 2
	& $PSScriptRoot\desktop.ps1
    }
    "5" {
        Write-Host "Terminating Script"
        Exit
    }
    Default {
        Write-Host "Invalid choice. Please enter 1, 2, 3, 4, or 5."
    }
}
