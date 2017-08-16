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

##3 Windows Defender Credential Guard
To learn more about hardware requirements for Windows Defender Credential Guard in your enterprise, see [Windows Defender Credential Guard hardware requirements](OEM-credential-guard.md) 

**Note:** If you are an IT Professional and want to understand how to configure and deploy Windows Defender Credential Guard in your enterprise, see [Trusted Platform Module](https://docs.microsoft.com/en-us/windows/device-security/tpm/trusted-platform-module-top-node)

### Windows Defender Device Guard
Windows Defender Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that are defined in code integrity policies. If the app isn’t trusted it can’t run, period. With hardware that meets basic requirements, it also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code. If you are an OEM building secure systems, you must provide the hardware to enable these features.

Starting in Windows 10, 1703, the Windows Defender Device Guard features have been grouped into two new features: **Windows Defender Exploit Guard** and **Windows Defender Application control**. When these are both enabled, Windows Defender Device Guard is enabled. 

**Note**  If you are an enterprise IT administrator looking to deploy Device Guard, see [Requirements and deployment planning guidelines for Device Guard](http://go.microsoft.com/fwlink/?LinkId=822877).

#### Windows Defender Exploit Guard
Look into the following: MOR, ASLR, HIPS/EMET

Windows Defender Exploit Guard includes hypervisor-protected code integrity (HVCI), which is a kernel process mitigation that leverages virtualization based security to isolate the process that performs integrity validation and authorization for kernel-mode code. 

Exploit Guard requires the following hardware. 
| Hardware requirement | Details |
|----------------------|---------|
| VBS enablement of NX protection for UEFI runtime services | VBS will enable No-Execute (NX) protection on UEFI runtime service code and data memory regions. UEFI runtime service code must support read-only page protections, and UEFI runtime service data must not be executable.<br>UEFI runtime services must meet these requirements:<ul><li>Implement the UEFI 2.6 EFI_MEMORY_ATTRIBUTES_TABLE. All UEFI runtime service memory (code and data) must be described by this table.</li><li>PE sections need to be page-aligned in memory (not required in non-volatile storage).<li>The Memory Attributes Table needs to correctly mark code and data as RO/NX for configuration by the OS: <ul><li>All entries must include attributes EFI_MEMORY_RO, EFI_MEMORY_XP, or both.</li><li>No entries may be left with neither of the above attributes, indicating memory that is both executable and writable. Memory must be either readable and executable or writeable and non-executable.</li></ul></li></ul>**Note:** this only applies to UEFI runtime service memory, and not UEFI boot service memory.<p>**Note:** this protection is applied by VBS on OS page tables.</ul><p>Please also note the following:<br>• Do not use sections that are both writable and executable<br>• Do not attempt to directly modify executable system memory<br>• Do not use dynamic code</li></ul> | 
| Firmware Update through Windows Update | Firmware must support field updates through Windows Update and UEFI encapsulation update. TBD: Is this entry superceded by the next? Or do we need both?|
| Secure firmware update process | UEFI firmware must support secure firmware update following Hardware Compatibility Specification for Systems for Windows 10 under [System.Fundamentals.Firmware.UEFISecureBoot](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefisecureboot). |
| Hardware Rooted Trust Platform Secure Boot| Boot Integrity (Platform Secure Boot) must be supported. See the Windows Hardware Compatibility Program requirements under [System.Fundamentals.Firmware.CS.UEFISecureBoot.ConnectedStandby](https://msdn.microsoft.com/library/windows/hardware/dn932807(v=vs.85).aspx#system_fundamentals_firmware_cs_uefisecureboot_connectedstandby)<br> The Hardware Security Test Interface (HSTI) must be implemented. See [Hardware Security Testability Specification](https://msdn.microsoft.com/en-us/library/windows/hardware/mt712332(v=vs.85).aspx).|
| Windows edition | Windows 10 Enterprise, Education, IoT Enterprise, or Windows Server 2016. | 
| 64-bit CPU | Virtualization-based security (VBS) features require the Windows hypervisor, which is only supported on 64-bit processors |
| Virtualization extensions - Intel VT-x, AMD-V, and extended page tables | VBS is the foundation of Device Guard, and VBS works only if the processor supports virtualization with second level address translation support. This is required to support virtualization based security. |
| VT-D or AMD Vi IOMMU (Input/output memory management unit) | In Windows 10, an IOMMU can be used to enhance system resiliency against memory attacks. For more information, see [ACPI system description tables](https://msdn.microsoft.com/windows/hardware/drivers/bringup/acpi-system-description-tables). | Prevents advanced memory attacks | 
| Trusted Platform Module (TPM) version 2.0 | | Provides protection for VBS encryption keys that are stored in the firmware. |
| Hyper-V Code Integrity (HVCI) | HVCI is a feature of Windows Defender Exploit Guard that ensures only drivers, executables, and DLLs that comply with the Windows Defender Application Control Code Integrity policy are allowed to run. |
| HVCI-compatible drivers | VCI compatible drivers ensure that virtualization-based security can maintain the appropriate memory permissions. <p>Must meet all [HVCI Compatible](http://go.microsoft.com/fwlink/p/?LinkId=627463) Driver requirements as described in Hardware Compatibility Specification for Systems for Windows 10 under [Filter.Driver.DeviceGuard.DriverCompatibility](https://msdn.microsoft.com/en-us/library/windows/hardware/mt589732.aspx#filterdriverdeviceguarddrivercompatibility). |
| Virtualization-based security (VBS) | In order for VBS to function, you as the OEM must provide CPU Virtualization extensions (called "Intel VT-x" or "AMD-V") and second-level address translation (SLAT). When the enterprise administrators enable the features associated with CPU virtualization extensions and SLAT, the Code Integrity service can run alongside the kernel in a Windows hypervisor-protected container. In addition, hardware that includes input/output memory management units (IOMMUs) provides even stronger protections. 

| Securing Boot Configuration and Management | Required BIOS capability to allow adding of ISV, OEM, or Enterprise Certificate in Secure Boot DB at manufacturing time. Microsoft UEFI CA must be removed from Secure Boot DB. Support for 3rd-party UEFI modules is permitted but should leverage ISV-provided certificates or OEM certificate for the specific UEFI software.|

| UEFI 2.3.1.c or higher firmware along with Secure Boot | UEFI Secure Boot ensures that the device boots with only authorized code in the pre-OS environment. For more information, see the Hardware Compatibility Specification for Systems for Windows 10 under [System.Fundamentals.Firmware.UEFISecureBoot](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefisecureboot). |
| Firmware support for SMM protection | The Windows SMM Security Mitigations Table (WSMT) specification contains details of an Advanced Configuration and Power Interface (ACPI) table that was created for use with Windows operating systems that support Windows virtualization-based security (VBS) features.<br><br>• For more information, see the [Windows SMM Security Mitigations Table (WMST) specification](https://msdn.microsoft.com/en-us/library/windows/hardware/dn614617.aspx). |


#### Windows Defender Application control
Starting with Windows 10, version 1709, the code integretity part of Device Guard has been split out into a separate feature known as Application control. 
With appropriate hardware, application control can use virtualization-based security (VBS) in Windows 10 to isolate the Code Integrity service from the Microsoft Windows kernel itself. In this case, the Code Integrity service runs alongside the kernel in a Windows hypervisor-protected container.
  
 WDAC is used to control what code can run on the system in either kernel or user mode. When HVCI is enabled, WDAC benefits from the increased kernel memory protections since the kernel mode CI checks occur in virtualization based security and user mode code integrity runs as part of the kernel itself and is thus protected against kernel memory exploits.

**Note:** If you are an IT Professional and want to understand how to configure and deploy Windows Defender Device Guard in your enterprise, see [Device Guard deployment guide](https://docs.microsoft.com/en-us/windows/device-security/device-guard/device-guard-deployment-guide)

### Windows Hello

### Related topics
- HLK tests
- driver security framework
New IT Pro docs from Iaan and Justin

### Still to cover
- Trusted boot
- Measured boot
- Early Launch Anti-Malware (ELAM)) 

