---
title: Windows Server testing using WLK 1.6, HLK 2.0, and HLK 2.1
Description: Windows Server testing using WLK 1.6, HLK 2.0, and HLK 2.1
ms.assetid: 1d6e161d-81be-4211-95e3-e66e5c01f7b5
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Server testing using WLK 1.6, HLK 2.0, and HLK 2.1

The following information defines which certification kit (WLK 1.6, HLK 2.0, HLK 2.1) are applicable to Windows Server 2012 R2 and earlier.

<note type="important">
Please forward to those in your organization who could benefit from this information, particularly your certification and/or test teams.


## Windows Server certification using WLK 1.6, HLK 2.0, and HLK 2.1 Definition

WLK 1.6 was released in conjunction with Windows 7 and Windows 2008. This kit supports:

-   Windows Server 2008 R2 x64 Device, Driver and System Certification

-   Windows Server 2008 R2 ia64 Device and Driver Certification

-   Windows Server 2008 x86, x64 and ia64 Device and Driver Certification

-   Windows Server 2003 x86, x64 and ia64 Device and Driver Certification

HLK 2.0 was released in conjunction with Windows 8 and Windows Server 2012. This kit supports:

-   Windows Server 2012 x64 Device, Driver and System Certification

-   Windows Server 2008 R2 x64 Device, Driver and System Certification

-   Windows Server 2008 x86 and x64 Driver Signature only, no Logo

-   Windows Server 2003 x86 and x64 Driver Signature only, no Logo

HLK 2.1 was released in conjunction with Windows 8.1 and Windows Server 2012 R2. This kit supports:

-   Windows Server 2012 R2 x64 Device, Driver and System Certification

-   Windows Server 2012 x64 Device and Driver Certification

-   Windows Server 2008 R2 x64 Device, Driver and System Certification

Newer versions of the certification kit will also be released alongside future Windows and Windows Server operating system releases.

Approximately 90 days after the release of Windows 8.1 and Windows Server 2012 R2, the current HLK 2.0 will be retired and no further submissions will be accepted using that kit. To test Windows Server OS releases spanning from 2003 to 2012 R2, you must use both the WLK 1.6 and the HLK 2.1.

The use of WLK 1.6 and HLK 2.1 is necessary because:

-   Prior to Windows Server 2012 R2, HLK 2.0 could be used to obtain driver signatures for Windows Server 2008 and 2003. However, device and driver vendors were requested to also use WLK 1.6 for testing of those drivers prior to submission for signature. It was never Microsoft’s intent to offer signature for drivers that were not tested adequately as this is not in the best interest of our mutual customers.

-   HLK 2.1 for Windows 8.1/2012 R2 will not provide driver signatures for Windows Server 2008 and Windows Server 2003 as driver testing is now required (not just encouraged) due to experience with Server drivers that were only signed and not adequately tested.

-   The infrastructure to support testing and submission for Windows Server 2008 (including x86 and IA64) remains in WLK 1.6 and the submission portal, as is the case today.

In addition, WLK 1.6 will remain available until further notice to support:

-   Windows Server 2003 and 2008 device driver submissions for all processor architectures (x86,x64, Itanium).

-   Windows Server 2008 R2 device driver submissions for Itanium processor architecture.

-   SysDev (Hardware Dashboard) will continue to accept these WLK 1.6 submissions until further notice.

The following table summarizes kit support for Windows Server certification:

![Certification Kit Support Matrix](../images/HCK_WinB_Kit_Support_Matrix.png)

## “Up-Level” and “Down-Level” Certification Status Grant

Unless called out specifically, certification is required for all devices and drivers to obtain separately the logo for Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2 and Windows Server 2008.

![“Up-Level” and “Down-Level” Certification Status G](../images/HCK_WinB_Cert_Grant_Status_Table.png)

Systems and selected Device types specified above that are successfully certified against Windows Server 2012 R2 will earn “Down-Level” certification status for Windows Server 2012.

Imaging device types specified above that are successfully certified against Windows Server 2012 will be granted “Up-Level” certification status for Windows Server 2012 R2.

## Contact

For further inquiries, please contact <xref hlink="mailto:AskWSHC@microsoft.com">AskWSHC@microsoft.com</b>.



