---
title: Virtualization Based Security System Resource Protections  
description: Provides details for OEMs on how VBS protects access to system resources
ms.author: allenma
ms.date: 4/30/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Virtualization Based Security System Resource Protections

Virtualization-based security, or VBS, uses hardware virtualization features to create a secure environment which can host a number of security features. Running these security applications inside VBS provides offers greatly increased protection from vulnerabilities in the operating system, and prevents the use of malicious OS exploits which attempt to defeat protections.

VBS uses the Windows hypervisor to create this virtual secure mode, and to enforce restrictions which protect vital system and operating system resources, or to protect security assets such as authenticated user credentials. With the increased protections offered by VBS, even if malware gains access to the OS kernel, the possible exploits can be greatly limited and contained because the hypervisor can prevent the malware from executing code or accessing platform secrets.

For more background on VBS please refer to [Virtualization-based Security (VBS)](OEM-VBS.md).

## VBS changes the trust model

While VBS greatly improves platform security, VBS also changes the trust boundaries in a Windows PC. With VBS, the Windows hypervisor controls many aspects of the underlying hardware that provide the basis for the VBS secure enviromnent. The hypervisor must assume the Windows kernel could become compromised by malicious code, and so must protect key system resources from being manipulated from code running in kernel mode in a manner that could compromize security assets.

## Understanding processor MSRs

One area of vital system resources the hypervisor must protect from malicious use is processor model-specific registers, or MSRs. Modern processors support a great number of MSRs, many of which control key aspects of the processor's behavior. MSRs may only be read from or written to kernel mode code (that is, CPL0). Altering the settings controlled by MSRs could allow malicious kernel mode code to change the behavior of the system and allow an attacker to gain control, compromising security. In addition, many MSRs contain data about the system's operation, such as tracing or diagnostic data, which could also be used to reveal or calculate security assets. Therefore, the hypervisor must identify and protect against the misuse of any MSRs that could compromise the security posture of VBS.

MSRs are accessed via an index, which is a unique per-MSR identifier. Historically, many MSRs have been established as architectural; that is, their presence and function remain architecturally consistent across multiple processor generations. In this case, a known MSR with a documented MSR index and definition can be relied on to control a known, published set of capabilities. However, there are also MSRs that vary across processors, and there are cases where MSR indexes have been re-purposed over time, being re-defined to refer to new sets of controls. These are very problematic for system level software, as it is difficult to encode and maintain knowledge of these controls in broadly available commercial software.

## Protecting access to MSRs

In order to provide a robust security platform, MSRs must be protected from misuse from malicious kernel mode code. To enforce this, the hypervisor monitors and controls access to all MSRs. The hypervisor maintains a list of known MSR indicies, and will only allow kernel mode code to access MSRs, or specific bits within MSRs, which are known to be reasonable and deemed safe. The hypervisor will block access to any MSR which is unknown to the hypervisor, or any MSR which is known through its published definition to represent a security risk. In some cases, partial access may be allowed.

When the hypervisor has blocked access to an MSR, it will log an event to the Windows System log in Event Viewer, specifying details of the attempted access.

Given the vast number of functions controlled by MSRs, it is not possible to predict the side effects of preventing MSR access to the software that initiated it. Well written software should handle errors and failure cases gracefully, however, this is not always the case.

## Reviewing MSR access events

The hypervisor will only block access to certain MSRs when VBS is enabled and running. To determine if the hypervisor has blocked access to an MSR, look in the Windows System log for event ID 12550 from the Microsoft-Windows-Hyper-V-Hypervisor. The event log entry details will contain the following information:

Id          : 12550
Description : Hyper-V detected access to a restricted MSR
Details:
* Msr
* IsWrite
* MsrValue
* AccessStatus
* Pc
* ImageBase
* ImageChecksum
* ImageTimestamp
* ImageName

### Supported versions of Windows

Support for Windows virtualzation-based security is included in the following versions of Windows:


* Windows 10, version 1803
* Windows 10, version 1709
* Windows 10, version 1703
* Windows 10, version 1607
* Windows Server, version 1803
* Windows Server, version 1709
* Windows Server 2016
