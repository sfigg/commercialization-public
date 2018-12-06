---
title: Windows Defender System Guard: Making a leap forward in platform security with Memory integrity in Core isolation (Windows 10)
description: You can configure Intune settings to reduce threats from removable storage such as USB devices.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.author: justinha
author: justinha
ms.date: 12/07/2018
robots: noindex,nofollow
---

# Windows Defender System Guard: Making a leap forward in platform security with Memory integrity in Core isolation 

The escalating sophistication of cyberattacks is marked by the increased use of kernel-level exploits that attempt to run malware with the highest privileges and evade security solutions and software sandboxes. 
For example, kernel exploits famously gave the WannaCry and Petya ransomware a remote code execution capability, resulting in wide scale global outbreaks, the likes of which have not been seen in many years. 
Windows 10 remained resilient to these attacks, but Microsoft is constantly evolving protections to stay ahead of threat actors. 

Since the initial release of Windows 10 (1507), enterprise customers have had the option to enable virtualization-based security ([VBS](https://docs.microsoft.com/windows-hardware/design/device-experiences/oem-vbs)) and Memory Integrity (Hypervisor protected code integrity or HVCI) to [increase platform threat resistance](https://cloudblogs.microsoft.com/microsoftsecure/2017/06/16/analysis-of-the-shadow-brokers-release-and-mitigation-with-windows-10-virtualization-based-security/). 
In Windows 10 Creators Update (1709) we consolidated these system integrity features in [Windows Defender System Guard](https://cloudblogs.microsoft.com/microsoftsecure/2017/10/23/hardening-the-system-and-maintaining-integrity-with-windows-defender-system-guard/). 
Memory Integrity used to be under Windows Defender Device Guard, and some tools to test Memory Integrity still remain there.

Memory Integrity will be available and turned on by default in clean installs of the Windows 10 operating system; for older systems, customers will have the ability to opt in via our Windows Defender Security Center UI. 
This enhancement will ensure that the kernel process that verifies code integrity runs in a secure runtime environment provided by VBS. 
This will allow Windows 10 to protect the widest possible range of diverse users and scenarios.

In addition, with Memory integrity protection, kernel memory pages are only made executable after passing code integrity checks inside the secure runtime environment, and executable pages themselves are never writable. 
This is an enhancement to intrusion prevention capabilities in [Windows Defender Exploit Guard](https://cloudblogs.microsoft.com/microsoftsecure/2017/10/23/windows-defender-exploit-guard-reduce-the-attack-surface-against-next-generation-malware/).  

![System Guard](../images/system-guard.png)

## Application compatibility

As a result of these enhancements, in a future version of Windows 10, all kernel mode code must be signed by Microsoft. 
Some applications may be incompatible with Memory integrity protection. 

While hypervisor-protected code integrity compliance has been a requirement for all drivers since Windows 10 Anniversary Update (1607), some drivers may still not be compatible. 
This may cause devices or software to malfunction. 
Such issues may occur after Memory integrity protection has been turned on or during the enablement process itself. 
If you’re an application developer and want to validate if your drivers and software packages are compliant with memory integrity, you can follow the steps below.

Some example of application incompatible areas Microsoft has seen in testing are in the following areas:

- Anti-Cheat solutions with Gaming 
- 3rd Party Input Methods
- 3rd Party Banking Password Protection

We worked hard to mitigate impacted experiences, so if an incompatibility exists for a boot-critical driver, Memory integrity protection will be silently turned off. 
If you encounter incompatibilities with other apps, Microsoft advises that you check for updates for the specific app and version encountering the issue before turning off Memory integrity protection. 

## How to build compatible drivers


