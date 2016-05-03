---
author: joshbax-msft
title: Windows Logo Program Newsletter - September 25, 2012
description: Windows Logo Program Newsletter - September 25, 2012
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 80703283-5582-44c4-bfbe-8250ad8bd44f
---

# Windows Logo Program Newsletter - September 25, 2012


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Filter for delayed enforcement of USB 3.0 hub testing, Errata 339 and 526 extended until December 1](#delayedusb)

[Early bird special for Client and Server ending October 26](#earlybird)

[Windows Certification workshops start September 26](#workshops)

[QFE 4 for the HCK now available](#qfe)

[Guidelines for naming the radio manager](#radioman)

[UEFI POST Time enforcements relaxed further](#uefi)

[Touch Hardware Certification Tools Vendors List](#vendors)

[How to create a Common CAT file](#cat)

## <a href="" id="delayedusb"></a>Filter for delayed enforcement of USB 3.0 hub testing, Errata 339 and 526 extended until December 1


Due to the continued limited USB 3.0 (SuperSpeed) hub availability, the filter for USB Topology errata 339 and Exposed Port System & Controller tests failing because of USB 3.0 errata 526 will be extended until December 1, 2012. Partners who don't have USB 3.0 hub can proceed with the rest of Windows HCK device testing, apply a filter after all of the tests have been completed, and then submit the results.

Note that the rest of the results must all pass in order to qualify for a USB logo. The filter is only designed for topologies that include USB 3.0 hubs; the rest of the topologies must be run and should pass. We'll continue to evaluate the hub availability and adjust the errata filter expiration day accordingly.

## <a href="" id="earlybird"></a>Early bird special for Client and Server ending October 26


This is a reminder that the discounted $100 early bird fee for Windows 8 and Windows Server 2012 certification program submissions expires October 26, 2012.

## <a href="" id="workshops"></a>Windows Certification workshops start September 26


We're organizing a new series of Certification Workshops, with an emphasis on connected devices and Windows RT testing. These events give you the chance to learn about the Windows Hardware Certification program, processes, test kit, and tests. But most importantly, Windows RT systems will be available, so you can test your devices on Windows RT with the class drivers-and ideally leave with Windows RT certification.

The first 3-day events begin in Milan on Sept. 26 and in Amsterdam on Oct. 1. Asian events follow mid-October in Taipei, Shenzhen, and Tokyo.

Learn more:  <http://www.windowscertificationworkshop.com>

## <a href="" id="qfe"></a>QFE 4 for the HCK now available


QFE 4 for the Windows HCK has been released. The latest HCK includes all previous QFE updates, so if your product is failing, make sure that you're working with the latest QFE in Windows HCK Studio.

**Download it now:** <http://msdn.microsoft.com/windows/hardware/hh852366>

## <a href="" id="radioman"></a>Guidelines for naming the radio manager


The radio manager must be given a name, which is the name of the radio switch that's displayed on the Wireless page of PC settings. The name must be simple, yet describe what the radio is. For example, an NFC radio should have a name field value of "NFC", and a GPS radio should have a name field value of "GPS" or "GNSS", whichever is more appropriate. The name must not include the word "radio", or the manufacturer's name, or some other word related to the radio's functionality (for example, "Location" or "port".

## <a href="" id="uefi"></a>UEFI POST Time enforcements relaxed further


We've added more allowances to the enforcement of UEFI POST Time requirement between now and the enforcement date.

Conditions:

-   All-in-one PC systems, laptops, or notebooks with a 17 inch (or larger) integrated display that use a rotational hard disk are eligible for Windows 8 certification, as long as such systems pass UEFI POST TIME test within 4 seconds (or 4.3 with TPM enabled) using any other rotational disk.

-   Systems manufacturers should prepare their system submissions normally, including the failing Post time results as measured with the shipping hard drive. To have that failure overturned by the certification review team, mention ID 478 in the README file and include in the README folder a log file showing that any other rotational disk was able to pass the UEFI POST TIME test.

-   Systems shipping after April 15, 2013, must meet requirements as published.

These and all other UEFI requirement relaxations expire on April 15, 2013.

## <a href="" id="vendors"></a>Touch Hardware Certification Tools Vendors List


Here's the contact information for vendors of the Precision Touch (PT3) and Rotational Acoustic (RA) Test Tools. Get in touch with them if you have questions about making a purchase.

**Precision Touch (PT3) Test Tool vendors**

-   Triex Technologies, Inc. - <http://www.triextech.com/ContactUs.php>

-   Industrial Technology Research Institute - Sen-Yih Chou, senyih@itri.org.tw

**Rotational Acoustic (RA) Test Tool vendor**

-   Triex Technologies, Inc. - <http://www.triextech.com/ContactUs.php>

For information about using the Touch Certification Tools, see these documents:

-   [How to use the RA Tool to measure Touch Latency (video)](http://msdn.microsoft.com/library/windows/hardware/jj161011) - Provides video instruction on how to use the Rotational Acoustic Test Tool for measuring touch down and touch panning latency in accordance with the Hardware Certification Kit (HCK) for Windows 8.

-   [How to Use the Precision Touch Testing Tool (video)](http://msdn.microsoft.com/library/windows/hardware/jj161013)How to Use the Precision Touch Testing Tool (video) - Provides video instruction on how to use the Precision Touch Test Tool (PT3) in accordance with the HCK for Windows 8.

-   [Overview of Measuring Touch Down Hardware Latency](overview-of-measuring-touch-down-hardware-latency.md) - Provides information for hardware vendors about methodology and recommended testing devices for measuring touch down hardware latency in accordance with the HCK for Windows 8.

-   [Overview of Measuring Touch Panning Hardware Latency](how-to-measure-touch-panning-latency-win81.md) - Provides information for hardware vendors about methodology and recommended testing devices for measuring touch panning latency in accordance with the HCK for Windows 8.

-   [How to Measure Touch Panning Latency](http://msdn.microsoft.com/library/windows/hardware/hh967413) - Provides detailed setup instructions and procedures to measure touch panning latency in accordance with the HCK for Windows 8.

-   [How to Measure Touch Down Latency](how-to-measure-touch-down-latency-by-using-an-acoustic-measurement-tool.md) - Describes detailed setup instructions and procedures to measure touch down latency in touch hardware environments using an acoustic measurement tool in accordance with the HCK for Windows 8.

-   [How to Use the Precision Touch Testing Tool](how-to-use-the-precision-touch-testing-tool.md) - Provides information about how to use the Precision Touch Testing Tool (PT3) to run the HCK tests for Windows 8.

## <a href="" id="cat"></a>How to create a Common CAT file


The way you approach creating a common file largely depends on what your drivers are like.

**Case 1:** If you have a common driver for all versions of Windows (Windows XP to Windows 8), you can get the signed common CAT file by adjusting the driver folder in the HCK Studio before you create the final HCKX file.

1.  Create all of the HCKX files and their driver folders on the **Package** tab.

2.  Merge all of the HCKX files using by using the **Merge** option.

3.  Go to the **Package** tab.

4.  Right-click an appropriate driver path in the **Driver Folder** group, and then click **Properties**.

    **Driver Properties** gives the information about the driver and which version of Windows it's for. When a driver is the same for all versions of Windows, you can associate it with all of the versions on the **Products** tab. You can also set its locale on the **Locales** tab.

5.  Under **Products**, select every version of Windows, and then click **OK**.

6.  Delete the unused associated driver paths from the **Drivers Folder** group.

7.  Create the final package from HCK Studio and submit the package through the Hardware Dashboard.

**Case 2:** If you have one common driver for the x86 platform and one for the x64 platform, you can create a common single CAT file for each platform. Follow the steps for each.

1.  Create all of the HCKX files and their driver folders on the **Package** tab.

2.  Merge all of the HCKX files using by using the **Merge** option.

3.  Go to the **Package** tab.

4.  Right-click an appropriate driver path in the **Driver Folder** group, and then click **Properties**.

    **Driver Properties** displays information about the driver and which version of Windows it's for. When a single driver is used for an entire platform, you can associate it on the Products tab with all supported versions of Windows.

5.  Under **Products**, select every version of Windows that runs on the platform the driver is for, and then click **OK**. Delete the unused associated driver paths from the **Drivers Folder** group.

6.  Create the final package from HCK Studio and submit the package through the Hardware Dashboard.

**Case 3:** Adding the driver folder during the final step.

1.  Create all of the HCKX files, but don't add drivers to them.

2.  Merge all of the HCKX files using by using the **Merge** option.

3.  On the **Package** tab, upload the driver and select the architecture for that driver from **Platform**.

4.  Under **Products**, select every version of Windows the driver is for, and then click **OK**.

5.  If you have a common driver for all versions of Windows, select every version and create the final HCKX file.

    -OR-

    If you have separate drivers for x86 and x64 platforms, load both drivers, select every version of Windows that runs on the platform the driver is for, and then click **OK**. Create the final HCKX package.

You don't need to attach drivers to intermediate packages. You can add or remove drivers as needed.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Logo%20Program%20Newsletter%20-%20September%2025,%202012%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





