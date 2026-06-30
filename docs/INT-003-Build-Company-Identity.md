# INT-003 - Build the Company Identity

## Change Summary

**Requested By:** IT Manager

**Business Reason:**
Slothz Tech Solutions is preparing to deploy Microsoft Intune across the organization. Before devices can be managed, a standardized identity structure must be established using Microsoft Entra ID.

**Risk Level:** Low

**Rollback Plan:**
Delete the created users and security groups if the deployment is unsuccessful.

---

## Business Scenario

As Slothz Tech Solutions grows, manually assigning applications and policies to individual users is no longer practical.

To simplify administration and prepare for Microsoft Intune deployments, department-based security groups and employee identities will be created within Microsoft Entra ID.

This provides a scalable foundation for future application deployments, configuration profiles, compliance policies, and device management.

---

## Objective

Create the initial organizational identity structure for Slothz Tech Solutions by:

- Creating department security groups
- Creating the first employee account
- Assigning Microsoft 365 licensing
- Adding users to the department security groups
- Preparing the environment for corporate device onboarding

---

## Environment

| Component | Details |
|-----------|---------|
| Identity Platform | Microsoft Entra ID |
| Device Management | Microsoft Microsoft Intune |
| Licensing | Microsoft 365 Business Premium |
| Organization | Slothz Tech Solutions |

---

## Design Decisions


Department security groups were created before deploying devices to simplify management as the company grows. Instead of assigning applications, policies, and configurations to each user individually, they can be assigned to a security group. Any employee added to the appropriate group automatically receives the resources they need.

Security groups also provide a clear organizational structure by identifying which department an employee belongs to, such as IT, Human Resources, Finance, Engineering, or Sales. This makes the environment easier to manage and scale as additional employees and devices are added.

## Implementation

The following tasks were completed to establish the company's identity within Microsoft Entra ID:

- Created the following department security groups:
   - SG-IT-Users
   - SG-HR-Users
   - SG-Finance-Users
   - SG-Engineering-Users
   - SG-Sales-Users

- Created the first IT employee
  - Alex Walker
  - Department: IT
  - Job Title: Endpoint Administrator

- Assigned a Microsoft 365 business Premium license to Alex Walker.

- Added Alex Walker to the SG-IT-Users security group.

- Added the Senior Systems Administrator account (Slothz) to the SG-IT-Users security group.

## Verification

Verification was completed using the Microsoft Entra admin center.

The following items were confirmed:

- Department security groups were successfully created.
- Alex Walker appears as an active licensed user.
- Alex walker is a member of the SG-IT-Users security group.
- The Senior Systems Administrator account is also a member of SG-IT-Users.

## Lessons Learned

This ticket helped reinforce the importance of building a strong identity structure before deploying devices. Creating users and assigning them to security groups was much simpler than I originally expected, and the Microsoft Entra ID interface became much less overwhelming after working through the process.

I also became more comfortable using GitHub to document my work. While organizing technical documentation is still something I need to practice, documenting each completed task is helping me better understand both GitHub and the technologies I'm working with.

One of the most valuable lessons was understanding that security groups do not grant administrative privileges. A user can belong to the same security group as an administrator without receiving administrative permissions. Security groups exist to simplify management by assigning applications, policies, and configurations to collections of users instead of configuring each user individually.

## Skills Demonstrated

- Microsoft Entra ID
- Microsoft Intune
- Identity Management
- Security Groups
- Microsoft 365 Administration
- Technical Documentation
- GitHub
