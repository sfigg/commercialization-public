---
title: Security considerations for Original Equipment Manufacturers (OEMs)
description: Provides guidance on what an OEM should do to enable or configure hardware-based protections
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
#Security considerations for Original Equipment Manufacturers (OEMs)
As an OEM you have an unique opportunity to impact the efficacy of the security measures abailable to your customers. Customers want and need the ability to secure their devices. Windows 10 security features are built on top of security enabled hardware and firmware. That's where you come in. If you want to provide a differentiator for your devices, or to sell in the Enterprise space, you want to provide the latest hardware enhancements, which in turn allow Windows 10 to be configured for safety. 

**Note:** If you are an IT Professional and want to understand how these features work, or how to deploy them in your enterprise, see [Device Security](https://docs.microsoft.com/en-us/windows/device-security/). 

## Unified Extensible Firmware Interface (UEFI)
UEFI is a replacement for the older BIOS firmware interface and the Extensible Firmware Interface (EFI) 1.10 specifications. When the devices starts, the firmware interface controls the booting process of the PC, and then passes control to Windows or another operating system. UEFI enables security features such as Secure Boot and factory encrypted drives that help prevent untrusted code from running before the operating system is loaded. 
To learn more about what you need to do in order to support UEFI, see [UEFI in Windows](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/uefi-in-windows).

To learn more about the specific requirements for UEFI, refer to the Unified Extensible Firmware Interface specification from [http://www.uefi.org/specifications](http://www.uefi.org/specifications). 

## Secure boot
Secure Boot is a security standard developed by members of the PC industry to help make sure that your PC boots using only software that is trusted by the PC manufacturer.

The firmware requirements for Secure boot are listed here.
- UEFI 2.3.1 Errata C or higher.
- The platform exposes an interface that adheres to the profile of UEFI v2.3.1 Section 27.
- The platform must come provisioned with the correct keys in the UEFI Signature database (db) to allow Windows to boot. It must also support secure authenticated updates to the db and dbx per the spec.
Storage of secure variables must be isolated from the running operating system such that they cannot be modified without detection.
- All firmware components are signed using at least RSA-2048 with SHA-256.
When power is turned on, the system starts executing code in the firmware and uses public key cryptography as per algorithm policy to verify the signatures of all images in the boot sequence, up to and including the Windows Boot Manager.
- The system must protect against rollback of firmware to older versions.
The platform provides the EFI_HASH_PROTOCOL (per UEFI v2.3.1) for offloading cryptographic hash operations and the EFI_RNG_PROTOCOL (Microsoft defined) for accessing platform entropy.

To learn more about Secure boot including manufacturing requirements, see [Secure boot](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/secure-boot-overview).



### Hypervisor-protected code integrity (HVCI)
HVCI is a system mitigation that protects kernel memory and the kernel mode code integrity process. It blocks malware that attempts to exploit kernel memory vulnerabilities (e.g. buffer overflows etc) because kernel memory pages are never writable and executable.

### Virtualization-based Security (VBS)
Hardware-based security features, also called virtualization-based security or VBS, provides isolation of secure kernel from normal operating system. Vulnerabilities and Day zero attacks in the operating system cannot be exploited because of this isolation.

VBS requires the following components be present and properly configured. 
* 64-bit CPU
* Windows hypervisor
* CPU virtualization extensions (called "Intel VT-x" or "AMD-V")
* Virtualization-based Security (VBS)
* Second-level address translation (SLAT)
* [optional] Input/output memory management units (IOMMUs) provides even stronger protections

#### Virtualization-based Security (VBS) enablement of No-Execute protection for UEFI runtime services

When you enable VBS, which is now required, VBS provides No-Execute (NX) protection for UEFI runtime service code and data memory regions. UEFI runtime service memory (not UEFI boot service memory) must meet the following requirements:

* UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable.

* Implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table.

* PE sections must be page-aligned in memory, except in non-volatile storage.

* The Memory Attributes Table must correctly mark code and data as RO/NX for configuration by Windows. 
All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both. Entries cannot be left with neither of these attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable.

The security benefit is that vulnerabilities in UEFI runtime services, if any (such as in functions like UpdateCapsule and SetVariable), will be blocked from compromising VBS.

### Trusted Plaform Module (TPM) 2.0
Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that helps you with actions such as generating, storing, and limiting the use of cryptographic keys. The chip includes multiple physical security mechanisms to make it tamper resistant, and malicious software is unable to tamper with the security functions of the TPM. 

Starting with Windows 10, the operating system automatically initializes and takes ownership of the TPM. That means that IT professionals should not have to configure or monitor the system. You as the Original Equipment Manufacturer(OEM) must provide the TPM 2.0 chip with PRC[7] support in your devices in order for this protection to be enabled for customers. For more information about the specific requirements that must be met, see [System.Fundamentals.TPM20](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/1703/systems#system.fundamentals.tpm20)

**Note:** If you are an IT Professional and want to understand how TPM works in your enterprise, see [Trusted Platform Module](https://docs.microsoft.com/en-us/windows/device-security/tpm/trusted-platform-module-top-node)

### Bitlocker device encryption
Bitlocker device encryption is a set of features that you as an Original Equipment Manufacturer (OEM) enable by providing the right set of hardware in the devices you sell. Without the proper hardware configuration, device encryption is not enabled. With the right hardware configurations, Windows 10 automatically encrypts a device.

For more information on what hardware you need to provide to enable device encryption, see [Bitlocker device encryption hardware requirements](OEM-device-encryption.md)

**Note:** If you are an IT Professional and want to understand how to configure and deploy Bitlocker in your enterprise, see [Bitlocker](https://docs.microsoft.com/en-us/windows/device-security/bitlocker/bitlocker-overview) content. 

## Windows Defender Credential Guard
To learn more about hardware requirements for Windows Defender Credential Guard in your enterprise, see [Windows Defender Credential Guard hardware requirements](OEM-credential-guard.md) 

**Note:** If you are an IT Professional and want to understand how to configure and deploy Windows Defender Credential Guard in your enterprise, see [Trusted Platform Module](https://docs.microsoft.com/en-us/windows/device-security/tpm/trusted-platform-module-top-node)

## Windows Defender Device Guard
Windows Defender Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that are defined in code integrity policies. Starting in Windows 10, 1703, the Windows Defender Device Guard features have been grouped into two new features: **Windows Defender Exploit Guard** and **Windows Defender Application control**. When these are both enabled, Windows Defender Device Guard is enabled. 
To learn more about hardware requirements for Windows Defender Device Guard, including **Windows Defender Exploit Guard** and **Windows Defender Application control**, see [Windows Defender Device Guard hardware requirements](OEM-device-guard.md).

**Note:** If you are an IT Professional and want to understand how to configure and deploy Windows Defender Device Guard in your enterprise, see [Device Guard deployment guide](https://docs.microsoft.com/en-us/windows/device-security/device-guard/device-guard-deployment-guide)

## Windows Hello

## Related topics
- HLK tests
- driver security framework
New IT Pro docs from Iaan and Justin

## Still to cover
- Trusted boot
- Measured boot
- Early Launch Anti-Malware (ELAM)) 

