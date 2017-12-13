---
title: Standards for a highly secure Windows 10 device
description: This document provides guidance on the minimum standards for purchasing highly secure systems for Windows 10. 
ms.author: dawnwood
ms.date: 11/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Standards for a highly secure Windows 10 device
These standards are for general purpose laptops, tablets, 2-in-1’s, mobile workstations, and desktops. This topic applies specifically and uniquely for **Windows 10 version 1709, Fall Creators Update**. If you are a decision maker purchasing new devices and you want to enable the best possible security configuration, your device should meet or exceed these standards.

Beyond the hardware and firmware configurations outlined below, Microsoft recommends running [Windows 10 S](https://www.microsoft.com/en-us/windows/windows-10-s) for security and performance. Windows 10 S is a specific configuration of Windows 10 Pro that offers a familiar Windows experience that’s streamlined for security and performance. Windows 10 S provides the best of the cloud and full featured apps, and is designed for modern devices. Windows Defender is always on and always up-to-date.

## Hardware
> [!div class="mx-tdBreakAll"]
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
> [!div class="mx-tdBreakAll"]
| Feature | Requirement | Details |
|---------|-------------|---------|
| Standard | Systems must have firmware that implements Unified Extension Firmware Interface (UEFI) version 2.4 or later | For more information, see [United Extensible Firmware Interface (UEFI) firmware requirements](OEM-UEFI.md) and [Unified Extensible Firmware Interface Forum specifications](http://uefi.org/specifications) |
| Class | Systems must have firmware that implements UEFI Class 2 or UEFI Class 3 | For more information, see [Unified Extensible Firmware Interface Forum specifications](http://uefi.org/specifications) |
| Code integrity | All drivers shipped inbox must be Hypervisor-based Code Integrity (HVCI) compliant | For more information, see the Enable virtualization-based isolation for Code Integrity section of [Driver compatibility with Device Guard in Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10/) |
| Secure boot | System's firmware must support UEFI Secure Boot and must have UEFI Secure Boot enabled by default | For more informaion, see [UEFI firmware requirements](OEM-UEFI.md) and [Secure Boot](OEM-secure-boot.md) |
| Secure MOR | System's firmware must implement Secure MOR revision 2 | For more information, see [Secure MOR implementation](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements) |
| Update mechanism | Systems must support the Windows UEFI Firmware Capsule Update specification | For more information, see [Windows UEFI firmware update platform](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/windows-uefi-firmware-update-platform) |


 
