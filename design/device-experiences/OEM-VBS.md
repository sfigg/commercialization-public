---
title: Virtualization-based Security (VBS)
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
Virtualization-based security, or VBS, uses hardware virtualization features to create and isolate a secure region of memory from the normal operating system. Windows can use this "virtual secure mode" to host a number of security solutions, providing them with greatly increased protection from vulnerabilities in the operating system, and preventing the spread or use of malicious exploits which attempt defeat protections, or to use security assets such as authenticated user credentials. With then increased protections offered by VBS, even if malware gains access to the OS kernel the possible exploits can be greatly limited and contained, because the hypervisor can prevent the malware from executing code. VBS uses the Windows hypervisor to create this virtual secure mode, and to enforce restrictions which protect vital system and operating system resources. 

One such example is Hypervisor-Enforced Code Integrity (HVCI), which uses VBS to significantly strengthen code integrity policy enforcement.  Kernel mode code integrity checks all kernel mode drivers and binaries as before they're started, and prevents unsigned drivers or system files from being loaded into system memory. Similarly, user mode configurable code integrity policy checks applications before they're loaded, and will only start executables which are code-signed by known, approved signers. With HVCI, code integrity checks are performed inside the VSM secure environment, which is resistant to attack from kernel mode software. The hypervisor, the most privileged level of system software, sets and enforces page permissions across all system memory. Pages are only made executable after code integrity checks inside the secure region have passed, and executable pages are not writable. That way, even if there are vulnerabilities that allow memory modification, like a buffer overflow, the modified memory cannot be executed.

VBS requires the following components be present and properly configured. 

| Hardware requirement | Details |
|----------------------|---------|
| 64-bit CPU | Virtualization-based security (VBS) features requires Windows hypervisor, which is only supported on 64-bit processors. |
| Virtualization machine extensions (Intel VT-X , AMD-V, ARM 8.2), with extended page tables  | VBS requires that the processor support virtualization with second level address translation (SLAT). | VBS is the foundation of a number of OS features, such as Windows Defender Device Guard, Windows Defender Credential Guard, and Windows Defender Application Guard. |
| All I/O devices should use an Input/Output Memory Management Unit (IOMMU) or SMMU (Intel VT-D, AMD-Vi, ARM64 SMMUs) | An IOMMU can be used to enhance system resiliency against memory attacks. For more information, see [ACPI system description tables](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables). System IOMMUs need to support at least one stage of address translation: from GPA to SPA (Intel VT-D, AMD-Vi, ARM64 SMMUs). |
| Trusted Platform Module (TPM) 2.0 | TPMs, either discrete or firmware, will suffice. For more information, see [Trusted Platform Module (TPM) 2.0](OEM-TPM.md). |
| Firmware support for SMM protection | The [Windows SMM Security Mitigations Table (WMST) specification](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables) contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features. Any vulnerabilities in UEFI runtime services are blocked from compromising VBS. |
| Virtualization-based Security (VBS) enablement of No-Execute protection for UEFI runtime services | **Starting in Windows 10, Version 1703**, you must enable VBS. VBS provides No-Execute (NX) protection on UEFI runtime service code and data memory regions. UEFI runtime services must meet these requirements (applies to UEFI runtime service memory, but not UEFI boot service memory): <ol><li> UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable. </li><li>Implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table.</li><li> PE sections must be page-aligned in memory, except in non-volatile storage. </li><li>The Memory Attributes Table must correctly mark code and data as RO/NX for configuration by Windows. </li><li>All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both. Entries cannot be left with neither of these attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable. </li></ol>|
| Secure Memory Overwrite Request (MOR) revision 2 | To prevent advanced memory attacks, the existing system BIOS security mitigation MemoryOverwriteRequestControl is improved to support locking to defend against new threats. To set and get those variables, you must be familiar with UEFI variable services. Those services are described in the UEFI Specification version 2.5, Section 7.2 named "Variable Services", [here](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements). For more information, see [Secure MOR implementation](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements).|
|HVCI Compatible drivers | HVCI Compatible drivers help ensure that VBS can maintain appropriate memory permissions. This increases resistance to bypassing vulnerable kernel drivers and helps ensure that malware cannot run in kernel. Only code verified through code integrity can run in kernel mode.|

## Related topics
For more info about Hyper-V, see [Hyper-V on Windows Server 2016](https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/hyper-v-on-windows-server) or [Introduction to Hyper-V on Windows 10](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/about/). For more info about hypervisor, see [Hypervisor Specifications](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/tlfs).

- [OEM Security Considerations](OEM-security-considerations.md)