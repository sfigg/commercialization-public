---
title: Security considerations for Original Equipment Manufacturers (OEMs)
description: Provides guidance on what an OEM should do to enable or configure hardware-based protections
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 09/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Security considerations for Original Equipment Manufacturers (OEMs)

As an OEM you have an unique opportunity to impact the efficacy of the security measures abailable to your customers. Customers want and need the ability to secure their devices. Windows 10 security features are built on top of security enabled hardware and firmware. That's where you come in. If you want to provide a differentiator for your devices, or to sell in the Enterprise space, you want to provide the latest hardware enhancements, which in turn allow Windows 10 to be configured for safety. 

**Note:** If you are an IT Professional and want to understand how these features work, or how to deploy them in your enterprise, see [Device Security](https://docs.microsoft.com/en-us/windows/device-security/). 

## Unified Extensible Firmware Interface (UEFI) requirements

UEFI is a replacement for the older BIOS firmware interface and the Extensible Firmware Interface (EFI) 1.10 specifications. When the devices starts, the firmware interface controls the booting process of the PC, and then passes control to Windows or another operating system. UEFI enables security features such as Secure Boot and factory encrypted drives that help prevent untrusted code from running before the operating system is loaded. To learn more aobut the OEM requirements for UEFI, see [UEFI firmware requirements](OEM-UEFI.md)

To learn more about what you need to do in order to support UEFI drivers, see [UEFI in Windows](https://docs.microsoft.com/en-us/windows-hardware/drivers/bringup/uefi-in-windows).

To learn more about the requirements specified in the Unified Extensible Firmware Interface specification, see [UEFI specifications](http://www.uefi.org/specifications). 

## Hypervisor-protected code integrity (HVCI)

HVCI is a system mitigation that protects kernel memory and the kernel mode code integrity process. It blocks malware that attempts to exploit kernel memory vulnerabilities (e.g. buffer overflows etc) because kernel memory pages are never writable and executable.

## Virtualization-based Security (VBS)

Hardware-based security features, also called virtualization-based security or VBS, provides isolation of secure kernel from normal operating system. Vulnerabilities and Day zero attacks in the operating system cannot be exploited because of this isolation. For more information about VBS hardware requirements, see [Virtualization Based Security (VBS) hardware requirements](OEM-VBS.md)


## Trusted Plaform Module (TPM) 2.0

Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that helps you with actions such as generating, storing, and limiting the use of cryptographic keys. The chip includes multiple physical security mechanisms to make it tamper resistant, and malicious software is unable to tamper with the security functions of the TPM. For more information, see [Trusted Plaform Module (TPM) 2.0 hardware requirements](OEM-TPM.md).

**Note:** If you are an IT Professional and want to understand how TPM works in your enterprise, see [Trusted Platform Module](https://docs.microsoft.com/en-us/windows/device-security/tpm/trusted-platform-module-top-node)

## Secure Boot

Secure Boot is a security standard developed by members of the PC industry to help make sure that your PC boots using only software that is trusted by the PC manufacturer. When the PC starts, the firmware checks the signature of each piece of boot software, including firmware drivers (Option ROMs), EFI applications, and the operating system. If the signatures are good, the PC boots, and the firmware gives control to the operating system.

To learn more about Secure Boot requirements for OEMs, see [Secure Boot, Trusted Boot, and Measured Boot](OEM-secure-boot.md).

## Bitlocker device encryption

Bitlocker device encryption is a set of features that you as an Original Equipment Manufacturer (OEM) enable by providing the right set of hardware in the devices you sell. Without the proper hardware configuration, device encryption is not enabled. With the right hardware configurations, Windows 10 automatically encrypts a device.

For more information on what hardware you need to provide to enable device encryption, see [Bitlocker device encryption hardware requirements](OEM-device-encryption.md)

**Note:** If you are an IT Professional and want to understand how to configure and deploy Bitlocker in your enterprise, see [Bitlocker](https://docs.microsoft.com/en-us/windows/device-security/bitlocker/bitlocker-overview) content. 

## Windows Defender Credential Guard

Credential Guard uses virtualization-based security to isolate and protect secrets (e.g., NTLM password hashes and Kerberos ticket-granting tickets) to block pass-the-hash or pass-the-ticket attacks. When Windows Defender Credential Guard is enabled, NTLMv1, MS-CHAPv2, Digest, and CredSSP cannot use the signed-in credentials. Thus, single sign-on does not work with these protocols. However, applications can prompt for credentials or use credentials stored in the Windows Vault which are not protected by Windows Defender Credential Guard with any of these protocols. It is strongly recommended that valuable credentials, such as the sign-in credentials, not be used with any of these protocols. If these protocols must be used by domain or Azure AD users, secondary credentials should be provisioned for these use cases.+
When Windows Defender Credential Guard is enabled, Kerberos does not allow unconstrained Kerberos delegation or DES encryption, not only for signed-in credentials, but also prompted or saved credentials.

To learn more about hardware requirements for Windows Defender Credential Guard, see [Windows Defender Credential Guard hardware requirements](OEM-credential-guard.md) 

**Note:** If you are an IT professional and want to understand how to configure and deploy Credential Guard in your enterprise, see [Protect derived domain credentials with Windows Defender Credential Guard](https://docs.microsoft.com/en-us/windows/access-protection/credential-guard/credential-guard).

## Windows Defender Device Guard

Windows Defender Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that are defined in code integrity policies. If the app isn’t trusted it can’t run, period. With hardware that meets basic requirements, it also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code. If you are an OEM building secure systems, you must provide the hardware to enable these features.

Starting in Windows 10, 1703, the Windows Defender Device Guard features have been grouped into two new features: **Windows Defender Exploit Guard** and **Windows Defender Application control**. When these are both enabled, Windows Defender Device Guard is enabled. For more information about Windows Defender Device Guard hardware requirements, see [](Windows Defender Device Guard hardware requirements.md).

**Note**  If you are an enterprise IT administrator looking to deploy Device Guard, see [Requirements and deployment planning guidelines for Device Guard](http://go.microsoft.com/fwlink/?LinkId=822877).

## Windows Defender Application Guard

Application Guard helps to isolate enterprise-defined untrusted sites, protecting an enterprise while its employees browse the Internet. If you are selling devices to enterprise customers, you want to provide hardware that supports the security features that enterprises need. To learn more about hardware requirements for Windows Defender Application Guard, see [Windows Defender Application Guard hardware requirements](OEM-app-guard.md).

## Windows Hello

Microsoft Windows Hello, part of Windows 10, gives users a personal, secured experience where the device is authenticated based on their presence. Users can log in with a look or a touch, with no need for a password. In conjunction with Microsoft Passport, biometric authentication uses fingerprints or facial recognition and is more secure, more personal, and more convenient. 

For information about how Windows Hello works with the Companion Device Framework, see [Windows Hello and the Companion Device Framework](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/windows-hello-companion-device-framework). 

For information on requirements for supporting Windows Hello, see [Windows Hello biometric requirements](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/windows-hello-biometric-requirements). 

For information about how face authentication works, see [Windows Hello face authentication](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/windows-hello-face-authentication).


