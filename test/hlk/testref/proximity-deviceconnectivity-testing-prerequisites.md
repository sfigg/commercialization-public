---
title: Proximity Device.Connectivity Testing Prerequisites
description: Proximity Device.Connectivity Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 98e384ef-25ca-4f17-93f2-60a3ee5a7a03
---

# Proximity Device.Connectivity Testing Prerequisites


This topic describes the tasks that you must complete before you test your device for proximity feature support by using the Windows Hardware Lab Kit (Windows HLK):

-   [Hardware requirements](#bkmk-hck-sdc-hr).

-   [Software requirements](#bkmk-hck-sdc-sr).

-   [Test computer configuration](#bkmk-hck-sdc-tc).

## <span id="BKMK_HCK_SDC_hR"></span><span id="bkmk_hck_sdc_hr"></span><span id="BKMK_HCK_SDC_HR"></span>Hardware requirements


To run the proximity tests, you need the following hardware:

-   One test device that includes the proximity feature (for example, a proximity-enabled mouse or keyboard).

-   One test computer that meets the [Windows HLK Prerequisites](p_sxs_hlk.windows_hlk_prerequisites) and has one near field proximity hardware device attached.

-   One proximity controller.

## <span id="BKMK_HCK_SDC_sR"></span><span id="bkmk_hck_sdc_sr"></span><span id="BKMK_HCK_SDC_SR"></span>Software requirements


To run the proximity tests, you need the following software:

-   The drivers for the test device

-   The latest Windows HLK filters and software updates

## <span id="BKMK_HCK_SDC_tC"></span><span id="bkmk_hck_sdc_tc"></span><span id="BKMK_HCK_SDC_TC"></span>Test computer configuration


To configure the test computer for proximity testing, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network (the network that contains Windows HLK Studio and Windows HLK Controller).

2.  If the test computer doesn't include an integrated proximity controller, attach an external proximity controller to the test computer.

3.  Install the manufacturer-supplied device driver, if it's required, on the test computer.

4.  Install the Windows HLK client application on the test computer.

5.  By using Windows HLK Studio, create a computer pool and move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires you to set parameters before you run it, a dialog box will appear for that test. For more information, review that test topic.

Some Windows HLK tests require user intervention. When you're running tests for a submission, it's a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting the completion of an automated test.

**Important**  
You must open the desktop on the test computer before you run any proximity tests. To do this, choose the Desktop tile from the Start screen after the test computer starts.

 

**Note**  
If a device supports multiple connectivity methods, complete a separate submission for each connectivity method.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Proximity%20Device.Connectivity%20Testing%20Prerequisites%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




