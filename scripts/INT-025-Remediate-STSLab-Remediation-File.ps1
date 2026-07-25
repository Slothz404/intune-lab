$FolderPath = "C:\STS-Lab"
$FilePath = "$FolderPath\Remediation-Validation.txt"

if (!(Test-Path -Path $FolderPath)) {
    New-Item -Path $FolderPath -ItemType Directory -Force | Out-Null
}

$Content = @"
Slothz Tech Solutions - Intune Remediation Validation

Device Name: $env:COMPUTERNAME
Run Context: $([System.Security.Principal.WindowsIdentity]::GetCurrent().Name)
Remediated At: $(Get-Date)

This file confirms that an Intune remediation detected a missing file and fixed it.
"@

$Content | Out-File -FilePath $FilePath -Encoding UTF8 -Force

Write-Output "Remediation complete: validation file created."
exit 0