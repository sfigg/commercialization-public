---
title: Windows Defender Application Guard hardware requirements
description: Provides guidance on what an OEM should do to enable Application Guard
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 09/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Defender Application Guard hardware requirements

Application Guard helps to isolate enterprise-defined untrusted sites, protecting an enterprise while its employees browse the Internet. If an employee goes to an untrusted site through either Microsoft Edge or Internet Explorer, Microsoft Edge opens the site in an isolated Hyper-V-enabled container, which is separate from the host operating system. This container isolation means that if the untrusted site turns out to be malicious, the host PC is protected, and the attacker can't get to the enterprise data. 

As an OEM, you provide the hardware necessary to enable Application Guard. Here are the requirements.
| Hardware requirement | Details |
|----------------------|---------|
| 64-bit CPU | A 64-bit computer is required for hypervisor and virtualization-based security (VBS). For more info about Hyper-V, see [Hyper-V on Windows Server 2016](https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/hyper-v-on-windows-server) or [Introduction to Hyper-V on Windows 10](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/about/). For more info about hypervisor, see [Hypervisor Specifications](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/tlfs). |
| CPU virtualization extensions | Extended page tables, also called Second Level Address Translation (SLAT)**-AND-** One of the following virtualization extensions for VBS: VT-x (Intel) **-OR-** AMD-V |
| Hardware memory | 8 GB minimum, 16 GB recommended |
| Hard drive | 5 GB free space, solid state disk (SSD) recommended |
| IOMMU Support | Not required but highly recommended |
| Memory | 8 GB minimum, 16 GB recommended |



## Related topics

- [Windows Defender Device Guard hardware requirements](OEM-device-guard.md)
- [Windows Defender Credential Guard hardware requirements](OEM-credential-guard.md)
- [Bitlocker device encryption](OEM-device-encryption.md)