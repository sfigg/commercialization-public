---
title: Windows Defender Credential Guard hardware requirements
description: Provides guidance on what an OEM should do to enable Credential Guard
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Defender Credential Guard hardware requirements

Windows Defender Credential Guard uses virtualization-based security to isolate and protect secrets (e.g., NTLM password hashes and Kerberos ticket-granting tickets) to block pass-the-hash or pass-the-ticket(PtH) attacks. When Windows Defender Credential Guard is enabled, NTLMv1, MS-CHAPv2, Digest, and CredSSP cannot use the signed-in credentials. Thus, single sign-on does not work with these protocols. However, applications can prompt for credentials or use credentials stored in the Windows Vault which are not protected by Windows Defender Credential Guard with any of these protocols. 

It is strongly recommended that valuable credentials, such as the sign-in credentials, not be used with any of these protocols. If these protocols must be used by domain or Azure AD users, secondary credentials should be provisioned for these use cases.

When Windows Defender Credential Guard is enabled, Kerberos does not allow unconstrained Kerberos delegation or DES encryption, not only for signed-in credentials, but also prompted or saved credentials.

**Note:** Intel TXT fully works when enabled and operates in parallel with Windows Defender Credential Guard.

For a better understanding of what Windows Defender Credential Guard is and what attacks it protects againt, see [Deep Dive into Credential Guard](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651).

**IT Professionals:** To learn how to deploy Windows Defender Credential Guard in your enterprise, see [Protect derived domain credentials with Credential Guard](https://docs.microsoft.com/en-us/windows/access-protection/credential-guard/credential-guard#hardware-and-software-requirements).



For a device to support Windows Defender Credential Guard as specified in the Windows Hardware Compatibility Requirements (WHCR), you as the OEM must provide the following hardware, software, or firmware features. 



| Hardware requirement | Details |
|----------------------|---------|
| Virtualization-based security (VBS) | Credential Guard requires VBS. You can learn more about VBS by reading [Virtualization-based Security (VBS) hardware requirements](https://review.docs.microsoft.com/en-us/windows-hardware/design/device-experiences/oem-vbs?branch=dawn-security-toc). |
| Secure Boot | Hardware-based Secure Boot must be supported. To learn more, see [Secure Boot](OEM-secure-boot.md)| 
| Trusted Platform Module (TPM) 2.0 | TPM 2.0 provides protection for VBS encryption keys that are stored in the firmware. Credential Guard data is protected against attacks involving a physically present user with BIOS and hardware access. For more information, see [Trusted Platform Module 2.0](OEM-TPM.md).|
| Secure Memory Overwrite Request (MOR) revision 2 | A secure MOR bit prevents certain memory attacks that Credential Guard requires. For more information, see [Secure MOR implementation](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements). |
| Multi-factor authentication | Two-step verification is a method of authentication that requires more than one verification method and adds a critical second layer of security to user sign-ins and transactions. For more information, see [What is Azure Multi-Factor Authentication?](https://docs.microsoft.com/en-us/azure/multi-factor-authentication/multi-factor-authentication). |

## Related topics
-
- [Windows Defender Device Guard hardware requirements](OEM-device-guard.md)
- [Windows Defender Application Guard hardware requirements](OEM-app-guard.md)
- [BitLocker device encryption](OEM-device-encryption.md)



 

 







