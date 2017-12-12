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
Windows 10 S is a specific configuration of Windows 10 Pro that offers a familiar, productive Windows experience that’s streamlined for security and performance. For security reasons, Windows 10 S will only run verified apps from the Store and verified drivers from Windows Update. Windows 10 S provides the best of the cloud and full featured apps, and is designed for modern devices. Windows Defender is always on and always up-to-date. 

10 S provides supports Azure Active Directory, and when paired with MSA or Intune for Education, 10 S defaults to storing files to OneDrive. Windows 10 S is available for any Windows 10 Professional edition, and users can switch to Windows 10 Pro.

## Configuration and features 
Windows 10 S Mode protects customers by using a combination of code integrity policies,  hardware, and certification for apps. Windows 10 S will only run executable code that is signed with a Windows, WHQL, ELAM, or Store certificate from the Windows Hardware Developer Center Dashboard. This includes companion apps for drivers. 

| Features | Windows 10 S | Windows 10 Home | Windows 10 Pro|
|-----------|-----------|---------| ---------|
| Non-store apps | | Yes | Yes |
| Domain join on premise | |  | Yes |
| Azure AD domain join | Yes |  | Yes |
| Store apps (including Win32 centennial apps) | Yes | Yes | Yes |
| OneDrive automatic setup and sync; Requires MSA | Yes | Configurable | Configurable |
| Microsoft default apps set| Yes | Configurable | Configurable |
| Windows update for business | Yes |  | Yes |
| Store for business | Yes |  | Yes |
| Mobile Device Management (MDM) | Yes | limited | Yes |
| BitLocker | Yes | | Yes |
| Enterprise state roaming with Azure AD  | Yes | | Yes |
| Shared PC configuration | Yes | | Yes |

### Windows 10 S default app configuration
* Email: Mail
* Maps : Maps
* Photo viewer : Photos
* Video player: Movies & TV
* Web browser: Edge
* OneDrive automatically configued for MSA accounts so that documents, Photos, and Desktop are automatically synced and the user has 5GB of standard storage. 

### Code integrity policy
The code integrity policy (CI) blocks the execution of unsigned or improperly signed binaries. Using unsupported binaries is only recommended when performing lab or factory image customization, or during deployment where the execution environment is either WinPE or Audit Mode.
Once the CI policy is enabled on a system, it is enabled in two places:

* Windows 10 S, enforced at boot
* UEFI firmware policy, enforced during firmware load and OS boot

### Signed drivers and Windows 10 S
Driver signing is different for Windows 10 S. For details on how to make your drivers work with Windows 10 S, see [Windows 10 S Driver Requirements](https://docs.microsoft.com/en-us/windows-hardware/drivers/install/windows10sdriverrequirements) and [Publish a driver to Windows Update](https://docs.microsoft.com/en-us/windows-hardware/drivers/dashboard/publish-a-driver-to-windows-update).

### What's not supported
Windows 10 S does not allow any apps that aren't in the Store. A second limitation is that Windows 10 S does not allow on-premise domain joins. Additionaly, some Windows customizations and some apps are not supported. For a full list of what's allowed and what's blocked, see [Planning a Windows 10 S deployment](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-10-s-planning).


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


