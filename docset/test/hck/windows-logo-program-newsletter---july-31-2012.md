---
author: joshbax-msft
title: Windows Logo Program Newsletter - July 31, 2012
description: Windows Logo Program Newsletter - July 31, 2012
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c2c3497c-bd10-4242-9093-0c264fa08dcf
---

# Windows Logo Program Newsletter - July 31, 2012


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Windows HCK Refresh Coming at Windows 8 RTM](#hckrefresh)

[Submission fee update](#fee)

[Guidelines for Naming the Radio Manager](#radioman)

[Hardware Certification Requirements Updated](#reqs)

[Enforcement of UEFI POST Time Requirement Deferred Until April](#uefi)

[Condition of deferral for laptops, notebooks, and tablets](#laptops)

[Condition of deferral for All-in-one systems](#allinone)

[Touch Hardware Certification Tools Vendors List](#vendors)

[How to create a Common CAT file](#cat)

## <a href="" id="hckrefresh"></a>Windows HCK Refresh Coming at Windows 8 RTM


At Windows 8 RTM, a refreshed Windows Hardware Certification Kit (HCK) will be available. The kit will include all QFEs released since Windows 8 Release Preview, plus a few more. You'll be able to download the RTM kit from the same place you download the current kit.

The Hardware Developer Portal will accept certification submissions from either the Release Preview or the RTM co-release version of the HCK during a 90-day transition. After the transition period ends, the RTM HCK will be the only acceptable HCK version. The older Windows Logo Kit (WLK) 1.6 isn't affected by the update and currently remains available for submissions.

## <a href="" id="fee"></a>Submission fee update


No submissions fees are being charged for Windows RT or UEFI submissions.

We're updating the billing policy document to make this more clear.

## <a href="" id="radioman"></a>Guidelines for Naming the Radio Manager


The radio manager must be given a name, which is the name of the radio switch that's displayed on the Wireless page of PC settings. The name must be simple, yet describe what the radio is. For example, an NFC radio should have a name field value of "NFC", and a GPS radio should have a name field value of "GPS" or "GNSS", whichever is more appropriate. The name must not include the word "radio", or the manufacturer's name, or some other word related to the radio's functionality (for example, "Location" or "port".

## <a href="" id="reqs"></a>Hardware Certification Requirements Updated


The certification documents were updated July 2 and are available online and as downloadable PDFs. If you use PDFs for reference, we highly recommend that you download the new versions for Devices and for Client and Server Systems, so you can review the technical updates.

See [Windows 8 Hardware Certification Requirements](http://msdn.microsoft.com/library/windows/hardware/dn423132) for the content, as well as a link to the PDF downloads.

## <a href="" id="uefi"></a>Enforcement of UEFI POST Time Requirement Deferred Until April


Based on feedback from our industry partners, and to give them more time to prepare their supply chains, the enforcement of full UEFI POST Time requirement as a part of Windows 8 certification is now deferred until April 15, 2013. Until then, systems must meet the temporary requirements that follow.

Partners should review the requirements thoroughly, meet the relaxed conditions exactly as described, and include ID 478 in a README file when making a certification submission.

## <a href="" id="laptops"></a>Condition of deferral for laptops, notebooks, and tablets


-   Laptops and tablet systems using spinning disk drives are eligible to certify, provided such systems POST within 4.3 seconds or less.

-   Systems with spinning disk drives may include systems that use SSD for caching, not booting.

-   Systems shipping after April 15, 2013, must meet requirements as published.

## <a href="" id="allinone"></a>Condition of deferral for All-in-one systems


-   All-in-one systems using spinning disk drives are eligible to certify, provided such systems POST within 10 seconds or less.ReplaceThisText

-   Systems with spinning disk drives may include systems that use SSD for caching, not booting.

-   This deferral does not apply to laptops/notebooks/tablets.

-   Systems shipping after April 15, 2013, must meet requirements as published.

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

-   [Overview of Measuring Touch Down Hardware Latency](http://msdn.microsoft.com/library/windows/hardware/dn293768.aspx) - Provides information for hardware vendors about methodology and recommended testing devices for measuring touch down hardware latency in accordance with the HCK for Windows 8.

-   [Overview of Measuring Touch Panning Hardware Latency](http://msdn.microsoft.com/library/windows/hardware/dn266003.aspx) - Provides information for hardware vendors about methodology and recommended testing devices for measuring touch panning latency in accordance with the HCK for Windows 8.

-   [How to Measure Touch Panning Latency](http://msdn.microsoft.com/library/windows/hardware/hh967413) - Provides detailed setup instructions and procedures to measure touch panning latency in accordance with the HCK for Windows 8.

-   [How to Measure Touch Down Latency](http://msdn.microsoft.com/library/windows/hardware/dn195876) - Describes detailed setup instructions and procedures to measure touch down latency in touch hardware environments using an acoustic measurement tool in accordance with the HCK for Windows 8.

-   [How to Use the Precision Touch Testing Tool](http://msdn.microsoft.com/library/windows/hardware/dn281959.aspx) - Provides information about how to use the Precision Touch Testing Tool (PT3) to run the HCK tests for Windows 8.

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

[Newsletter archive](http://msdn.microsoft.com/library/windows/hardware/dn339175.aspx)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Logo%20Program%20Newsletter%20-%20July%2031,%202012%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





