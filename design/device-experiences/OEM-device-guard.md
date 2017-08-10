---
title: Device Guard hardware requirements
description: Provides guidance on what an OEM should do to enable Device Guard
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Device Guard hardware requirements
Starting with Windows 10, version 1709, Device Guard is split into two features known as Windows Defender Exploit Guard and Windows Defender Application Control. These features are a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that are defined in an enterprise's code integrity policies. If the app isn’t trusted it can’t run, period. 

With hardware that meets basic requirements, it also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code. 

If you are an OEM building secure systems, you must provide the hardware to enable these features.

**Note**  If you are an enterprise IT administrator looking to deploy Device Guard, see [Requirements and deployment planning guidelines for Device Guard](http://go.microsoft.com/fwlink/?LinkId=822877).

## Windows Defender Exploit Guard
MOR, ASLR

Exploit Guard requires the following hardware. 
| Hardware requirement | Details | Benefit |
|----------------------|---------|---------|
| Hyper-V Code Integrity (HVCI) | HVCI) is a feature of Windows Defender Exploit Guard that ensures only drivers, executables, and DLLs that comply with the Windows Defender Application Control Code Integrity policy are allowed to run. | |
| Virtualization-based security (VBS) | In order for VBS to function, you as the OEM must provide CPU Virtualization extensions (called "Intel VT-x" or "AMD-V") and second-level address translation (SLAT). When the enterprise administrators enable the features associated with CPU virtualization extensions and SLAT, the Code Integrity service can run alongside the kernel in a Windows hypervisor-protected container. In addition, hardware that includes input/output memory management units (IOMMUs) provides even stronger protections. | |


#Application control
Starting with Windows 10, version 1709, the code integretity part of Device Guard has been split out into a separate feature known as Application control. 
With appropriate hardware, application control can use virtualization-based security (VBS) in Windows 10 to isolate the Code Integrity service from the Microsoft Windows kernel itself. In this case, the Code Integrity service runs alongside the kernel in a Windows hypervisor-protected container.
  



## Related topics


****