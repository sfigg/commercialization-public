---
author: joshbax-msft
title: Windows Logo Program Newsletter - July 17, 2012
description: Windows Logo Program Newsletter - July 17, 2012
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 236f4ea7-f1d4-4b3f-9e6f-c2729ff4b053
---

# Windows Logo Program Newsletter - July 17, 2012


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Hardware Certification Requirements Updated](#reqs)

[Windows HCK Refresh Coming at Windows 8 RTM](#hckrefresh)

[HCK Supplemental Material Downloads Are Now Smaller](#downloads)

[Enforcement of UEFI POST Time Requirement Deferred Until April 15, 2013](#uefi)

[Condition of deferral for laptops, notebooks, and tablets](#laptops)

[Condition of deferral for All-in-one systems](#allinone)

[Touch Hardware Certification Tools Vendors List](#vendors)

[GML and COA Specification Update and Transition of Windows Symbol](#gmlcoa)

[Desktop/AIO Placement options](#desktopaio)

[GML without Certification Logo size correction](#sizecorrect)

[Windows Symbol transition](#winsym)

[How to create a Common CAT file](#cat)

[Logo artwork usage guidelines update for Windows 8](#logoart)

[Next Newsletter Arrives July 31](#next)

## <a href="" id="reqs"></a>Hardware Certification Requirements Updated


The certification documents were updated July 2 and are available online and as downloadable PDFs. If you use PDFs for reference, we highly recommend that you download the new versions for Devices and for Client and Server Systems, so you can review the technical updates.

See [Windows 8 Hardware Certification Requirements](http://msdn.microsoft.com/library/windows/hardware/dn423132) for the content, as well as a link to the PDF downloads.

## <a href="" id="hckrefresh"></a>Windows HCK Refresh Coming at Windows 8 RTM


At Windows 8 RTM, a refreshed Windows HCK will be available. The kit will include all QFEs released since Windows 8 Release Preview, plus a few more. You will be able to download the RTM kit from the same place you download the current kit.

The Hardware Developer Portal will accept certification submissions from either the Release Preview or the RTM co-release version of the HCK during a 90 day transition. After the transition period ends, the RTM HCK will be the only acceptable HCK version for Windows 8 and Windows Server 2012 submissions. The older Windows Logo Kit (WLK) 1.6 isn't affected by the update and currently remains available for Windows 7, Windows Server 2008 R2, and Windows XP testing and submissions.

## <a href="" id="downloads"></a>HCK Supplemental Material Downloads Are Now Smaller


We know that many partners have had trouble downloading the very large supplemental material package required for some HCK tests. We've broken up the 50 GB download into 3 smaller ISOs, which should help reduce failures.

See [Windows Hardware Certification Kit (HCK) Supplemental Test Content](windows-hardware-certification-kit--hck--supplemental-test-content.md) for the updated files.

## <a href="" id="uefi"></a>Enforcement of UEFI POST Time Requirement Deferred Until April 15, 2013


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

-   [Overview of Measuring Touch Down Hardware Latency](overview-of-measuring-touch-down-hardware-latency.md) - Provides information for hardware vendors about methodology and recommended testing devices for measuring touch down hardware latency in accordance with the HCK for Windows 8.

-   [Overview of Measuring Touch Panning Hardware Latency](how-to-measure-touch-panning-latency-win81.md) - Provides information for hardware vendors about methodology and recommended testing devices for measuring touch panning latency in accordance with the HCK for Windows 8.

-   [How to Measure Touch Panning Latency](http://msdn.microsoft.com/library/windows/hardware/hh967413) - Provides detailed setup instructions and procedures to measure touch panning latency in accordance with the HCK for Windows 8.

-   [How to Measure Touch Down Latency](how-to-measure-touch-down-latency-by-using-an-acoustic-measurement-tool.md) - Describes detailed setup instructions and procedures to measure touch down latency in touch hardware environments using an acoustic measurement tool in accordance with the HCK for Windows 8.

-   [How to Use the Precision Touch Testing Tool](how-to-use-the-precision-touch-testing-tool.md) - Provides information about how to use the Precision Touch Testing Tool (PT3) to run the HCK tests for Windows 8.

## <a href="" id="gmlcoa"></a>GML and COA Specification Update and Transition of Windows Symbol


This announcement is intended to introduce new options for the placement of Genuine Microsoft Labels (GMLs), clarify the size of the GML intended for systems that have not passed the Windows Hardware Certification Program requirements, and provide additional transition time for implementation of the new Windows Symbol on the keyboard.

Details:

-   Based on OEM feedback, we're introducing new options for the placement of the GML as specified in the Logo License Agreement (LLA) Specifications and Desktop Operating System (DTOS) Product List, on a Desktop/All-In-One (AIO) PC.

-   We're also providing more transition time for Windows Symbol implementation, and we're clarifying the size of the GML with no Windows Hardware Certification Logo for systems that haven't passed the Windows Hardware Certification Program requirements.

-   **Reminder**: Both the GML that do and that don't include the Certification Logo must be sourced from a GML Supplier.

## <a href="" id="desktopaio"></a>Desktop/AIO Placement options


To provide more placement options for the GMLs on Desktop/AIO form factors, we'll also permit placement on a system's side if its design (e.g. spacing, textured surface, and so on) makes it impossible to place on the back. It's up to each OEM whether to place the GML on the side of the device, but it must not place the GML on the front of the device. The GML reference table provided through the OEM Standard Terms (OST) 2013 Key Changes Summary has been updated to reflect this new option.

![gml placement](images/gml-without-certification-logo.jpg)

## <a href="" id="sizecorrect"></a>GML without Certification Logo size correction


We're correcting the GML without Certification Logo size information in the LLA Specifications. This GML size is 19.5 mm, not 19.95 mm as originally shown. OEMs should plan appropriately for the GML at the 19.5 mm size.

## <a href="" id="winsym"></a>Windows Symbol transition


To support an easier transition to the new Windows Symbol on keyboards and hardware buttons, OEMs can use the new symbol on the keyboard key or hardware button for systems running the Windows 7 operating system beginning **September 1, 2012**, provided that:

-   This allowance only applies to systems shipping with Windows 7 pre Windows 8 GA. Systems must meet all licensing requirements under the MLA and OPK, as well as the Windows Hardware Certification requirements for the pre-installed Windows 7 OS.

-   This allowance excludes any system designed solely for Windows 8. Current requirements pre and post GA apply to Windows Key use.

-   The OEM has completed upgrade testing on the system and determined that it supports an upgrade to Windows 8.

Also, and as stated in the LLA Specifications, OEMs may use existing keyboards/buttons displaying the Windows Flag on Windows 7 devices through December 31, 2013. That's more than a year after Windows 8 GA.

As defined in the LLA Specifications, the new Windows Symbol must be used on all Windows 8 devices. This ensures a clear message for systems that are certified for Windows 8.

A Waiver Letter will be made available separately. Except as we expressly provide in the Waiver Letter, the terms of the LLA Specifications and the DTOS Product List remain in full force and will neither be waived nor modified.

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

## <a href="" id="logoart"></a>Logo artwork usage guidelines update for Windows 8


The following guidelines apply to use of the certification logos for Windows 8:

-   **On product packaging**, you can use the logo only if the product is shipped by the manufacturer after July 31, 2012. If the product ships earlier than that, you can use text treatment to showcase certification.

-   **In other content such as print or online materials**, you may not publicly display the logo before September 1, 2012. For materials that you publicly display earlier than that, you can use text treatment to showcase certification.

## <a href="" id="next"></a>Next Newsletter Arrives July 31


We're changing our schedule to every other week, instead of weekly.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 







