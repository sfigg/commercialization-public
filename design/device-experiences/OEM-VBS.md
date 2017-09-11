---
title: Virtualization Based Security (VBS) hardware requirements
description: Provides guidance on what an OEM should do to enable VBS
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Virtualization-based Security (VBS) hardware requirements
Hardware-based security features, also called virtualization-based security or VBS, provides isolation of secure kernel from normal operating system. Vulnerabilities and Day zero attacks in the operating system cannot be exploited because of this isolation.

VBS requires the following components be present and properly configured. 

| Hardware requirement | Details |
|----------------------|---------|
| 64-bit CPU | Virtualization-based security (VBS) features requires Windows hypervisor, which is only supported on 64-bit processors. |
| Second-level address translation (SLAT) |  |

|Virtualization extensions - Intel VT-x, AMD-V, and extended page tables | VBS only works if the processor supports virtualization with second level address translation. | VBS provides isolation of the secure kernel from the rest of Windows. |
| VT-D or AMD Vi Input/output memory management unit(IOMMU). | IOMMU enhances system resiliency against memory attacks. For more information, see [ACPI system description tables](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables). |
| Firmware support for SMM protection | The [Windows SMM Security Mitigations Table (WMST) specification](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables) contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features. Any vulnerabilities in UEFI runtime services are blocked from compromising VBS. |
| Virtualization-based Security (VBS) enablement of No-Execute protection for UEFI runtime services | **Starting in Windows 10, Version 1703**, you must enable VBS. VBS provides No-Execute (NX) protection on UEFI runtime service code and data memory regions. UEFI runtime services must meet these requirements (applies to UEFI runtime service memory, but not UEFI boot service memory): <ol><li>UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable.</li>
<li>Implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table. </li>
<li>PE sections must be page-aligned in memory, except in non-volatile storage. </li>
<li>The Memory Attributes Table must correctly mark code and data as RO/NX for configuration by Windows. 
All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both. Entries cannot be left with neither of these attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable. </li> </ol> |
