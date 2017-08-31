---
title: Windows Defender Credential Guard hardware requirements
description: Provides guidance on what an OEM should do to enable Credential Guard
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 09/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Defender Credential Guard hardware requirements

Credential Guard uses virtualization-based security to isolate secrets so that only privileged system software can access them. Credential Guard prevents the known forms of the pass-the-hash (PtH) attack.

For a device to support Crendential Guard as specified in the Windows Hardware Compatibility Requirements (WHCR), you as the OEM must provide the following hardware, software, or firmware features. 

**IT Professionals:** To learn how to deploy Credential Guard in your enterprise, see [Protect derived domain credentials with Credential Guard](https://docs.microsoft.com/en-us/windows/access-protection/credential-guard/credential-guard#hardware-and-software-requirements), and the [Deploying Credential Guard](https://technet.microsoft.com/en-us/windows/mt796471.aspx) video.

| Hardware requirement | Details |
|----------------------|---------|
| 64-bit CPU | Virtualization-Based Security (VBS) features requires Windows hypervisor, which is only supported on 64-bit processors. |
| Firmware support for SMM protection | The [Windows SMM Security Mitigations Table (WMST) specification](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables) contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features. Any vulnerabilities in UEFI runtime services are blocked from compromising VBS. |
| Hardware-based Platform Secure Boot | **Starting with Windows 10, version 1607 and Windows Server 2016**, Boot Integrity (known as Platform Secure Boot) must be supported. To learn more, see the [Hardware Compatibility Specification for Systems for Windows 10, version 1607](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems) under System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby. The Hardware Security Test Interface (HSTI) must be implemented. To learn more, see the [Hardware Security Testability Specification](https://msdn.microsoft.com/en-us/library/windows/hardware/mt712332(v=vs.85).aspx). This is independent of Modern Standby/Connected Standby Systems; all systems using Credential Guard must pass HSTI 1.1.a. There are two security benefits. <ul><li>After the system is powered on, Platform Secure Boot provides protections against physically present attackers, and defense-in-depth against malware.</li><li>HSTI provides additional security assurance for correctly secured silicon and platform.</li></ul> |
| Firmware update through Windows Update | Firmware must support field updates through Windows Update and UEFI encapsulation update. |
| Secure Boot configuration and Management | As the OEM, you must provide the ability, in BIOS, to add ISV, OEM, or Enterprise certificates to the Secure Boot database at manufacturing time. The Microsoft UEFI CA must be removed from the same Secure Boot database. Support for 3rd-party UEFI modules is permitted but should leverage ISV-provided certificates or OEM certificate for the specific UEFI software. There are two security benefits. <ul><li>Enterprises can choose to allow proprietary EFI drivers/applications to run. </li> <li>Removing Microsoft UEFI CA from the Secure Boot database provides enterprises with full control over software that runs before the operating system boots. </li></ul>|
|Virtualization extensions - Intel VT-x, AMD-V, and extended page tables | VBS only works if the processor supports virtualization with second level address translation. | VBS provides isolation of the secure kernel from the rest of Windows. |
| VT-D or AMD Vi Input/output memory management unit(IOMMU). | IOMMU enhances system resiliency against memory attacks. For more information, see [ACPI system description tables](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables). |
| Trusted Platform Module (TPM) 2.0 | TPM 2.0 provides protection for VBS encryption keys that are stored in the firmware. Credential Guard data is protected against attacks involving a physically present user with BIOS and hardware access. |
| UEFI 2.3.1.c or higher firmware along with Secure Boot | UEFI Secure Boot ensures that the device boots with only authorized code in the pre-OS environment. For more information, see [System.Fundamentals.Firmware.UEFISecureBoot](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems#systemfundamentalsfirmwareuefisecureboot). |
| Securing boot configuration and management | To support this, you must allow BIOS password or stronger authentication to ensure that only the authenticated Platform BIOS administrator can change BIOS settings. You must also provide a protected BIOS option to configure a list of permitted boot devices and the boot device order, which overrides the BOOTORDER modification made by the OS to boot only from an internal hard drive, for example.|
| BIOS options related to security and boot options must be secured to prevent other operating systems from starting and to prevent changes to the BIOS settings. |  BIOS authentication must be set. For example, the BIOS password must be set.<ul><li>BIOS password is required to protect against a physically present user with BIOS access.</li><li>When locked, boot order provides protection against an admin user booting into WinRE or any other OS from bootable media. </li></ul> | 
| Secure Memory Overwrite Request (MOR) revision 2 | A secure MOR bit prevents certain memory attacks so this is necessary for Credential Guard. For more information, see [Secure MOR implementation](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements). |
| Multi-factor authentication | Two-step verification is a method of authentication that requires more than one verification method and adds a critical second layer of security to user sign-ins and transactions. For more information, see [What is Azure Multi-Factor Authentication?](https://docs.microsoft.com/en-us/azure/multi-factor-authentication/multi-factor-authentication). |

## Related topics

- [Windows Defender Device Guard hardware requirements](OEM-device-guard.md)
- [Windows Defender Application Guard hardware requirements](OEM-app-guard.md)
- [BitLocker device encryption](OEM-device-encryption.md)



 

 







