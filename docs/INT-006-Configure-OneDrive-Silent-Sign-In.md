# INT-006 - Configure OneDrive Silent Sign-In

## Change Summary

**Requested By:** IT Manager

**Business Reason:**
Slothz Tech Solutions wants to improve the user onboarding experience by reducing credential prompts during OneDrive setup. Configuring OneDrive silent sign-in allows users to sign in with their Windows credentials, making it easier for employees to begin using OneDrive for company file access.

**Risk Level:** Low

**Rollback Plan:**
Remove the policy assignment, set the OneDrive setting back to Not Configured, or delete the Configuration Profile if the deployment causes issues.

---

## Business Scenario

Slothz Tech Solutions uses OneDrive as the standard cloud file sync solution for employee file access. During device onboarding, users may be prompted to sign in to OneDrive manually, which can create confusion and slow down setup.

To improve the onboarding experience, IT will configure OneDrive silent sign-in through Microsoft Intune. This allows users to sign in to the OneDrive sync app using their Windows credentials, reducing manual sign-in steps and helping users access company files more quickly.

---

## Objective

Configure a Microsoft Intune policy that:

- Silently signs users into the OneDrive sync app using their Windows credentials
- Reduces manual setup during new device onboarding
- Applies to the intended user scope
- Verifies that OneDrive recognizes the signed-in Microsoft 365 user

---

## Environment

| Component | Details |
|-----------|---------|
| Organization | Slothz Tech Solutions |
| Identity Platform | Microsoft Entra ID |
| Device Management | Microsoft Intune |
| Licensing | Microsoft 365 Business Premium |
| Operating System | Windows 11 Pro |
| Target User | Alex Walker |
| Device Name | STS-IT-LT-001 |
| Configuration Type | Settings Catalog |
| Policy Name | CP - Productivity - OneDrive Silent Sign-In |

---

## Design Decisions

This policy was assigned to users instead of devices because OneDrive sign-in is tied to the employee account. The goal is for the OneDrive sign-in experience to follow the user when they sign in to a corporate-managed Windows device.

In this lab, the policy was assigned to **All Users**. This was acceptable for the small lab environment because the tenant only contains controlled test users. In a larger production environment, a dedicated employee group such as **SG-All-Employees** would provide better targeting and reduce the chance of applying the policy to service accounts, test accounts, or users outside the intended scope.

Assigning this policy to users supports a smoother onboarding process by reducing manual credential prompts and helping employees access OneDrive with less setup friction.

---

## Evidence

The following screenshots were captured during implementation.

### OneDrive Sign-In Verification

![OneDrive Sign-In Verification](../screenshots/INT-006-OneDrive-SignIn-Verification.png)

### OneDrive Silent Sign-In Configuration

![OneDrive Silent Sign-In Configuration](../screenshots/INT-006-OneDrive-Silent-Config.png)

---

## Implementation

The following tasks were completed to configure OneDrive silent sign-in:

- Created a Windows Settings Catalog Configuration Profile in Microsoft Intune.
- Named the profile **CP - Productivity - OneDrive Silent Sign-In**.
- Configured the OneDrive setting **Silently sign in users to the OneDrive sync app with their Windows credentials**.
- Set the policy to **Enabled**.
- Assigned the policy to the intended user scope.
- Synchronized the device to speed up policy deployment.
- Tested OneDrive sign-in behavior using Alex Walker on **STS-IT-LT-001**.

---

## Verification

Verification was completed using Microsoft Intune and the Windows 11 endpoint.

The following items were confirmed:

- The OneDrive Configuration Profile was created successfully.
- The policy reported a successful deployment status in Microsoft Intune.
- OneDrive recognized Alex Walker’s Microsoft 365 account.
- Alex Walker’s email address appeared during OneDrive setup.
- OneDrive did not require the user to manually enter the account password.
- OneDrive setup continued as expected after selecting the user account.

---

## Lessons Learned

Silent sign-in does not always mean that the user sees no setup screen. In this case, OneDrive used the signed-in Windows credentials, but the user still needed to complete part of the OneDrive setup experience.

This ticket reinforced the importance of understanding the expected behavior of a policy before assuming that it failed. It also showed why policy names and descriptions need to match the settings being configured. The original profile name and description did not match the OneDrive setting, which made the configuration harder to understand during review.

---

## Skills Demonstrated

- Microsoft Intune
- Microsoft Entra ID
- OneDrive for Business
- Settings Catalog
- User-Based Policy Assignment
- Windows 11 Endpoint Management
- Policy Verification
- Technical Documentation
- GitHub

---

## Challenges Encountered

- The original policy name and description did not match the OneDrive setting being configured.
- The expected behavior of OneDrive silent sign-in was initially misunderstood.
- Verification required comparing the observed endpoint behavior against the intended policy behavior.
