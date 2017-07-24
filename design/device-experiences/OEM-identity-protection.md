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
Credential Guard adds identity protection support to Windows 10.
In order for a device to support Crendential Guard as specified in the Windows Hardware Compatibility Requirements (WHCR), you as the OEM must provide the following hardware, software, or firmware features. Depending on how you support these features, your device will fall into one of the following categories of hardware readiness.

--Ready. Devices are immediately capable of enabling all Credential Guard features through central administration tasks, such as Group Policy or device management. Credential Guard Ready machines that are built with a custom desktop image can be provided to a customer with fully enabled virtualization-based security features. 

--Capable. Devices support the required hardware features, but the configuration state of the device is such that a physically present, privileged user must change it to the required state before the device is in the Credential Guard "Ready" state. An example is a computer that supports virtualization extensions but does not have virtualization extensions enabled in the BIOS. As a result, those extensions will need to be enabled before any of the virtualization-based security features are enabled. 

--Not supported. Devices that do not support the required hardware features and configurations in the following sections are not capable of supporting Credential Guard.

Important: The following sectionss are additive, so that you must meet all of the previous requirements in addition to the requirements for the current build. 

###Virtualization Based Security (VBS) enablement of No-Execute protection for UEFI runtime services
In Windows 10, Version 1703, and after, you must enable VBS. VBS will provide No-Execute (NX) protection on UEFI runtime service code and data memory regions. UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable.
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

Note:
This is independent of Modern Standby/Connected Standby Systems; all systems using Credential Guard must pass HSTI 1.1.a.

There are two security benefits. 
1. After the system is powered on, Platform Secure Boot provides protections against physically present attackers, and defense-in-depth against malware.
2. HSTI provides additional security assurance for correctly secured silicon and platform. TBD: what does "correctly secured silicon and platform" mean? Does saying this add anything to the understanding of this feature? I would probably remove this sentence or provide a better desription of what HSTI provides.

###Firmware update through Windows Update
Firmware must support field updates through Windows Update and UEFI encapsulation update. 

The security benefit is that firmware updates are fast, secure, and reliable.

###Secure Boot configuration and Management

As the OEM, you must provide the ability, in BIOS, to add ISV, OEM, or Enterprise certificates to the Secure Boot database at manufacturing time. The Microsoft UEFI CA must be removed from the same Secure Boot database. Support for 3rd-party UEFI modules is permitted but should leverage ISV-provided certificates or OEM certificate for the specific UEFI software.

There are two security benefits. 
1. Enterprises can choose to allow proprietary EFI drivers/applications to run.
2. emoving Microsoft UEFI CA from the Secure Boot database provides enterprises with full control over software that runs before the operating system boots.

###64-bit CPU
In Windows 10, Version 1507 and after, Virtualization-Based Security (VBS) features requires Windows hypervisor, which is only supported on 64-bit processors. 

###Virtualization extensions - Intel VT-x, AMD-V, and extended page tables
VBS only works if the processor supports virtualization with second level address translation. 
The security benefit is that VBS provides isolation of the secure kernel from the rest of Windows. TBD: is this still technically accurate? Zero-day vulnerabilities and in Windows cannot be exploited because of this isolation.

###VT-D or AMD Vi Input/output memory management unit(IOMMU)

IOMMU enhances system resiliency against memory attacks. For more information, see [ACPI system description tables](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/acpi-system-description-tables).

###Trusted Platform Module (TPM)

You can use either discrete or firmware TPMs. TPM 1.2 and 2.0 provide protection for VBS encryption keys that are stored in the firmware. Credential Guard data is protected against attacks involving a physically present user with BIOS and hardware access.

###UEFI 2.3.1.c or higher firmware along with Secure Boot

UEFI Secure Boot ensures that the device boots with only authorized code in the pre-OS environment. For more information, see [System.Fundamentals.Firmware.UEFISecureBoot](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems#systemfundamentalsfirmwareuefisecureboot).

###Securing boot configuration and management
To support this, you must allow BIOS password or stronger authentication to ensure that only the authenticated Platform BIOS administrator can change BIOS settings. You must also provide a protected BIOS option to configure a list of permitted boot devices and the boot device order, which overrides the BOOTORDER modification made by the OS to boot only from an internal hard drive, for example.

BIOS options related to security and boot options must be secured to prevent other operating systems from starting and to prevent changes to the BIOS settings. BIOS authentication must be set. For example, the BIOS password must be set.

There are two security benefits.

1. BIOS password is required to protect against a physically present user with BIOS access.

2. When locked, boot order provides protection against an admin user booting into WinRE or any other OS from bootable media.

###Secure Memory Overwrite Request (MOR) revision 2
A secure MOR bit prevents certain memory attacks so this is necessary for Credential Guard. For more information, see [Secure MOR implementation](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/device-guard-requirements).

##Multi-factor authentication

##Multiple user profile

##User account control

##Secure user data (NTFS)
Also in list on Hardware considerations. Leave both places?

##Hardware secured and attested digital identities (TPM Key Attestation)
Also in list on Hardware considerations. Leave both places?

##Cloud based Certificate Reputation Service

##AAD Sign-In to Windows 




 

 







