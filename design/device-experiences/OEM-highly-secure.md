---
title: Standards for a highly secure Windows 10 device
description: This document provice guidance on the minimum standards for purchasing highly secure systems for Windows 10. 
ms.author: dawnwood
ms.date: 11/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Standards for a highly secure Windows 10 device
These standards are for general purpose desktops, laptops, tablets, 2-in-1’s, mobile workstations, and desktops. This page applies specifically and uniquely for **Windows 10 version 1709, Fall Creators Update**. Windows enterprse security features light up when you meet or exceed these standards and your device is able to provide a highly secure experience. 

## Hardware

| Feature | Requirement | Details |
|---------|-------------|---------|
| Processor generation | Systems must be of the latest, certified silicon chip for the current release of Windows | Up through Intel 7th generation Processors (Intel i3/i5/i7/i9-7x), Core M3-7xxx and Xeon E3-xxxx and current Intel Atom, Celeron and Pentium Processors.   AMD up through 7th generation processors (A Series Ax-9xxx, E-Series Ex-9xxx, FX-9xxx)|
| Process architecture | Systems must have a processor that supports 64-bit instructions | Virtualization-based security (VBS) features require the Windows hypervisor, which is only supported on 64-bit IA processors, or ARM v8.2 CPUs. |
| Virtualization | <ul><<li>> Systems must have a processor that supports Input-Output Memory Management Unit (IOMMU) device virtualization and all I/O devices must be protected by IOMMU/SMMU.</li><li> The presence of these hardware virtualization features must be unmasked and reported as supported by the system firmware, and these features must be available for the operating system to use. </li><li>Systems must also have virtual machine extensions with second level address translation (SLAT).</li></ul> | For IOMMU, you'll need Intel VT-d, AMD-Vi, or ARM64 SMMUs . For SLAT, you'll need Intel VT-X2 with Extended Page Tables (EPT), or AMD-v with Rapid Virtualization Indexing (RVI) |
| Trusted Platform Module (TPM) | Systems must have a Trusted Platform Module (TPM), version 2.0 or newer and meets the latest Microsoft requirements for TCG specification | Intel (PTT), AMD, or discrete TPM from Infineon, STMicroelectronics, Nuvoton |
| Platform boot verification | Systems must implement cryptographically verified platform boot | Intel Boot Guard in Verified Boot mode, or AMD Hardware Verified Boot, or an OEM equivalent mode with similar functionality |
| RAM | Systems must have 8 gigabites or more of system RAM | |

##Firmware
| Feature | Requirement | Details |
|---------|-------------|---------|
| Standard | Systems must have firmware that implements Unified Extension Firmware Interface (UEFI) version 2.4 or newer | For more information, see [United Extensible Firmware Interface (UEFI) firmware requirements](OEM0UEFI.md). |
| Class | Systems must have firmware that implements UEFI Class 2 or UEFI Class 3 | For more information, see [Unified Extensible Firmware Interface Forum specifications](http://uefi.org/specifications) |
| Code integrity | All drivers shipped inbox must be Hypervisor-based Code Integrity (HVCI) compliant | For more information, see [Driver compatibility with Device Guard in Windows 10](https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10/) |
| Secure boot | System's firmware must support UEFI Secure Boot and must have UEFI Secure Boot enabled by default | See [UEFI firmware requirements](OEM-UEFI.md) and [Secure Boot](OEM-secure-boot.md) for more information. |
| Secure MOR | System's firmware must implement Secure MOR revision 2 | https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements |
| Update mechanism | Systems must support the Windows UEFI Firmware Capsule Update specification | https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/windows-uefi-firmware-update-platform |


 