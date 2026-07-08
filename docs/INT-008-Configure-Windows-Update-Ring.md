# INT-008 - Configure Windows Update Ring

## Change Summary

**Requested By:** IT Manager

**Business Reason:**
Slothz Tech Solutions needs a controlled Windows update strategy for corporate-managed devices to ensure security updates are installed consistently while reducing user disruption.

**Risk Level:** Low

**Rollback Plan:**
Remove the update ring assignment from the corporate device group or modify the update ring settings if the policy causes unexpected update behavior.

---

## Business Scenario

Slothz Tech Solutions wants corporate Windows devices to receive Microsoft updates consistently without relying on users to manually manage update behavior.

A Windows Update Ring will be configured in Microsoft Intune and assigned to corporate-managed devices to control update deferrals, active hours, restart behavior, and user update options.

---

## Objective

Configure a Windows Update Ring that:

- Applies to corporate-managed Windows devices
- Allows Microsoft product updates
- Allows Windows driver updates
- Defers quality updates briefly
- Defers feature updates longer than quality updates
- Prevents users from pausing updates
- Allows users to manually check for updates
- Verifies that Windows Update settings are managed by the organization

---

## Environment

| Component | Details |
|-----------|---------|
| Organization | Slothz Tech Solutions |
| Device Management | Microsoft Intune |
| Identity Platform | Microsoft Entra ID |
| Operating System | Windows 11 Pro |
| Target Device | STS-IT-LT-001 |
| Target Group | DG-Corporate-Devices |
| Policy Type | Windows Update Ring |
| Policy Name | WUR - Corporate Windows Update Ring |

---

## Design Decisions

This policy was assigned to **DG-Corporate-Devices** because Windows update behavior should apply to corporate-managed devices regardless of which user signs in.

Quality updates were deferred for **3 days** to provide a short buffer before deployment. Feature updates were deferred for **30 days** because feature updates are larger operating system changes and should be delayed longer than monthly quality updates.

Users were blocked from pausing Windows updates to ensure corporate devices continue receiving required security updates. Users were still allowed to manually check for updates to support troubleshooting.

---

## Key Settings

| Setting | Value |
|---------|-------|
| Microsoft product updates | Allow |
| Windows drivers | Allow |
| Quality update deferral period | 3 days |
| Feature update deferral period | 30 days |
| Upgrade Windows 10 devices to latest Windows 11 release | No |
| Feature update uninstall period | 10 days |
| Pre-release builds | Not configured |
| Automatic update behavior | Auto install at maintenance time |
| Active hours | 8 AM - 5 PM |
| Pause Windows updates | Disabled |
| Check for Windows updates | Enabled |
| Notification level | Default Windows Update notifications |
| Deadline settings | Not configured |

---

## Evidence

### Windows Update Managed Settings

![Windows Update Managed Settings](../screenshots/int-008-windows-update-managed-settings.png)

### Update Ring Device Status

![Update Ring Device Status](../screenshots/int-008-update-ring-device-status-success.png)

---

## Verification

Verification was completed using Microsoft Intune and the Windows 11 endpoint.

The following items were confirmed:

- The update ring was created successfully.
- The policy was assigned to **DG-Corporate-Devices**.
- **STS-IT-LT-001** reported a successful policy status.
- Windows Update settings displayed organization-managed behavior.
- Users could not pause Windows updates.
- Users could still manually check for updates.

---

## Lessons Learned

This ticket reinforced the difference between update deferrals and update deadlines.

Deferrals control when updates are first offered to a device. Deadline settings control how long a device has to complete installation after updates are offered.

During testing, deadline-related settings initially returned errors while the rest of the update ring applied successfully. Reviewing setting-level status made it possible to identify that only the deadline settings were failing. The deadline settings were removed to keep the baseline update ring stable.

---

## Skills Demonstrated

- Microsoft Intune
- Windows Update for Business
- Update Rings
- Device-Based Policy Assignment
- Windows 11 Endpoint Management
- Policy Verification
- Troubleshooting
- Technical Documentation
- GitHub
