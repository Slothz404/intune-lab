# INT-022 - Verify Windows LAPS Password Backup

## Change Summary

**Requested By:** IT Manager

**Business Reason:**
Slothz Tech Solutions wants to confirm that Windows LAPS is successfully backing up local administrator passwords to Microsoft Entra ID for corporate-managed Windows devices.

**Risk Level:** Low

**Rollback Plan:**
If password backup fails, review the Windows LAPS policy, Microsoft Entra LAPS tenant setting, device registration state, and Windows LAPS event logs.

---

## Business Scenario

Slothz Tech Solutions recently deployed a Windows LAPS policy through Microsoft Intune.

After creating the policy, IT needs to verify that the managed local administrator password is actually backed up and recoverable from the Intune admin center. This ensures the organization can securely retrieve local administrator credentials when needed for device recovery or troubleshooting.

---

## Objective

Verify that:

- The Windows LAPS policy applied successfully
- Microsoft Entra LAPS is enabled
- The local administrator password is backed up
- The password is recoverable from the Intune admin center
- Password rotation information is visible

---

## Environment

| Component | Details |
|-----------|---------|
| Organization | Slothz Tech Solutions |
| Device Management | Microsoft Intune |
| Identity Platform | Microsoft Entra ID |
| Target Device | STS-IT-LT-001 |
| LAPS Policy | EP - Account Protection - Windows LAPS |
| Managed Account | Built-in Administrator |
| Backup Location | Microsoft Entra ID |

---

## Verification Steps

The following verification steps were performed:

1. Confirmed the Windows LAPS policy deployed successfully.
2. Checked the Microsoft Entra device setting for Windows LAPS.
3. Reviewed the Windows LAPS event log on the device.
4. Opened the device record in Intune.
5. Navigated to the **Local admin password** page.
6. Confirmed that the local administrator password was available.
7. Confirmed password rotation information was visible.

---

## Evidence

### Windows LAPS Password Recovery Available

![Windows LAPS Password Recovery Available](../screenshots/INT-022-Windows-LAPS-Password-Recovery-Available.png)

---

## Verification Result

The Intune admin center displayed the local administrator password recovery pane for `STS-IT-LT-001`.

The following information was confirmed:

| Item | Result |
|------|--------|
| Account name | Administrator |
| Local administrator password | Available |
| Last password rotation | Visible |
| Next password rotation | Visible |
| Backup location | Microsoft Entra ID |

The account SID ended in `-500`, which indicates the built-in local Administrator account.

---

## Outcome

Windows LAPS password backup was verified successfully.

The local administrator password for `STS-IT-LT-001` is backed up to Microsoft Entra ID and recoverable from the Intune admin center by an authorized administrator.

---

## Lessons Learned

Creating a Windows LAPS policy is only the first step. Verification is required to confirm that the device successfully backs up the local administrator password.

This ticket also reinforced the value of checking both Intune policy status and the device-side LAPS event log when troubleshooting password backup issues.

Leaving the Administrator Account Name unconfigured allowed Windows LAPS to target the built-in local Administrator account.

---

## Skills Demonstrated

- Microsoft Intune
- Microsoft Entra ID
- Windows LAPS
- Local Administrator Password Recovery
- Device Security Verification
- Event Log Troubleshooting
- Endpoint Security
- Technical Documentation
- GitHub
