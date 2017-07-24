---
title: Identity protection considerations for OEMs
description: Provides guidance on what an OEM should do to enable identity protection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Identity protection considerations for OEMs

##Windows Defender Application Guard

##Windows Defender Credential Guard
TBD: Break out requirements for virtualization based security and HVCI enablement and Cred Guard? What are OEM requirements for cred guard?

In order for a device to support Crendential Guard as specified in the Windows Hardware Compatibility Requirements (WHCR), you as the OEM must provide the following:

###Virtualization Based Security (VBS) enablement of No-Execute protection for UEFI runtime services
In Windows 10, Version 1793, and after, you must enable VBS. VBS will provide No-Execute (NX) protection on UEFI runtime service code and data memory regions. UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable.
UEFI runtime services must meet these requirements (applies to UEFI runtime service memory, but not UEFI boot service memory):

--Implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table.

--PE sections must be page-aligned in memory, except in non-volatile storage.

--The Memory Attributes Table must correctly mark code and data as RO/NX for configuration by Windows. 
All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both. Entries cannot be left with neither of these attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable.

The security benefit is that vulnerabilities in UEFI runtime services, if any (such as in functions like UpdateCapsule and SetVariable), will be blocked from compromising VBS.

###Firmware support for SMM protection
The Windows SMM Security Mitigations Table (WSMT) specification contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features. For more information, see the Windows SMM Security Mitigations Table (WMST) specification.

The security benefit is that vulnerabilities in UEFI runtime services, if any (such as in functions like UpdateCapsule and SetVariable), will be blocked from compromising VBS. This firmware protection also blocks additional security attacks against SMM.

###Hardware-rooted Platform Secure Boot
In Windows 10, version 1607 and Windows Server 2016, and after, Boot Integrity (known as Platform Secure Boot) must be supported. To learn more, see the [Hardware Compatibility Specification for Systems for Windows 10, version 1607](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems) under System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby. The Hardware Security Test Interface (HSTI) must be implemented. To learn more, see the [Hardware Security Testability Specification](https://msdn.microsoft.com/en-us/library/windows/hardware/mt712332(v=vs.85).aspx).

There are two security benefits. 
1. After the system is powered on, Platform Secure Boot provides protections against physically present attackers, and defense-in-depth against malware.
2. HSTI provides additional security assurance for correctly secured silicon and platform. TBD: what does "correctly secured silicon and platform" mean?

##Multi-factor authentication

##Multiple user profile

##User account control

##Secure user data (NTFS)
Also in list on Hardware considerations. Leave both places?

##Hardware secured and attested digital identities (TPM Key Attestation)
Also in list on Hardware considerations. Leave both places?

##Cloud based Certificate Reputation Service

##AAD Sign-In to Windows 




 

 







