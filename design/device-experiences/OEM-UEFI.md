---
title: UEFI requirements
description: Provides guidance on what an OEM should do to enable UEFI
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 08/30/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# UEFI requirements
When the devices starts, the firmware interface controls the booting process of the PC, and then passes control to Windows or another operating system.+
UEFI is a replacement for the older BIOS firmware interface and the Extensible Firmware Interface (EFI) 1.10 specifications.
More than 140 leading technology companies participate in the Unified EFI Forum, including AMD, AMI, Apple, Dell, HP, IBM, Insyde, Intel, Lenovo, Microsoft, and Phoenix Technologies.

## UEFI benefits
Firmware that meets the UEFI 2.3.1 specifications provides the following benefits:+
- Faster boot and resume times.
- Ability to use security features such as Secure Boot and factory encrypted drives that help prevent untrusted code from running before the operating system is loaded. For more information, see Secure Boot Overview and Factory Encrypted Drives.
- Ability to more easily support large hard drives (more than 2 terabytes) and drives with more than four partitions.
- Compatibility with legacy BIOS. Some UEFI-based PCs contain a Compatibility Support Module (CSM) that emulates earlier BIOS, providing more flexibility and compatibility for end users. To use the CSM, Secure Boot must be disabled.
- Support for multicast deployment, which allows PC manufacturers to broadcast a PC image that can be received by multiple PCs without overwhelming the network or image server.
- Support for UEFI firmware drivers, applications, and option ROMs.