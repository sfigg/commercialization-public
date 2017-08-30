---
title: Windows Server testing using WLK 1.6, HLK 2.0, and HLK 2.1
description: Windows Server testing using WLK 1.6, HLK 2.0, and HLK 2.1
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1d6e161d-81be-4211-95e3-e66e5c01f7b5
---

# Windows Server testing using WLK 1.6, HLK 2.0, and HLK 2.1


The following information defines which certification kit (WLK 1.6, HLK 2.0, HLK 2.1) are applicable to Windows Server 2012 R2 and earlier.

**Important**  
Please forward to those in your organization who could benefit from this information, particularly your certification and/or test teams.

 

## <span id="Windows_Server_certification_using_WLK_1.6__HLK_2.0__and_HLK_2.1_Definition"></span><span id="windows_server_certification_using_wlk_1.6__hlk_2.0__and_hlk_2.1_definition"></span><span id="WINDOWS_SERVER_CERTIFICATION_USING_WLK_1.6__HLK_2.0__AND_HLK_2.1_DEFINITION"></span>Windows Server certification using WLK 1.6, HLK 2.0, and HLK 2.1 Definition


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

![certification kit support matrix](images/hck-winb-kit-support-matrix.png)

## <span id="_Up-Level__and__Down-Level__Certification_Status_Grant"></span><span id="_up-level__and__down-level__certification_status_grant"></span><span id="_UP-LEVEL__AND__DOWN-LEVEL__CERTIFICATION_STATUS_GRANT"></span>“Up-Level” and “Down-Level” Certification Status Grant


Unless called out specifically, certification is required for all devices and drivers to obtain separately the logo for Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2 and Windows Server 2008.

![“up-level” and “down-level” certification status g](images/hck-winb-cert-grant-status-table.png)

Systems and selected Device types specified above that are successfully certified against Windows Server 2012 R2 will earn “Down-Level” certification status for Windows Server 2012.

Imaging device types specified above that are successfully certified against Windows Server 2012 will be granted “Up-Level” certification status for Windows Server 2012 R2.

## <span id="Contact"></span><span id="contact"></span><span id="CONTACT"></span>Contact


For further inquiries, please contact <AskWSHC@microsoft.com>.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Windows%20Server%20testing%20using%20WLK%201.6,%20HLK%202.0,%20and%20HLK%202.1%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




