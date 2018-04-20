---
title: Windows Hardware Lab Kit
description: This guide provides information about the Windows Hardware Compatibility Program, the tests that are included in the Windows Hardware Lab Kit, and instructions on how to build a test environment, automate driver and system testing, and create a submission package required to participate in the Windows Hardware Compatibility Program.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fed4ec97-81cb-487c-ac17-de7c6884892b
author: aahi
ms.author: aahi
ms.date: 01/26/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Hardware Lab Kit

The Windows Hardware Lab Kit (Windows HLK) is a test framework used to test hardware devices for Windows 10. 

This guide provides information about the Hardware Compatibility Program, the tests that are included in the Windows Hardware Lab Kit, and instructions on how to build a test environment, automate driver and system testing, and create a submission package required to participate in the Windows Hardware Compatibility Program.

## Download the Windows HLK 

If you’re developing for Windows 10, you need the latest Windows HLK. This kit helps you ensure that the drivers and the system you develop are certified as compatible with Windows 10. 

|To certify... | Download...|
|-----------------|------------|
| Windows 10, version 1709    |  [Windows HLK, version 1709](https://go.microsoft.com/fwlink/p/?LinkId=859231) |
| Windows 10, version 1703<br>Windows 10, version 1607| [Windows HLK, version 1703](https://go.microsoft.com/fwlink/p/?LinkId=733613)|
| Windows Server 2016 |[Windows HLK, version 1607](https://go.microsoft.com/fwlink/p/?LinkID=404112)|

>[!NOTE]
>Windows HLK only supports testing on Windows 10 and Windows Server 2016 systems. For testing previous versions of Windows, use the [Hardware Certification Kit](https://msdn.microsoft.com/en-us/library/windows/hardware/jj124227(v=vs.85).aspx) for Windows 8.1. 

## Windows Hardware Compatibility Program

To qualify for the Windows Hardware Compatibility Program, your product must pass certain tests using the Windows HLK.
For guidance on which kit to use for compatibility certification, see the [Windows Hardware Compatibility Program](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/) and the [Windows Hardware Certification Blog](https://blogs.msdn.microsoft.com/windows_hardware_certification/). 

>[!IMPORTANT]
> Certification for Windows Server 2016, Azure Stack, and SDDC must continue to meet the Windows Hardware Compatibility Requirements as stated in version 1607 of documentation; must use version 1607 of the HLK (build 14393) with matching playlist and supplemental content to generate logs; and must follow policies as stated in the Windows Server Policy document. Questions about the Azure Stack, SDDC programs, or how to submit the results for solution validation should be directed to the appropriate Microsoft technical account manager or partner management contact. 

## Download Windows Hardware Compatibility playlist

Get the official Windows Hardware Compatibility playlist so you can run the Windows HLK tests that ensure your hardware meets the requirements for compatibility with Windows 10. 
- [Download the Windows Hardware Compatibility playlist](http://aka.ms/HLKPlaylist)

Watch this video to learn more about playlists. 
> [!VIDEO https://assets.windowsphone.com/970594d5-fef1-4fc6-84ab-289a192cd107/WinHEC_HLK_Playlists_InvariantCulture_Default.mp4]

## Download Windows HLK Filters 

When there is a problem in either a Windows HLK test or in the operating system itself that causes certification tests to fail incorrectly, we create an errata that allows partners to bypass the problematic test. Most errata use filters to automatically filter the failure from the submission results. Filters are applied within Windows HLK Studio. 

- [Download Windows HLK filters](https://docs.microsoft.com/en-us/windows-hardware/test/hlk/user/windows-hardware-lab-kit-filters)

## Download Windows HLK Supplemental Test Content

### Supplemental Content for Graphics, Media, and Mean Time Between Failures (MTBF) Tests

Supplemental test content downloads are required for some tests related to graphics, media, and mean time between failures (MTBF). Download these files to complete Windows HLK testing in these areas. 

Required downloads for tests that use supplemental content: 

- [HLK_DXVA.iso (Windows 10, version 1607, 1703, and 1709)](https://go.microsoft.com/fwlink/p/?LinkId=823112) 
- [HLK_HMFT.iso (Windows 10, version 1607, 1703, and 1709)](https://go.microsoft.com/fwlink/p/?LinkId=823113) 
- [HLK_PERF.iso (Windows 10, version 1607, 1703, and 1709)](https://go.microsoft.com/fwlink/p/?LinkId=823114) 
- [HLK_MOBILE.iso (Windows 10, version 1607, 1703, and 1709)](https://go.microsoft.com/fwlink/p/?LinkId=823115) 
- [HLK_GRFX_FOD.zip (Windows 10, version 1709)](https://go.microsoft.com/fwlink/p/?LinkId=859270) 
- [HLK_GRFX_FOD.zip (Windows 10, version 1703)](https://go.microsoft.com/fwlink/p/?linkid=845559) 
- [HLK_GRFX_FOD.zip (Windows 10, version 1607)](https://go.microsoft.com/fwlink/p/?linkid=842373)

### Supplemental Content for Private Cloud Simulator (PCS) Tests 

This supplemental content package is required to pass the Device and Solutions PCS Tests. 

- [Download PCSFiles.vhd (March 2017)](https://go.microsoft.com/fwlink/p/?LinkId=808763)

On the server that has the Windows HLK controller installed, place PCSFiles.vhd at the following location:

```C:\Program Files (x86)\Windows Kits\10\Hardware Lab Kit\Tests\amd64```

## Download HLK Offline Documentation

This documentation is also available in .chm format for offline use.

- [Download HLK offline documentation](https://go.microsoft.com/fwlink/?linkid=860830)

