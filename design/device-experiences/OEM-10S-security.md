---
title: Windows 10 S Mode security features and hardware requirements for OEMs
description: Provides guidance on what an OEM should do to enable VBS
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 12/12/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows 10 S Mode security features and hardware requirements for OEMs
Intro paragraph describing why security is important and the business value of Windows 10S
Also describe audience and provide links to consumer, ITPro, developer, and marketing content if appropriate. Windows 10 S mode security features and what hardware enables them. Windows 10 S mode provides the right configuration automatically so that users are safe on first setup (OOBE).
link to the manufacturing topic--Planning a Windows 10 S deployment.

## Security features 
Windows 10 S Mode protects customers by using a combination of code integrity policies,  hardware, and certification for apps. Windows 10 S will only run executable code that is signed with a Windows, WHQL, ELAM, or Store certificate from the Windows Hardware Developer Center Dashboard. This includes companion apps for drivers. Windows 10 S is available for any Windows 10 Professional edition.

To enable a secure and easy to install mode with automatic security configuration, some Windows customizations and some apps are not supported. For a full list of what's allowed and what's blocked, see [Planning a Windows 10 S deployment](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-10-s-planning).



## Hardware

| Feature | Requirement | Details |
|---------|------------|----------|
| Processor generation | Systems must be on the latest, certified silicon chip for the current release of Windows | Intel 7th generation processors (Intel i3/i5/i7/i9-7x), Core M3-7xxx , Xeon E3-xxxx, and Xeon E5-xxxx Processors and AMD 7th generation processors (A Series Ax-9xxx, E-Series Ex-9xxx, FX-9xxx)|
| Process architecture | Systems must have a processor that supports 64-bit instructions | Virtualization-based security (VBS) features require the Windows hypervisor, which is only supported on 64-bit IA processors, or ARM v8.2 CPUs |
| Virtualization | Systems must have a processor that supports Input-Output Memory Management Unit (IOMMU) device virtualization and all I/O devices must be protected by IOMMU/SMMU | Intel VT-d, AMD-Vi, or ARM64 SMMUs |
| Virtualization | Systems must also have virtual machine extensions with second level address translation (SLAT) | Intel Vt-x with Extended Page Tables (EPT), or AMD-v with Rapid Virtualization Indexing (RVI) |
| Virtualization | The presence of these hardware virtualization features must be unmasked and reported as supported by the system firmware, and these features must be available for the operating system to use ||
| Trusted Platform Module (TPM) | Systems must have a Trusted Platform Module (TPM), version 2.0, and meet the latest Microsoft requirements for the [Trusted Computing Group(TCG)](https://trustedcomputinggroup.org/) specification  | Intel (PTT), AMD, or discrete TPM from Infineon, STMicroelectronics, Nuvoton |
| Platform boot verification | Systems must implement cryptographically verified platform boot | Intel Boot Guard in Verified Boot mode, or AMD Hardware Verified Boot, or an OEM equivalent mode with similar functionality |
| RAM | Systems must have 8 gigabytes or more of system RAM |   |

##Firmware
| Feature | Requirement | Details |
|---------|-------------|---------|
| Standard | Systems must have firmware that implements Unified Extension Firmware Interface (UEFI) version 2.4 or later | For more information, see [United Extensible Firmware Interface (UEFI) firmware requirements](OEM-UEFI.md) and [Unified Extensible Firmware Interface Forum specifications](http://uefi.org/specifications) |
| Class | Systems must have firmware that implements UEFI Class 2 or UEFI Class 3 | For more information, see [Unified Extensible Firmware Interface Forum specifications](http://uefi.org/specifications) |
| Code integrity | All drivers shipped inbox must be Hypervisor-based Code Integrity (HVCI) compliant | For more information, see the Enable virtualization-based isolation for Code Integrity section of [Driver compatibility with Device Guard in Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10/) |
| Secure boot | System's firmware must support UEFI Secure Boot and must have UEFI Secure Boot enabled by default | For more informaion, see [UEFI firmware requirements](OEM-UEFI.md) and [Secure Boot](OEM-secure-boot.md) |
| Secure MOR | System's firmware must implement Secure MOR revision 2 | For more information, see [Secure MOR implementation](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements) |
| Update mechanism | Systems must support the Windows UEFI Firmware Capsule Update specification | For more information, see [Windows UEFI firmware update platform](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/windows-uefi-firmware-update-platform) |


