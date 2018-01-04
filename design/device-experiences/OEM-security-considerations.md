---
title: Security considerations for Original Equipment Manufacturers (OEMs)
description: Provides guidance on what an OEM should do to enable or configure hardware-based protections
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 09/29/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Security considerations for Original Equipment Manufacturers (OEMs)

As an OEM, you have a unique opportunity to impact the efficacy of the security measures available to your customers. Customers want and need the ability to secure their devices. Windows 10 security features are built on top of security-enabled hardware and firmware. That's where you come in. If you want to provide a differentiator for your devices, or to sell in the Enterprise space, you want to provide the latest hardware enhancements, which in turn allow Windows 10 to be configured for safety. 

**IT Professionals:** To learn more about these features including how to deploy them in your enterprise, see [Device Security](https://docs.microsoft.com/windows/device-security/) and [Control the health of Windows 10-based devices](https://docs.microsoft.com/windows/device-security/protect-high-value-assets-by-controlling-the-health-of-windows-10-based-devices?).

## Windows 10 S
Windows 10 S is a specific configuration of Windows 10 Pro that offers a familiar Windows experience that’s streamlined for security and performance. Windows 10 S provides the best of the cloud and full featured apps, and is designed for modern devices. Windows Defender is always on and always up-to-date. 

Windows 10 S will only run verified apps from the Store and verified drivers from Windows Update. Windows 10 S provides supports Azure Active Directory, and when paired with MSA or Intune for Education, Windows 10 S defaults to storing files to OneDrive. 

**OEMs:** For more information about Windows 10 S, see [Windows 10 S security features and requirements for OEMs](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/oem-10s-security).

## BitLocker device encryption

BitLocker device encryption is a set of features that you as an OEM enable by providing the right set of hardware in the devices you sell. Without the proper hardware configuration, device encryption is not enabled. With the right hardware configurations, Windows 10 automatically encrypts a device.

**OEMs:** To learn more about BitLocker, see [BitLocker drive encryption in Windows 10 for OEMs](OEM-bitlocker.md).

## Secure Boot

Secure Boot is a security standard developed by members of the PC industry to help make sure that your PC boots using only software that is trusted by the PC manufacturer. When the PC starts, the firmware checks the signature of each piece of boot software, including firmware drivers (Option ROMs), EFI applications, and the operating system. If the signatures are valid, the PC boots, and the firmware gives control to the operating system.

**OEMs:** To learn more about Secure Boot requirements for OEMs, see [Secure Boot](OEM-secure-boot.md).

## Trusted Platform Module (TPM) 2.0

Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that helps you with actions such as generating, storing, and limiting the use of cryptographic keys. The chip includes multiple physical security mechanisms to make it tamper resistant, and malicious software is unable to tamper with the security functions of the TPM.

**Note:** Since July 28, 2016, all new device models, lines or series (or if you are updating the hardware configuration of an existing model, line or series with a major update, such as CPU, graphic cards) must implement and enable by default TPM 2.0 (details in section 3.7 of the Minimum hardware requirements page). The requirement to enable TPM 2.0 only applies to the manufacturing of new devices.

**OEMs:** For more information, see [Trusted Platform Module (TPM) 2.0 hardware requirements](OEM-TPM.md).

**IT Professionals:** To understand how TPM works in your enterprise, see [Trusted Platform Module](https://docs.microsoft.com/windows/device-security/tpm/trusted-platform-module-top-node)

## Unified Extensible Firmware Interface (UEFI) requirements

UEFI is a replacement for the older BIOS firmware interface. When the devices starts, the firmware interface controls the booting process of the PC, and then passes control to Windows or another operating system. UEFI enables security features such as Secure Boot and factory encrypted drives that help prevent untrusted code from running before the operating system is loaded. As of Windows 10, version 1703, Microsoft requires UEFI Specification version 2.3.1c. To learn more about the OEM requirements for UEFI, see [UEFI firmware requirements](OEM-UEFI.md).

**OEMs:** To learn more about what you need to do in order to support UEFI drivers, see [UEFI in Windows](https://docs.microsoft.com/windows-hardware/drivers/bringup/uefi-in-windows).

## Virtualization-based Security (VBS)

Hardware-based security features, also called virtualization-based security or VBS, provides isolation of secure kernel from normal operating system. Vulnerabilities and Zero-Day attacks in the operating system cannot be exploited because of this isolation. 

**OEMs:** For more information about VBS hardware requirements, see [Virtualization Based Security (VBS) hardware requirements](OEM-VBS.md).

## Windows Defender Application Guard

Application Guard helps to isolate enterprise-defined untrusted sites, protecting an enterprise while its employees browse the Internet. 

If you are selling devices to enterprise customers, you want to provide hardware that supports the security features that enterprises need. 

**OEMs:** To learn more about hardware requirements for Windows Defender Application Guard, see [Windows Defender Application Guard hardware requirements](OEM-app-guard.md).


## Windows Defender Credential Guard

Credential Guard uses virtualization-based security to isolate and protect secrets (for example, NTLM password hashes and Kerberos ticket-granting tickets) to block pass-the-hash or pass-the-ticket attacks. 

**OEMs:** To learn more about hardware requirements for Windows Defender Credential Guard, see [Windows Defender Credential Guard hardware requirements](OEM-credential-guard.md).

**IT Professionals:** To learn how to configure and deploy Windows Defender Credential Guard in your enterprise, see [Protect derived domain credentials with Windows Defender Credential Guard](https://docs.microsoft.com/windows/access-protection/credential-guard/credential-guard).

## Windows Defender Device Guard

Windows Defender Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that are defined in code integrity policies. 

Starting in Windows 10, 1703, the Windows Defender Device Guard features have been grouped into two new features: **Windows Defender Exploit Guard** and **Windows Defender Application control**. When these are both enabled, Windows Defender Device Guard is enabled. 

**OEMs:** For more information about Windows Defender Device Guard hardware requirements, see [Windows Defender Device Guard hardware requirements](OEM-device-guard.md).


**IT Professionals:** To learn how to deploy Windows Defender Device Guard in your enterprise, see [Requirements and deployment planning guidelines for Device Guard](http://go.microsoft.com/fwlink/?LinkId=822877).

## Windows Hello

Microsoft Windows Hello gives users a personal, secured experience where the device is authenticated based on their presence. Users can log in with a look or a touch, with no need for a password. In conjunction with Microsoft Passport, biometric authentication uses fingerprints or facial recognition and is more secure, more personal, and more convenient. 

For information about how Windows Hello works with the Companion Device Framework, see [Windows Hello and the Companion Device Framework](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-companion-device-framework). 

For information on biometric requirements for supporting Windows Hello, see [Windows Hello biometric requirements](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-biometric-requirements). 

For information about how face authentication works, see [Windows Hello face authentication](https://docs.microsoft.com/windows-hardware/design/device-experiences/windows-hello-face-authentication).
