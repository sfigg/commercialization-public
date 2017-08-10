---
title: Bitlocker device encryption hardware requiremnts
description: OEMs can configure hardware to support Windows 10 automatic device encryption.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# Bitlocker device encryption hardware requirements

Bitlocker device encryption is a set of features that you as an Original Equipment Manufacturer (OEM) enable by providing the right set of hardware in the devices you sell. Without the proper hardware configuration, device encryption is not enabled. With the right hardware configurations, Windows 10 automatically encrypts a device. This topic, written for OEMs, describes what hardware requirements you have to meet to enable Bitlocker device encryption. 

**Note:** If you are an IT Professional and want to deploy Bitlocker, learn more in [Bitlocker overview](https://docs.microsoft.com/en-us/windows/device-security/bitlocker/bitlocker-overviewe). 

##Enable Bitlocker
Bitlocker device encryption is enabled when the following conditions are met. OEMs who want to create hardware that supports this capability must verify that their device passes the tests in the column on the right. If any test in this sequence fails, the remaining tests will also fail.

| Requirement | Details | Test |
|:-------------|:-------------|:------|
| **TPM** | requires version 2.0 with PCR[7] support. For more information, see [Trusted Plaform Module (TPM) 2.0 requirments](OEM-TPM.md) | [System.Fundamentals.TPM20.TPM20](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems#systemfundamentalstpm20tpm20)|
| **UEFI Secure Boot** | | [System.Fundamentals.Firmware.UEFISecureBoot](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/systems#systemfundamentalsfirmwareuefisecureboot) |
| **Platform Secure Boot** | | |
| **Direct memory access (DMA)** | | |
| **MSA** or **AAD** account | Device encryption is enabled only after users sign in with a **Microsoft Account** or an **Azure Active Directory** account; device encryption is not enabled with local accounts | |
| **Advanced Encryption Standard (AES) acceleration** | | |
| **BCrypt provider**| required to access the platform's cryptographic acceleration capabilities. A BCrypt provider is used in both user mode and kernel mode to provide the necessary cryptographic run-time services. | |
| **InstantGo (AOAC)** requirements or **HSTI 1.1a** validation | This requirement is met by implementing InstantGo (AOAC) requirements. You can see these requirements in the [requirements for UEFI secure boot](https://msdn.microsoft.com/windows/hardware/commercialize/design/compatibility/systems#systemfundamentalsfirmwarecsuefisecurebootconnectedstandby) topic.
     | Starting with Windows 10, version, 1703, this requirement can be met through [HSTI test](https://msdn.microsoft.com/library/windows/hardware/mt712332.aspx):
        1.	Platform Secure Boot self-test (or additional self-tests as configured in the registry) must be reported by HSTI as implemented and passed.
        2.	Excluding Thunderbolt, HSTI must report no non-allowed DMA busses.
        3.	If Thunderbolt is present, HSTI must report that Thunderbolt is configured securely (security level must be SL1 – “User Authorization” or higher). |
 
### Un-allowed DMA capable bus/device(s) detected
This error means that the system detected at least one DMA capable bus or device that may expose a DMA threat.  To determine which bus/device triggered this error, run the Microsoft.UefiSecureBootLogo.CS.HardwareSecurity.Tests.ProbeForInsecureDirectMemoryAccessBusses HLK test. 
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
OEMs can choose to disable device encryption and instead implement their own encryption technology on a device. To disable device encryption, use one of the following methods, which essentially do the same thing. 

- Choice One: Use an Unattend file and set [PreventDeviceEncryption](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-securestartup-filterdriver-preventdeviceencryption) to True. To learn more, see [Use an answer file with Sysprep](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/use-answer-files-with-sysprep).

- Choice Two: Update this registry key:
**HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\BitLocker**
Value: **PreventDeviceEncryption** equal to True (1).

### Encrypted hard drive

An encrypted drive is a hardware solution that protects the user's data with BitLocker. It uses the hardware-based encryption solution to provide the user with seamless end-to-end data security.

With encrypted drive, you can deliver enhanced security protection out-of-the-box, with near zero-impact to the user. The combination of BitLocker and encrypted drive provides immediate encryption support with no noticeable effect on the user experience. 

To enable support for encrypted hard drive, the device must meet the following requirements:

* Self-encrypting drives that meet industry specifications of IEEE 1667, TCG OPAL (subset), and INCITS T13
* UEFI 2.3.1 Class 2 implementation using GPT on the encrypted drive (to support boot)
* TPM 2.0

**Warning:** Self-encrypting hard drives and encrypted hard drives for Windows are not the same type of device. Encrypted hard drives for Windows require compliance for specific TCG protocols as well as IEEE 1667 compliance; self-Encrypting hard drives do not have these requirements. 

**Note:** If you are an IT Professional and want to deploy encrypted hard drive, learn more in [Encrypted hard drive](https://docs.microsoft.com/en-us/windows/device-security/encrypted-hard-drive). 


