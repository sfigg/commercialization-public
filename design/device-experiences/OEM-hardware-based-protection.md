---
title: Hardware-based protection considerations for OEMs
description: Provides guidance on what an OEM should do to enable Hardware-based protections
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Hardware-based protection considerations for OEMs

##Device Guard
Device Guard is not a feature; rather it is a set of features designed to work together to prevent and eliminate untrusted code from running on a Windows 10 system. Starting in Windows 10, version 1709, Device Guard consists of two parts, one focusing on hardware--called Windows Defender Exploit Guard, the other focusing on software--called Windows Defender Application Control. 

###Windows Defender Exploit Guard
Windows Defender Exploit Guard provides the hardware configuration portion of Device Guard.
* Platform & UEFI Secure Boot

###Windows Defender Application Control
Windows Defender Application Control provides the software configuration portion of Device Guard.
* Configurable Code Integrity (CCI)
* VSM Protected Code Integrity


##Device integrity protection
TBD: Can this section be merged into App control or exploit guard sections?
* TPM measurements
* Trusted Boot
* Measured Boot
* Early Launch Anti-Malware (ELAM)
 
#See also
[Windows 10 Device Guard and Credential Guard Demystified](https://blogs.technet.microsoft.com/ash/2016/03/02/windows-10-device-guard-and-credential-guard-demystified)
