# INT-004 - Onboard the First Corporate Device

## Change Summary

**Requested By:** IT Manager

**Business Reason:**
A newly hired Endpoint Administrator requires a company-managed Windows device that complies with organizational standards and can be managed through Microsoft Intune.

**Risk Level:** Low

**Rollback Plan:**
Remove the device from Microsoft Entra ID and Microsoft Intune if enrollment fails, then repeat the provisioning process.

---

## Business Scenario

Alex Walker has joined the IT department at Slothz Tech Solutions as an Endpoint Administrator.

To ensure the device meets company standards, IT will provision a new Windows 11 virtual machine, join it to Microsoft Entra ID, automatically enroll it into Microsoft Intune, and verify successful management before issuing it to the employee.

---

## Objective

Provision a corporate Windows device that can successfully:

- Join Microsoft Entra ID
- Automatically enroll into Microsoft Intune
- Be assigned to Alex Walker
- Report a healthy management status
- Receive future policies and applications

---

## Environment

| Component | Details |
|-----------|---------|
| Organization | Slothz Tech Solutions |
| Identity Platform | Microsoft Entra ID |
| Device Management | Microsoft Intune |
| Licensing | Microsoft 365 Business Premium | 
| Virtualization | Oracle VirtualBox |
| Guest Operating System | Windows 11 Pro |
| User | Alex Walker |
| Device Name | STS-IT-LT-001 |

---

## Design Decisions

A new corporate device was created instead of continuing to use the original test device. This allowed the environment to follow the naming standards established by Slothz Tech Solutions while separating the initial proof-of-concept from the production-style environment.

Creating a new device also provided additional hands-on experience with the Windows deployment and Microsoft Intune enrollment process. Repeating the onboarding process reinforced the steps required to provision a managed Windows device and increased confidence in performing future deployments.

## Evidence

The following screenshots were captured during implementation:

- Windows "Access work or school" showing organizational connection
- Microsoft Entra ID device overview
- Microsoft Intune device overview

## Implementation

The following tasks were completed to onboard the first corporate device:

- Created a new Windows 11 Pro virtual machine using Oracle VirtualBox.
- Applied the company device naming standard by naming the device **STS-IT-LT-001**.
- Signed in using the Microsoft 365 account for Alex Walker.
- Successfully joined the device to Microsoft Entra ID.
- Automatically enrolled the device into Microsoft Intune through Microsoft Entra automatic enrollment.
- Confirmed that the device was assigned to Alex Walker.

---

## Verification

Verification was completed using Windows 11, Microsoft Entra ID, and Microsoft Intune.

The following items were confirmed:

- STS-IT-LT-001 successfully joined Microsoft Entra ID.
- The device automatically enrolled into Microsoft Intune.
- Alex Walker was assigned as the Primary User.
- The device was identified as a Corporate-owned device in Microsoft Intune.
- The device reported a Compliant status.
- Successful communication between the device and Microsoft Intune was verified through the latest device check-in.

## Lessons Learned

Onboarding Alex Walker felt much more realistic than enrolling the original TestUser1 account because the process represented a real employee instead of a temporary test user. This made the onboarding process feel more like a production environment and reinforced the importance of building a realistic lab.

Repeating the enrollment process helped me better understand the relationship between the Microsoft 365 Admin Center, Microsoft Entra ID, and Microsoft Intune. I became more comfortable knowing which portal is responsible for user management, identity management, and device management.

I also learned that once a user account is properly created and licensed, signing in during the Windows Out-of-Box Experience (OOBE) allows Microsoft Entra ID and Microsoft Intune to automatically complete most of the enrollment process. This made the onboarding workflow much easier to understand than it initially seemed.

## Skills Demonstrated

- Microsoft Intune
- Microsoft Entra ID
- Microsoft 365 Administration
- Windows 11 Provisioning
- Microsoft Entra Join
- Automatic MDM Enrollment
- Endpoint Management
- Technical Documentation
- GitHub
