---
title: Windows Hardware Lab Kit
description: This guide provides information about the Windows Hardware Compatibility Program, the tests that are included in the Windows Hardware Lab Kit, and instructions on how to build a test environment, automate driver and system testing, and create a submission package required to participate in the Windows Hardware Compatibility Program.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fed4ec97-81cb-487c-ac17-de7c6884892b
author: sapaetsc
ms.author: sapaetsc
ms.date: 01/26/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Hardware Lab Kit

The Windows Hardware Lab Kit (Windows HLK) is a test framework used to test hardware devices for Windows 10. To qualify for the [Windows Hardware Compatibility Program](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/), your product must pass certain tests using the Windows HLK.

This guide provides information about the Hardware Compatibility Program, the tests that are included in the Windows Hardware Lab Kit, and instructions on how to build a test environment, automate driver and system testing, and create a submission package required to participate in the Windows Hardware Compatibility Program.

## Download the Windows HLK 

If you’re developing for Windows 10, you need the latest Windows HLK. This kit helps you ensure that the drivers and the system you develop are certified as compatible with Windows 10. 

- [Download HLK](https://developer.microsoft.com/en-us/windows/hardware)

To determine whether you also need to download any supplemental content, see [Download Supplemental HLK Resources](getstarted/download-supplemental-hlk-resources.md)

For guidance on which kit to use for compatibility certification, see the [Windows Hardware Compatibility Program](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/) Windows and the [Windows Hardware Certification Blog](https://blogs.msdn.microsoft.com/windows_hardware_certification/). 

>[!NOTE]
>Windows HLK only supports testing on Windows 10 and Windows Server 2016 systems. For testing previous versions of Windows, download the HCK for Windows 8.1. 

>[!IMPORTANT]
> Certification for Windows Server 2016, Azure Stack, and SDDC must continue to meet the Windows Hardware Compatibility Requirements as stated in version 1607 of documentation; must use version 1607 of the HLK (build 14393) with matching playlist and supplemental content to generate logs; and must follow policies as stated in the Windows Server Policy document. Questions about the Azure Stack, SDDC programs, or how to submit the results for solution validation should be directed to the appropriate Microsoft technical account manager or partner management contact. 

## Download HLK Offline Documentation

This documentation is also available in .chm format for offline use.

- [Download HLK offline documentation](https://go.microsoft.com/fwlink/?linkid=860830)

