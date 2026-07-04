# INT-005 - Enforce Microsoft Defender Real-Time Protection

## Change Summary

**Requested by:** IT Manager

**Business Reason:**
Slothz Tech Solutions requires Microsoft Defender Real-time Protection to remain enabled on all corporate-managed Windows devices. This reduces the risk of malware infections by continuously monitoring files and processes for malicious activity.

**Risk Level:** Low

**Rollback Plan:** Remove the Configuration Profile assignment from the corporate device group or set the policy back to Not Configured if troubleshooting or compatibility issues require local management of Microsoft Defender.

---

## Business Scenario

The organization is beginning to standardize security settings across all managed Windows devices.

To reduce the risk of malware and ensure a consistent baseline, Microsoft Defender Real-time Protection will be enforced through Microsoft Intune using a Configuration Profile assigned to all corporate-managed devices.

---

## Objective

Deploy a Configuration Profile that:

- Keeps Microsoft Defender Real-time Protection enabled
- Prevents users from disabling Real-time Protection
- Applies to all corporate-managed devices
- Verifies successful deployment through Microsoft Intune and Windows Security

---

## Environment

| Component | Details |
|-----------|---------|
| Organization | Slothz Tech Solutions |
| Identity Platform | Microsoft Entra ID |
| Device Management | Microsoft Intune |
| Operating System | Windows 11 Pro |
| Target Group | DG-Corporate-Devices |
| Configuration Type | Settings Catalog |

## Design Decisions

This Configuration Profile was assigned to **DG-Corporate-Devices** instead of **All Devices**.

The business requirement is to protect company-managed endpoints regardless of which employee signs into them. Assigning the policy to a dedicated corporate device group limits the deployment scope to managed organizational devices while avoiding unintended application to devices outside the intended environment.

During implementation, Microsoft's Administrative Template wording required careful review. The policy **Turn off real-time protection**  must be configured as **Disabled** to ensure Microsoft Defender Real-time Protection remains enabled. Reading the policy description before deployment helped prevent an incorrect configuration.

---

## Evidence 

### Windows Security Verification

![Device Configuration Status](../screenshots/int-005-windows-security-managed-by-administrator.png)

### Configuration Profile Overview

![Device Configuration Status](../screenshots/int-005-device-configuration-succeeded.png)

### Device Configuration Status

![Device Configuration Status](../screenshots/int-005-configuration-profile-overview.png)

## Implementation

- Created a Windows Settings Catalog Configuration Profile.
- Configured the Microsoft Defender Administrative Template setting Turn off real-time protection
- Set the policy to Disabled to keep Real-time Protection enabled.
- Assigned the profile to DG-Corporate-Devices.
- Synchronized the device through Microsoft Intune and Windows.
- Verified successful policy deployment.
---
## Verification

Verification was completed using Microsoft Intune and Windows Security.

The following items were confirmed:

- The Configuration Profile successfully applied to STS-IT-LT-001.
- Device Configuration reported a Succeeded status.
- Microsoft Defender Real-time Protection remained enabled.
- Windows Security displayed "This setting is managed by your administrator."
- Users could no longer disable Microsoft Defender Real-time Protection.

## Lessons Learned

This implementation reinforced the importance of understanding Microsoft's policy wording before deployment. Initially, the Configuration Profile was configured incorrectly because the setting Turn off real-time protection was enabled, which disabled Microsoft Defender Real-time Protection. After reviewing the policy and correcting it to Disabled, the desired behavior was achieved.

This project also reinforced the value of verifying policy deployment directly on the endpoint rather than relying solely on high-level Intune reporting. Checking the device configuration status and Windows Security provided immediate confirmation that the policy had successfully applied.

## Skills Demonstrated

- Microsoft Intune
- Microsoft Defender
- Microsoft Entra ID
- Windows Security
- Configuration Profiles
- Device Groups
- Endpoint Security
- Policy Verification
- Troubleshooting
- Technical Documentation
- GitHub

## Challenges Encountered

- Initial policy behavior did not match the expected outcome.
- Investigation revealed the Administrative Template used negative wording ("Turn off real-time protection"), which required configuring the setting as Disabled to achieve the desired result.
- Verified the corrected configuration through both Windows Security and Microsoft Intune.
