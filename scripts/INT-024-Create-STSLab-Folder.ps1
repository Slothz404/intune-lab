$FolderPath = "C:\STS-Lab"
$FilePath = "$FolderPath\Intune-Script-Validation.txt"

if (!(Test-Path -Path $FolderPath)) {
    New-Item -Path $FolderPath -ItemType Directory -Force | Out-Null
}

$Content = @"
Slothz Tech Solutions - Intune Script Validation

Device Name: $env:COMPUTERNAME
Run Context: $([System.Security.Principal.WindowsIdentity]::GetCurrent().Name)
Script Ran At: $(Get-Date)

This file confirms that an Intune PowerShell script successfully ran on this device.
"@

$Content | Out-File -FilePath $FilePath -Encoding UTF8 -Force