---
author: joshbax-msft
title: Windows Server testing using WLK 1.6, HCK 2.0, and HCK 2.1
description: Windows Server testing using WLK 1.6, HCK 2.0, and HCK 2.1
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 81371443-a5c1-412a-94cf-7932e01d0c0e
---

# Windows Server testing using WLK 1.6, HCK 2.0, and HCK 2.1


The following information defines which certification kit (WLK 1.6, HCK 2.0, HCK 2.1) are applicable to Windows Server 2012 R2 and earlier.

**Important**  
Please forward to those in your organization who could benefit from this information, particularly your certification and/or test teams.

 

## Windows Server certification using WLK 1.6, HCK 2.0, and HCK 2.1 Definition


WLK 1.6 was released in conjunction with Windows 7 and Windows 2008. This kit supports:

-   Windows Server 2008 R2 x64 Device, Driver and System Certification

-   Windows Server 2008 R2 ia64 Device and Driver Certification

-   Windows Server 2008 x86, x64 and ia64 Device and Driver Certification

-   Windows Server 2003 x86, x64 and ia64 Device and Driver Certification

HCK 2.0 was released in conjunction with Windows 8 and Windows Server 2012. This kit supports:

-   Windows Server 2012 x64 Device, Driver and System Certification

-   Windows Server 2008 R2 x64 Device, Driver and System Certification

-   Windows Server 2008 x86 and x64 Driver Signature only, no Logo

-   Windows Server 2003 x86 and x64 Driver Signature only, no Logo

HCK 2.1 was released in conjunction with Windows 8.1 and Windows Server 2012 R2. This kit supports:

-   Windows Server 2012 R2 x64 Device, Driver and System Certification

-   Windows Server 2012 x64 Device and Driver Certification

-   Windows Server 2008 R2 x64 Device, Driver and System Certification

Newer versions of the certification kit will also be released alongside future Windows and Windows Server operating system releases.

Approximately 90 days after the release of Windows 8.1 and Windows Server 2012 R2, the current HCK 2.0 will be retired and no further submissions will be accepted using that kit. To test Windows Server OS releases spanning from 2003 to 2012 R2, you must use both the WLK 1.6 and the HCK 2.1.

The use of WLK 1.6 and HCK 2.1 is necessary because:

-   Prior to Windows Server 2012 R2, HCK 2.0 could be used to obtain driver signatures for Windows Server 2008 and 2003. However, device and driver vendors were requested to also use WLK 1.6 for testing of those drivers prior to submission for signature. It was never Microsoft’s intent to offer signature for drivers that were not tested adequately as this is not in the best interest of our mutual customers.

-   HCK 2.1 for Windows 8.1/2012 R2 will not provide driver signatures for Windows Server 2008 and Windows Server 2003 as driver testing is now required (not just encouraged) due to experience with Server drivers that were only signed and not adequately tested.

-   The infrastructure to support testing and submission for Windows Server 2008 (including x86 and IA64) remains in WLK 1.6 and the submission portal, as is the case today.

In addition, WLK 1.6 will remain available until further notice to support:

-   Windows Server 2003 and 2008 device driver submissions for all processor architectures (x86,x64, Itanium).

-   Windows Server 2008 R2 device driver submissions for Itanium processor architecture.

-   SysDev (Hardware Dashboard) will continue to accept these WLK 1.6 submissions until further notice.

The following table summarizes kit support for Windows Server certification:

![certification kit support matrix](images/hck-winb-kit-support-matrix.png)

## <a href="" id="-up-level--and--down-level--certification-status-grant"></a>“Up-Level” and “Down-Level” Certification Status Grant


Unless called out specifically, certification is required for all devices and drivers to obtain separately the logo for Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2 and Windows Server 2008.

![up-level and down-level certification status g](images/hck-winb-cert-grant-status-table.png)

Systems and selected Device types specified above that are successfully certified against Windows Server 2012 R2 will earn “Down-Level” certification status for Windows Server 2012.

Imaging device types specified above that are successfully certified against Windows Server 2012 will be granted “Up-Level” certification status for Windows Server 2012 R2.

## Contact


For further inquiries, please contact <AskWSHC@microsoft.com>.

 

 






