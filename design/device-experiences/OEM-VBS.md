---
title: Virtualization Based Security (VBS)
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

# Virtualization-based Security (VBS)
Hardware-based security features, also called virtualization-based security or VBS, provides isolation of secure kernel from normal operating system. Vulnerabilities and Day zero attacks in the operating system cannot be exploited because of this isolation.

VBS requires the following components be present and properly configured. 

| Hardware requirement | Details |
|----------------------|---------|
| 64-bit CPU | Virtualization-based security (VBS) features requires Windows hypervisor, which is only supported on 64-bit processors. |
| Virtualization machine extensions - (Intel VT-X , AMD-V, ARM 8.2), with extended page tables  | VBS only works if the processor supports virtualization with second level address translation. | VBS is the foundation of a number of OS features, such as Device Guard, Credential Guard, Application Guard.   VBS works only if the processor supports virtualization with second level address translation (SLAT) support. This is required to support virtualization based security.|
| All I/O devices should be behind an IOMMU/SMMU (Intel VT-D, AMD-Vi, ARM64 SMMUs) or also called Input/output memory management units | In Windows 10, an IOMMU can be used to enhance system resiliency against memory attacks. For more information, see [ACPI system description tables](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables). System IOMMUs need to support at least one stage of address translation: from GPA to SPA (Intel VT-D, AMD-Vi, ARM64 SMMUs). |
| Trusted Platform Module (TPM) 2.0 | TPMs, either discrete or firmware, will suffice. |
| Firmware support for SMM protection | The [Windows SMM Security Mitigations Table (WMST) specification](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables) contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features. Any vulnerabilities in UEFI runtime services are blocked from compromising VBS. |
| Virtualization-based Security (VBS) enablement of No-Execute protection for UEFI runtime services | **Starting in Windows 10, Version 1703**, you must enable VBS. VBS provides No-Execute (NX) protection on UEFI runtime service code and data memory regions. UEFI runtime services must meet these requirements (applies to UEFI runtime service memory, but not UEFI boot service memory): <ol><li> UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable. </li><li>Implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table.</li><li> PE sections must be page-aligned in memory, except in non-volatile storage. </li><li>The Memory Attributes Table must correctly mark code and data as RO/NX for configuration by Windows. </li><li>All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both. Entries cannot be left with neither of these attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable. </li></ol>|
| Secure MorLock Rev 2 | To prevent advanced memory attacks, the existing system BIOS security mitigation MemoryOverwriteRequestControl is improved to support locking to defend against new threats. To set and get those variables, you must be familiar with UEFI variable services. Those services are described in the UEFI Specification version 2.5, Section 7.2 named "Variable Services", [here](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements). |
|HVCI Compatible drivers | HVCI Compatible drivers help ensure that VBS can maintain appropriate memory permissions. This increases resistance to bypassing vulnerable kernel drivers and helps ensure that malware cannot run in kernel. Only code verified through code integrity can run in kernel mode.|

## Related topics

- [OEM Security Considerations](OEM-security-considerations.md)