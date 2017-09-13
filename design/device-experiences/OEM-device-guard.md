---
title: Device Guard hardware requirements
description: Provides guidance on what an OEM should do to enable Device Guard
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Defender Device Guard hardware requirements
Starting with Windows 10, version 1709, Device Guard is split into two features known as Windows Defender Exploit Guard and Windows Defender Application Control. These features are a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that are defined in an enterprise's code integrity policies. If the app isn’t trusted it can’t run, period. 

With hardware that meets basic requirements, it also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code. 

Windows Defender Device Guard can also leverage advanced hardware features on hardware that supports them. These features include CPU virtualization extensions (called "Intel VT-x" or "AMD-V") and second-level address translation (SLAT). In addition, hardware that includes input/output memory management units (IOMMUs) provides even stronger protections. When you enable the features associated with CPU virtualization extensions and SLAT, the Code Integrity service can run alongside the kernel in a Windows hypervisor-protected container. 

If you are an OEM building secure systems, you must provide the hardware to enable these features.

**IT Professionals;**  If you want more information on how to deploy Device Guard, see [Windows Defender Device Guard deployment guide](https://docs.microsoft.com/en-us/windows/device-security/device-guard/device-guard-deployment-guide).

## Windows Defender Exploit Guard

Windows Defender Exploit Guard includes hypervisor-protected code integrity (HVCI), which is a kernel process mitigation that leverages virtualization based security to isolate the process that performs integrity validation and authorization for kernel-mode code.

For a device to support Windows Defender Exploit Guard as specified in the Windows Hardware Compatibility Requirements (WHCR), you as the OEM must provide the following hardware, software, or firmware features. 

| Virtualization-based security (VBS) | Credential Guard requires VBS. You can learn more about VBS by reading [Virtualization-based Security (VBS) hardware requirements](https://review.docs.microsoft.com/en-us/windows-hardware/design/device-experiences/oem-vbs?branch=dawn-security-toc). |
| Secure Boot | Hardware-based Platform Secure Boot must be supported. To learn more, see **System.Fundamentals.Firmware.CS.UEFISecureBoot** in the [Hardware Compatibility Specification for Systems for Windows 10, version 1703](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/1703/systems) topic, and the Windows Hardware Compatibility Program requirements under [System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby](https://msdn.microsoft.com/library/windows/hardware/dn932807(v=vs.85).aspx#system_fundamentals_firmware_cs_uefisecureboot_connectedstandby) topic.The Hardware Security Test Interface (HSTI) must be implemented. To learn more, see the [Hardware Security Testability Specification](https://msdn.microsoft.com/en-us/library/windows/hardware/mt712332(v=vs.85).aspx). This is independent of Modern Standby/Connected Standby Systems; all systems using Credential Guard must pass HSTI 1.1.a.After the system is powered on, Secure Boot provides protections against physically present attackers, and defense-in-depth against malware. HSTI provides additional security assurance for correctly secured silicon and platform.UEFI Secure Boot ensures that the device boots with only authorized code in the pre-OS environment. UEFI Version 2.3.1 Errata C variables must be set to **SecureBoot=1** and **SetupMode=0** with a signature database (EFI_IMAGE_SECURITY_DATABASE) necessary to boot the machine securely pre-provisioned, and including a PK that is set in a valid KEK database. For more information, see [System.Fundamentals.Firmware.UEFISecureBoot](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems#systemfundamentalsfirmwareuefisecureboot).| 
| Trusted Platform Module (TPM) 2.0 | TPM 2.0 provides protection for VBS encryption keys that are stored in the firmware. Credential Guard data is protected against attacks involving a physically present user with BIOS and hardware access. For more information, see [Trusted Platform Module 2.0](OEM-TPM.md).|
| Secure Memory Overwrite Request (MOR) revision 2 | A secure MOR bit prevents certain memory attacks that Credential Guard requires. For more information, see [Secure MOR implementation](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements). |
| Multi-factor authentication | Two-step verification is a method of authentication that requires more than one verification method and adds a critical second layer of security to user sign-ins and transactions. For more information, see [What is Azure Multi-Factor Authentication?](https://docs.microsoft.com/en-us/azure/multi-factor-authentication/multi-factor-authentication). |



## Windows Defender Application control

Starting with Windows 10, version 1709, the code integretity part of Device Guard has been split out into a separate feature known as Application control. 
With appropriate hardware, application control can use virtualization-based security (VBS) in Windows 10 to isolate the Code Integrity service from the Microsoft Windows kernel itself. In this case, the Code Integrity service runs alongside the kernel in a Windows hypervisor-protected container.
  
 WDAC is used to control what code can run on the system in either kernel or user mode. When HVCI is enabled, WDAC benefits from the increased kernel memory protections since the kernel mode CI checks occur in virtualization based security and user mode code integrity runs as part of the kernel itself and is thus protected against kernel memory exploits.

### Device Guard and Credit Guard Readiness Tool

To determine if a device is able to run Device Guard and Credential Guard, download the [Device Guard and Credential Guard hardware readiness tool](https://www.microsoft.com/en-us/download/details.aspx?id=53337).

## Related topics

- [Driver Compatibility with Device Guard on Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10)
- [Managing Managing Windows 10 Device Guard with Configuration Manager](https://blogs.technet.microsoft.com/enterprisemobility/2015/10/30/managing-windows-10-device-guard-with-configuration-manager/)
-[Device Guard signing](https://docs.microsoft.com/en-us/microsoft-store/device-guard-signing-portal)
