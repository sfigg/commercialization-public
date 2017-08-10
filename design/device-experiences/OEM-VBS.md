---
title: Virtualization Based Security (VBS)
description: Provides guidance on what an OEM should do to enable VBS
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

##Virtualization Based Security (VBS)
Hardware-based security features, also called virtualization-based security or VBS, provides isolation of secure kernel from normal operating system. Vulnerabilities and Day zero attacks in the operating system cannot be exploited because of this isolation.

VBS requires: 
* 64-bit CPU
* CPU virtualization extensions plus extended page tables
* Windows hypervisor

###Virtualization Based Security (VBS) enablement of No-Execute protection for UEFI runtime services

**Starting in Windows 10, Version 1703**, you must enable VBS. VBS sprovide No-Execute (NX) protection on UEFI runtime service code and data memory regions. 

UEFI runtime services must meet these requirements (applies to UEFI runtime service memory, but not UEFI boot service memory):

* UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable.

* Implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table.

* PE sections must be page-aligned in memory, except in non-volatile storage.

* The Memory Attributes Table must correctly mark code and data as RO/NX for configuration by Windows. 
All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both. Entries cannot be left with neither of these attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable.

The security benefit is that vulnerabilities in UEFI runtime services, if any (such as in functions like UpdateCapsule and SetVariable), will be blocked from compromising VBS.