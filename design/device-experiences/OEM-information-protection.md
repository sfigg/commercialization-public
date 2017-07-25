---
title: Information protection considerations for OEMs
description: Provides guidance on what an OEM should do to enable information protection
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Information protection considerations for OEMs

##Windows Information Protection

##Device encryption
With the right hardware configurations, Windows 10 automatically encrypts a device, helping to keep customer data safe. OEMs contribute by implementing and testing the right hardware. To learn more, refer to [OEM device encryption](OEM-device-encryption).

Device encryption is enabled when:
1. The device contains a TPM 2.0 (Trusted Platform Module) with PCR7 support
2. UEFI Secure Boot is enabled
3. Platform Secure Boot is enabled
4. Direct memory access (DMA) protections is enabled 

**Note**: Windows 10 device encryption is enabled only after a user signs in with a Microsoft Account or an Azure Active Directory account. Device encryption is not enabled with local accounts.

* **TPM**: Device must include a TPM with PCR 7 support. See System.Fundamentals.TPM20.TPM20.
*Secure boot: UEFI Secure Boot is enabled. See System.Fundamentals.Firmware.UEFISecureBoot.
*InstantGo (AOAC) requirements or HSTI 1.1a validation. This requirement is met by one of the following:

##Remote business data removal

##Encrypted Individual Files and Folders (EFS)




 

 







