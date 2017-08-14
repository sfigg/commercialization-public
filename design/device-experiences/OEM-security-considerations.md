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

**Note:** If you are an IT Professional and want to deploy these features, learn more in the [Device Security](https://docs.microsoft.com/en-us/windows/device-security/) content. 

##Hardware requirements to enable security features
The following section describes the security hardware you should include in your systems and why.

### Unified Extensible Firmware Interface (UEFI)
UEFI is a replacement for the older BIOS firmware interface and the Extensible Firmware Interface (EFI) 1.10 specifications. When the devices starts, the firmware interface controls the booting process of the PC, and then passes control to Windows or another operating system. UEFI enables security features such as Secure Boot and factory encrypted drives that help prevent untrusted code from running before the operating system is loaded. 

Secure Boot requires UEFI 2.3.1 Errata C or higher.

Switch legacy BIOS boot and CSM to UEFI and GPT 

To learn more about the specific requirements for UEFI, see the Unified Extensible Firmware Interface specification from [http://www.uefi.org/specifications](http://www.uefi.org/specifications). 

**Note:** If you are an IT Professional and want to understand how these features work in your enterprise, see [Bitlocker](https://docs.microsoft.com/en-us/windows/device-security/bitlocker/bitlocker-overview) content. 
### Secure boot

The firmware requirements for Secure boot are listed here.

- The platform exposes an interface that adheres to the profile of UEFI v2.3.1 Section 27.
-The platform must come provisioned with the correct keys in the UEFI Signature database (db) to allow Windows to boot. It must also support secure authenticated updates to the db and dbx per the spec.
Storage of secure variables must be isolated from the running operating system such that they cannot be modified without detection.
-All firmware components are signed using at least RSA-2048 with SHA-256.
When power is turned on, the system starts executing code in the firmware and uses public key cryptography as per algorithm policy to verify the signatures of all images in the boot sequence, up to and including the Windows Boot Manager.
--The system must protect against rollback of firmware to older versions.
The platform provides the EFI_HASH_PROTOCOL (per UEFI v2.3.1) for offloading cryptographic hash operations and the EFI_RNG_PROTOCOL (Microsoft defined) for accessing platform entropy.

### Trusted boot

### Measured boot

### Early Launch Anti-Malware (ELAM)) 



### Virtualization-based Security (VBS)
For more information, see [Virtualization-based Security (VBS)](OEM-VBS.md). 

### Trusted Plaform Module (TPM) 2.0
Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that helps you with actions such as generating, storing, and limiting the use of cryptographic keys. For more information, see [Trusted Plaform Module (TPM)](OEM-TPM.md). 

**Note:** If you are an IT Professional and want to understand how TPM works in your enterprise, see [Trusted Platform Module](https://docs.microsoft.com/en-us/windows/device-security/tpm/trusted-platform-module-top-node)

##Security features enabled by hardware
The previous sections discussed security hardware, by explaining what each component does and what is required of it. Security hardware does not work alone, however. Solutions are not exclusively hardware, there are also firmware and software requirements. When the requirements are packaged together, we call that group of functionality by a specific name, for instance Windows Defender Device Guard. The following sections discuss these features, and what harware is required to enable them. 

### Bitlocker device encryption
Bitlocker device encryption is a set of features that you as an Original Equipment Manufacturer (OEM) enable by providing the right set of hardware in the devices you sell. Without the proper hardware configuration, device encryption is not enabled. With the right hardware configurations, Windows 10 automatically encrypts a device.
For more information on what hardware you need to provide to enable device encryption, see [Bitlocker device encryption hardware requirements](OEM-device-encryption.md)

**Note:** If you are an IT Professional and want to understand how to configure and deploy Bitlocker in your enterprise, see [Bitlocker](https://docs.microsoft.com/en-us/windows/device-security/bitlocker/bitlocker-overview) content. 

### Windows Defender Credential Guard
To learn more about hardware requirements for Windows Defender Credential Guard, see [Windows Defender Credential Guard hardware requirements](OEM-credential-guard.md) 

**Note:** If you are an IT Professional and want to understand how to configure Windows Defender Credential Guard, see [Trusted Platform Module](https://docs.microsoft.com/en-us/windows/device-security/tpm/trusted-platform-module-top-node)

### Windows Defender Device Guard
Windows Defender Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that are defined in code integrity policies. Starting in Windows 10, 1703, the Windows Defender Device Guard features have been grouped into two new features: Windows Defender Exploit Guard and Windows Defender Application control. When these are both enabled, Windows Defender Device Guard is enabled. 
To learn more about hardware requirements for Windows Defender Device Guard, see [Windows Defender Device Guard hardware requirements](OEM-device-guard.md)

**Note:** If you are an IT Professional and want to understand how to configure and deploy Windows Defender Device Guard in your enterprise, see [Device Guard deployment guide](https://docs.microsoft.com/en-us/windows/device-security/device-guard/device-guard-deployment-guide)

### Windows Hello

#Related topics
HLK tests
driver security framework


