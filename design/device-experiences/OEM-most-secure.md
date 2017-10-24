---
title: Most secure Windows 10 device (version 1709)
description: This document provice guidance on the minimum standards for purchasing the most secure systems for Windows 10. 
ms.author: dawnwood
ms.date: 11/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Hardware and firmware standards for a secure Windows 10 device
This document provice guidance for purchasing the most secure systems for Windows 10.  These standards are for general purpose desktops, laptops, tablets, 2-in-1’s, mobile workstations and desktops. This page applies specifically and uniquely for **Windows 10 version 1709, Fall Creators Update**. If you meet or exceed these standards, your device is able to provide the most secure experience. 

## Hardware

| Feature | Requirement | Details |
|---------|-------------|---------|
| Processor generation | Systems must be of the latest, certified silicon chip against the release of Windows | Up through Intel 7th generation Processors (Intel i3/i5/i7/i9-7x), Core M3-7xxx and Xeon E3-xxxx and current Intel Atom, Celeron and Pentium Processors.   AMD up through 7th generation processors (A Series Ax-9xxx, E-Series Ex-9xxx, FX-9xxx)|
| Process architecture | Systems must have a processor that supports 64-bit instructions | Virtualization-based security (VBS) features require the Windows hypervisor, which is only supported on 64-bit IA processors, or ARM v8.2 CPUs |
| Memory virtualization | Systems must have a processor that supports memory virtualization and configurations. The presence of these hardware virtualization features, including virtual machine extensions and IOMMUs, must be unmasked and reported as supported by system firmware to the OS, and these features must be available for OS use. |
| Second level address translation (SLAT) | Systems must have virtual machine extensions (Intel VT-X , AMD-V, ARM 8.2) with extended page tables (second level page tables). | Intel VT-X2 with Extended Page Tables (EPT), or AMD-v with Rapid Virtualization Indexing (RVI) | 
| Virtualization | Systems must have all I/O devices protected by an IOMMU/SMMU. Systems must have a processor that supports Input–Output Memory Management Unit (IOMMU)device virtualization. | Intel VT-d, AMD-Vi, or ARM64 SMMUs |
| Trusted Platform Module (TPM) | Systems must have a Trusted Platform Module (TPM), version 2.0 or newer and meets the latest Microsoft requirements for TCG specification | Intel (PTT), AMD, or discrete TPM from Infineon, STMicroelectronics, Nuvoton |
| Platform boot verification | Systems must implement cryptographically verified platform boot | Intel Boot Guard in Verified Boot mode, or AMD Hardware Verified Boot, or an OEM equivalent mode with similar functionality |
| RAM | Systems must have 8 gigabites or more of system RAM | |

##Firmware
| Feature | Requirement | Details |
|---------|-------------|---------|
| Standard | Systems must have firmware that implements Unified Extension Firmware Interface (UEFI) version 2.4 or newer | |
| Class | Systems must have firmware that implements UEFI Class 2 or UEFI Class 3 | |
| Code integrity | All drivers shipped inbox must be Hypervisor-based Code Integrity (HVCI) compliant | https://blogs.msdn.microsoft.com/windows_hardware_certification/2015/05/22/driver-compatibility-with-device-guard-in-windows-10/ |
| Secure boot | Systems firmware must support UEFI Secure Boot and must have UEFI Secure Boot enabled by default | |
| Secure MOR | Systems firmware must implement Secure MOR revision 2 | https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements |
| Update mechanism | Systems must support the Windows UEFI Firmware Capsule Update specification | https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/windows-uefi-firmware-update-platform |
| **Recommended, not required** Firmware Extension Table MAT | Systems must ship with the UEFI 2.6 MAT table configured | |
| Firmware Extension Table WSMT | Systems must ship with the WSMT table configured | https://msdn.microsoft.com/en-us/library/windows/hardware/dn614617.aspx |


 