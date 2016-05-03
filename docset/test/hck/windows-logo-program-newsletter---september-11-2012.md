---
author: joshbax-msft
title: Windows Logo Program Newsletter - September 11, 2012
description: Windows Logo Program Newsletter - September 11, 2012
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bc0c761b-c6f1-4b77-9b19-79c7cba0df17
---

# Windows Logo Program Newsletter - September 11, 2012


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Windows Certification workshops start this month](#workshops)

[UEFI POST Time enforcements relaxed further](#uefi)

[HCK RTM required for submissions as of Nov. 15](#hckrtm)

[Windows RTM required for submissions as of Jan. 1](#winrtm)

[Early Bird Special for Windows 8 and Windows Server 2012](#earlybird)

[Submission policy for desktops using a certified motherboard](#policy)

[How to handle a product type mismatch in HCK Studio](#mismatch)

[Workaround for radio manager test failure](#radioman)

## <a href="" id="workshops"></a>Windows Certification workshops start this month


We're organizing a new series of Certification Workshops, with an emphasis on connected devices and Windows RT testing. These events give you the chance to learn about the Windows Hardware Certification program, processes, test kit, and tests. But most importantly, Windows RT systems will be available, so you can test your devices on Windows RT with the class drivers-and ideally leave with Windows RT certification.

The first 3-day events begin in Milan on Sept. 26 and in Amsterdam on Oct. 1. Asian events follow mid-October in Taipei, Shenzhen, and Tokyo.

**Learn more: **<http://www.windowscertificationworkshop.com>

## <a href="" id="uefi"></a>UEFI POST Time enforcements relaxed further


We've added more allowances to the enforcement of UEFI POST Time requirement between now and the enforcement date.

Conditions:

-   All-in-one PC systems, laptops, or notebooks with a 17 inch (or larger) integrated display that use a rotational hard disk are eligible for Windows 8 certification, as long as such systems pass UEFI POST TIME test within 4 seconds (or 4.3 with TPM enabled) using any other rotational disk.

-   Systems manufacturers should prepare their system submissions normally, including the failing Post time results as measured with the shipping hard drive. To have that failure overturned by the certification review team, mention ID 478 in the README file and include in the README folder a log file showing that any other rotational disk was able to pass the UEFI POST TIME test.

-   Systems shipping after April 15, 2013, must meet requirements as published.

These and all other UEFI requirement relaxations expire on April 15, 2013.

## <a href="" id="hckrtm"></a>HCK RTM required for submissions as of Nov. 15


We would like to remind our partners that starting November 15, 2012, submissions to the Hardware Dashboard must use the Release to Market (RTM) version of the Windows Hardware Certification Kit. The HCK Release Preview is being retired on that date. WLK 1.6 can still be used for Windows XP, Windows Vista, Windows 7, Windows Server 2003 and Windows Server 2008 R2 submissions until 90 days' notice is given.

**Download Windows HCK RTM:**<http://msdn.microsoft.com/windows/hardware/hh852359>

## <a href="" id="winrtm"></a>Windows RTM required for submissions as of Jan. 1


We would like to remind our partners that starting January 1, 2013, submissions to the Hardware Dashboard must use the RTM versions of Windows 8 and Windows Server 2012 releases.

## <a href="" id="earlybird"></a>Early Bird Special for Windows 8 and Windows Server 2012


The Windows Certification Program ensures that every certified product has been tested to install readily and run reliably on Windows 8 and Windows Server 2012.

To help our hardware partners achieve logo qualification, the Windows Certification Program team is pleased to announce that for a limited time we're reducing the submission fee. Until general availability of Windows 8 on October 26, 2012, the fee for every new submission for Windows 8 and Windows Server 2012 certifications is only $100, a $150 discount.

This is a great opportunity for device and system partners to lower development costs by downloading the latest Windows Hardware Certification Kit (HCK) and testing your system or device for submission during this limited time frame.

## <a href="" id="policy"></a>Submission policy for desktops using a certified motherboard


When you make your desktop submission, include a Readme.doc file that references manual errata ID 738 and the name of the motherboard and submission ID used in the test system exactly as the motherboard name appears in the Logo'd Compatibility List. The inclusion of this information indicates that Audio Fidelity testing has already been satisfied by previous testing for motherboard certification. The submission ID number can be obtained from the Logo'd Compatibility List site.

## <a href="" id="mismatch"></a>How to handle a product type mismatch in HCK Studio


Question: When I select my device, the Product types summary in the right pane doesn't display the product type that I want to certify. What should I do?

Answer: Sometimes, features that are required for a product type aren't automatically detected on a device. In those cases, you must manually select the missing feature(s) that correspond to your product type. After all of the features have been selected, the product type appears. When you add features to your selection, the tests that are required for those features are automatically added to your list of tests.

To manually configure a product type:

1.  Find your product type in the [Windows HCK Product Type Test Matrix](http://download.microsoft.com/download/2/3/6/23662F33-71E8-43C1-8547-5DE49B0374AB/windows-hck-product-type-matrix.zip).

2.  Determine the list of features that are required for your product type.

3.  In the Selection tab in HCK Studio, right-click your selection to see a list of features. The check boxes for features that have been automatically detected display as selected.

4.  Select the check box for any missing feature that corresponds to your product type.

## <a href="" id="radioman"></a>Workaround for radio manager test failure


A known issue is generating "Could not CoCreate Media Radio Manager" errors in these HCK tests:

-   Radio Manager - Verify Radio State

-   Radio Manager - Verify SetRadioState

If the Third-Party Radio Manager is using the HKLM\\SYSTEM\\CurrentControlSet\\Control\\RadioManagement registry key, the tests may fail with this error. It happens due to a permissions setting on the registry key. If you get this error in your HCK run, please use this workaround:

1.  Change the owner of HKLM\\SYSTEM\\CurrentControlSet\\Control\\RadioManagement to **Authenticated Users**.

    1.  From the Start screen, type **Run**, and then choose **Run**, or press Windows key+R

    2.  Type **regedit** and press Enter.

    3.  Navigate to HKLM\\SYSTEM\\CurrentControlSet\\Control\\RadioManagement

    4.  Right-click the key and select **Permissions**.

    5.  Click the **Advanced** button.

    6.  Click the **change** link next to **Owner**.

    7.  Enter **Authenticated Users** in the **Enter the object name to select** box, and then click the **Check Names** button. Click **OK** after the name has been automatically detected.

    8.  Back in the **Advanced Security Settings for RadioManagement** window, select the **Replace owner on subcontainers and objects** check box.

    9.  Click **OK**.

2.  Add **Authenticated Users** to the **Permissions for RadioManagement** groups. If Authenticated Users is already listed in the **Group** or user **names** box, skip to Step 3.

    1.  Click the **Add** button in the **Permissions for RadioManagement** window.

    2.  Enter **Authenticated Users** in the **Enter the object name to select** box, and then click the **Check Names** button. Click **OK** after the name has been automatically detected.

3.  Give **Authenticated Users** full control.

    1.  **Authenticated Users** is now listed in the **Permissions for RadioManagement** window.

    2.  Choose **Authenticated Users**, and then and select the **Full Control** check box.

    3.  Click **OK**.

4.  Rerun the tests.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Logo%20Program%20Newsletter%20-%20September%2011,%202012%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





