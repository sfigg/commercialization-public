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

Credential Guard uses virtualization-based security to isolate and protect secrets (e.g., NTLM password hashes and Kerberos ticket-granting tickets) to block pass-the-hash or pass-the-ticket(PtH) attacks. 

**IT Professionals:** To learn how to deploy Credential Guard in your enterprise, see [Protect derived domain credentials with Credential Guard](https://docs.microsoft.com/en-us/windows/access-protection/credential-guard/credential-guard#hardware-and-software-requirements).

For a better understanding of what Windows Defender Credential Guard is and what attacks it protects againt, see [Deep Dive into Credential Guard](https://mva.microsoft.com/en-us/training-courses/deep-dive-into-credential-guard-16651).


For a device to support Crendential Guard as specified in the Windows Hardware Compatibility Requirements (WHCR), you as the OEM must provide the following hardware, software, or firmware features. 



| Hardware requirement | Details |
|----------------------|---------|
| Virtualization-based security (VBS) | Credential Guard requires VBS. You can learn more about VBS by reading [Virtualization-based Security (VBS) hardware requirements](https://review.docs.microsoft.com/en-us/windows-hardware/design/device-experiences/oem-vbs?branch=dawn-security-toc). |
| Secure Boot | Hardware-based Platform Secure Boot must be supported. To learn more, see **System.Fundamentals.Firmware.CS.UEFISecureBoot** in the [Hardware Compatibility Specification for Systems for Windows 10, version 1703](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/1703/systems) topic, and the Windows Hardware Compatibility Program requirements under [System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby](https://msdn.microsoft.com/library/windows/hardware/dn932807(v=vs.85).aspx#system_fundamentals_firmware_cs_uefisecureboot_connectedstandby) topic. 
<p>The Hardware Security Test Interface (HSTI) must be implemented. 
To learn more, see the [Hardware Security Testability Specification](https://msdn.microsoft.com/en-us/library/windows/hardware/mt712332(v=vs.85).aspx). This is independent of Modern Standby/Connected Standby Systems; all systems using Credential Guard must pass HSTI 1.1.a.</p> <p>After the system is powered on, Platform Secure Boot provides protections against physically present attackers, and defense-in-depth against malware. HSTI provides additional security assurance for correctly secured silicon and platform.</p> <p> UEFI Secure Boot ensures that the device boots with only authorized code in the pre-OS environment. UEFI Version 2.3.1 Errata C variables must be set to **SecureBoot=1** and **SetupMode=0** with a signature database (EFI_IMAGE_SECURITY_DATABASE) necessary to boot the machine securely pre-provisioned, and including a PK that is set in a valid KEK database. For more information, see [System.Fundamentals.Firmware.UEFISecureBoot](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems#systemfundamentalsfirmwareuefisecureboot). </p>|
| Firmware updates | Firmware must support field updates through Windows Update and UEFI encapsulation update. UEFI firmware must support secure firmware update following Hardware Compatibility Specification for Systems for Windows 10 under [System.Fundamentals.Firmware.UEFISecureBoot](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefisecureboot).|
| VT-D or AMD Vi Input/output memory management unit(IOMMU). | IOMMU enhances system resiliency against memory attacks. For more information, see [ACPI system description tables](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables). |
| Trusted Platform Module (TPM) 2.0 | TPM 2.0 provides protection for VBS encryption keys that are stored in the firmware. Credential Guard data is protected against attacks involving a physically present user with BIOS and hardware access. |
| Secure Memory Overwrite Request (MOR) revision 2 | A secure MOR bit prevents certain memory attacks that Credential Guard requires. For more information, see [Secure MOR implementation](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements). |
| Multi-factor authentication | Two-step verification is a method of authentication that requires more than one verification method and adds a critical second layer of security to user sign-ins and transactions. For more information, see [What is Azure Multi-Factor Authentication?](https://docs.microsoft.com/en-us/azure/multi-factor-authentication/multi-factor-authentication). |

## Related topics
-
- [Windows Defender Device Guard hardware requirements](OEM-device-guard.md)
- [Windows Defender Application Guard hardware requirements](OEM-app-guard.md)
- [BitLocker device encryption](OEM-device-encryption.md)



 

 







