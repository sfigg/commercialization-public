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
Device Guard is a combination of enterprise-related hardware and software security features that, when configured together, will lock a device down so that it can only run trusted applications that are defined in an enterprise's code integrity policies. If the app isn’t trusted it can’t run, period. With hardware that meets basic requirements, it also means that even if an attacker manages to get control of the Windows kernel, he or she will be much less likely to be able to run malicious executable code. 
If you are an OEM building secure systems, you must provide the hardware to enable these features. At a minimum, you need to support Virtualization-based security (VBS) by providing CPU Virtualization extensions (called "Intel VT-x" or "AMD-V") and second-level address translation (SLAT). When the enterprise administrators enable the features associated with CPU virtualization extensions and SLAT, the Code Integrity service can run alongside the kernel in a Windows hypervisor-protected container. In addition, hardware that includes input/output memory management units (IOMMUs) provides even stronger protections.

#Application control
Starting with Windows 10, version 1709, the code integretity part of Device Guard has been split out into a separate feature known as Application control. 
With appropriate hardware, application control can use virtualization-based security (VBS) in Windows 10 to isolate the Code Integrity service from the Microsoft Windows kernel itself. In this case, the Code Integrity service runs alongside the kernel in a Windows hypervisor-protected container.
  



## Related topics


****