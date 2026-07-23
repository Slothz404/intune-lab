# INT-024 - Deploy PowerShell Script with Intune

## Change Summary

**Requested By:** IT Manager

**Business Reason:**
Slothz Tech Solutions wants to validate that Microsoft Intune can deploy and run PowerShell scripts on corporate-managed Windows devices.

**Risk Level:** Low

**Rollback Plan:**
Delete the Intune PowerShell script policy if no longer needed. The validation folder and file can be manually removed from the endpoint.

---

## Business Scenario

Slothz Tech Solutions uses Microsoft Intune to manage corporate Windows devices.

IT needs the ability to deploy PowerShell scripts for device configuration, validation, troubleshooting, and future remediation tasks.

This ticket validates PowerShell script deployment by using Intune to create a local validation folder and text file on the corporate Windows device `STS-IT-LT-001`.

---

## Objective

Deploy a safe PowerShell script through Microsoft Intune that:

- Runs on a corporate-managed Windows device
- Runs in system context
- Creates a local validation folder
- Writes a validation text file
- Provides endpoint evidence that the script executed successfully

---

## Environment

| Component | Details |
|-----------|---------|
| Organization | Slothz Tech Solutions |
| Device Management | Microsoft Intune |
| Identity Platform | Microsoft Entra ID |
| Target Device | STS-IT-LT-001 |
| Primary User | Alex Walker |
| Assignment Group | DG-Corporate-Devices |
| Script Type | PowerShell |
| Execution Context | System |

---

## Script Details

| Setting | Configuration |
|---------|---------------|
| Script Name | PS - Create STS Lab Validation File |
| Script File | INT-024-Create-STSLab-Folder.ps1 |
| Run using logged-on credentials | No |
| Enforce script signature check | No |
| Run script in 64-bit PowerShell host | Yes |
| Assignment | DG-Corporate-Devices |

---

## PowerShell Script

```powershell
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
