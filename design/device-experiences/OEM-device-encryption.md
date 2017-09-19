---
title: Bitlocker device encryption hardware requiremnts
description: OEMs can configure hardware to support Windows 10 automatic device encryption.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# BitLocker device encryption hardware requirements

BitLocker device encryption is a set of features that you as an Original Equipment Manufacturer (OEM) enable by providing the right set of hardware in the devices you sell. Without the proper hardware configuration, device encryption is not enabled. With the right configuration, Windows 10 automatically encrypts a device. This topic, written for OEMs, describes what hardware requirements you have to meet to enable BitLocker device encryption. 

**IT Professionals:** Learn how to deploy BitLocker in the enterprise by reading the [BitLocker overview](https://docs.microsoft.com/en-us/windows/device-security/bitlocker/bitlocker-overviewe). 

##  Enable BitLocker

BitLocker automatic device encryption is enabled when the following conditions are met. OEMs who want to create hardware that supports this capability must verify that their device passes the tests in the column on the right. If any test in this sequence fails, the remaining tests will also fail.

| Requirement | Details | Test |
|:-------------|:-------------|:------|
| TPM | For more information, see [Trusted Plaform Module (TPM) 2.0 requirments](OEM-TPM.md) | [System.Fundamentals.TPM20.TPM20](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems#systemfundamentalstpm20tpm20)|
| Secure Boot | For more information, see [Secure Boot](OEM-secure-boot.md). | [System.Fundamentals.Firmware.UEFISecureBoot](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems#systemfundamentalsfirmwareuefisecureboot) |
| Direct memory access (DMA) | | |
| **MSA** or **AAD** account | Device encryption is enabled only after users sign in with a **Microsoft Account** or an **Azure Active Directory** account; device encryption is not enabled with local accounts. In addition to using a Microsoft Account, automatic Device Encryption can now encrypt your devices that are joined to an Azure Active Directory domain. When the device is encrypted, the BitLocker recovery key is automatically escrowed to Azure Active Directory. This will make it easier to recover your BitLocker key online. | |
| BCrypt provider| required to access the platform's cryptographic acceleration capabilities. A BCrypt provider is used in both user mode and kernel mode to provide the necessary cryptographic run-time services. | |
| HSTI validation | |This requirement is met through [HSTI test](https://msdn.microsoft.com/library/windows/hardware/mt712332.aspx): <ol><li>Platform Secure Boot self-test (or additional self-tests as configured in the registry) must be reported by HSTI as implemented and passed. </li> <li>Excluding Thunderbolt, HSTI must report no non-allowed DMA busses.</li><li>If Thunderbolt is present, HSTI must report that Thunderbolt is configured securely (security level must be SL1 – “User Authorization” or higher). </li></ol> |
| Advanced Encryption Standard (AES) acceleration |XTS-AES encryption algorithm | BitLocker now supports the XTS-AES encryption algorithm. XTS-AES provides additional protection from a class of attacks on encryption that rely on manipulating cipher text to cause predictable changes in plain text. BitLocker supports both 128-bit and 256-bit XTS-AES keys. It provides the following benefits: <ul><li>The algorithm is FIPS-compliant.</li><li>Easy to administer. You can use the BitLocker Wizard, manage-bde, Group Policy, MDM policy, Windows PowerShell, or WMI to manage it on devices in your organization. Note: Drives encrypted with XTS-AES will not be accessible on older version of Windows. This is only recommended for fixed and operating system drives. Removable drives should continue to use the AES-CBC 128-bit or AES-CBC 256-bit algorithms.</li></ul> |

### "Un-allowed DMA capable bus/device(s) detected" error
This error means that the system detected at least one DMA capable bus or device that may expose a DMA threat. To determine which bus/device triggered this error, run the Microsoft.UefiSecureBootLogo.CS.HardwareSecurity.Tests.ProbeForInsecureDirectMemoryAccessBusses HLK test. 
If the listed bus has only has internal facing access and with no ports exposed on the exterior of the device, then the OEM should consult with the IHV to ensure the bus is correctly identified before adding it to the "allowed" list as described below.
 ```
HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DmaSecurity\AllowedBuses 
 ```
Add string (REG_SZ) name/value pairs for each flagged DMA capable bus that is determined to be safe. 
For example, for a bus identified as “Contoso Root Port” with Vendor ID “0000” and Device ID “FFFF”: 
 ```
[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DmaSecurity\AllowedBuses] 
"Contoso Root Port"="PCI\VEN_0000&DEV_FFFF" 
 ```

### Disable device encryption
You as the OEM can choose to disable device encryption and instead implement your own encryption technology on a device. To disable device encryption, use one of the following methods, which essentially do the same thing. 

- Choice One: Use an Unattend file and set [PreventDeviceEncryption](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-securestartup-filterdriver-preventdeviceencryption) to True. To learn more, see [Use an answer file with Sysprep](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/use-answer-files-with-sysprep).

- Choice Two: Update this registry key:
**HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\BitLocker**
Value: **PreventDeviceEncryption** equal to True (1).

### Encrypted hard drive
An encrypted drive is a hardware solution that protects the user's data with BitLocker. It uses the hardware-based encryption solution to provide the user with seamless end-to-end data security.

With encrypted drive, you can deliver enhanced security protection out-of-the-box, with near zero-impact to the user. The combination of BitLocker and encrypted drive provides immediate encryption support with no noticeable effect on the user experience. 

To enable support for encrypted hard drive (eHDD), the device must meet the following requirements:

* Self-encrypting drives that meet industry specifications of IEEE 1667, TCG OPAL (subset), and INCITS T13
* UEFI 2.3.1 Class 2 implementation using GPT on the encrypted drive
* TPM 2.0
 
### To use another encryption standard
To use another encryption standard on your drive, you must first disable the automatic drive provisioning that Windows provides. To do this on a new installation, set the Microsoft-Windows-EnhancedStorage-Adm/TCGSecurityActivationDisabled Unattend setting to true. For more information, see the Unattended Windows Setup Reference.



