---
title: Security considerations for OEMs
description: Provides guidance on platform integrity and data protection features including Secure boot and BitLocker.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0C1E8C46-553F-4877-8119-683F6883B4A1
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Security considerations for OEMs

Top-level portal page with introductory text, value prop, brief descriptions of each "consideration" or "area" with links to key content pieces for more information. Overarching question to answer is "What do you as an OEM need to know about building a secure system?" This should be answered by this group of topics. 
Discuss these questions in this topic:

##Security concerns
Discuss what an OEM should understand about security threats and why to enable security features. TBD: do we need this section, or do you think our audience knows this already?

##What does a secure system look like?
The most secure system you can build has both parts of Device Guard fully enabled. 


Security consideration are categorized into four areas: threat protection, Identity protection, Information protection, and Hardware-based protection.

##Threat protection considerations

-[Threat protection considerations](OEM-threat-protection.md)
* Windows Defender System Guard

##Identity protection considerations

-[Identity protection considerations](OEM-identity-protection.md)

* Windows Defender Application Guard
* Windows Defender Credential Guard
* Multi-factor authentication
* Multiple user profile
* User account control
* Secure user data (NTFS)
Also in list on Hardware considerations. Leave both places?
* Hardware secured and attested digital identities (TPM Key Attestation)
Also in list on Hardware considerations. Leave both places?
* Cloud based Certificate Reputation Service
* AAD Sign-In to Windows 

##Information protection considerations

-[Information protection considerations](OEM-information-protection.md)

* Windows Information Protection

* Device encryption
With the right hardware configurations, Windows 10 automatically encrypts a device, helping to keep customer data safe. OEMs contribute by implementing and testing the right hardware. To learn more, refer to [OEM device encryption](OEM-device-encryption).

* Remote business data removal

* Encrypted Individual Files and Folders (EFS)

##Hardware-based considerations

-[Hardware-based considerations](OEM-hardware-based-protection.md)

* Device Guard

* Windows Defender Exploit Guard


* Windows Defender Application Control


* Device integrity protection
	* TPM measurements
	* UEFI Secure Boot
	* Trusted Boot
	* Measured Boot
	* Early Launch Anti-Malware (ELAM)) 


 

#See also

[Control the health of Windows 10-based devices](https://docs.microsoft.com/en-us/windows/device-security/protect-high-value-assets-by-controlling-the-health-of-windows-10-based-devices)



 

 







