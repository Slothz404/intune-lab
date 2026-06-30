# INT-002 - Validate Microsoft Entra ID and Intune Enrollment

## Change Summary

**Requested By:** IT Manager

**Business Reason:**
Before deploying Microsoft Intune to employees, Slothz Tech Solutions must verify that Windows devices automatically join Microsoft Entra ID and enroll into Microsoft Intune.

**Risk Level:** Low

**Rollback Plan:**
Remove the test device from Microsoft Entra ID and Microsoft Intune if enrollment validation is unsuccessful.

---
## Business Scenario

Before onboarding production devices, the IT department needs to verify that the automatic enrollment process functions correctly. A test Windows 11 Enterprise virtual machine will be enrolled to confirm that Microsoft Entra ID integration and Microsoft Intune management are operating as expected.

---

## Objective

Validate that a Windows 11 Enterprise device can successfully:

- Join Microsoft Entra ID
- Automatically enroll into Microsoft Intune
- Appear as a managed corporate device
- Successfully communicate with Microsoft Intune
- Be ready for future policy and application deployments

--- 

## Environment 

| Component | Details |
|-----------|---------|
| Organization | Slothz Tech Solutions |
| Identity Platform | Microsoft Entra ID |
| Device Management | Microsoft Intune |
| Licensing | Microsoft 365 Business Premium |
| Virtualization | Oracle VirtualBox |
| Guest Operating System | Windows 11 Enterprise | 
| Test User | TestUser1 |
| Test Device | TESTUSER1 |

## Lab Notes

The initial enrollment validation was completed using Windows Enterprise.

After validating the enrollment process, the lab was standardized Windows 11 Pro for future use. Windows 11 Pro supports the Microsoft Intune features required for this project while reducing unnecessary complexity.
