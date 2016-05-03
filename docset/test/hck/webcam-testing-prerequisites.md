---
author: joshbax-msft
title: Webcam Testing Prerequisites
description: Webcam Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 10f2d2b4-77eb-4e8a-b452-9809cbb83872
---

# Webcam Testing Prerequisites


This section describes the tasks that you must complete before you test a webcam by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hck-webcam-hr)

-   [Review the software requirements](#bkmk-hck-webcam-sr)

-   [Configure the test computer](#bkmk-hck-webcam-tc)

A webcam is a USB video device class that describes devices that can stream video.

**Note**  
If the webcam isn't a stand-alone product (for example, an integrated webcam in a laptop or another mobile computer), these tests run as part of system certification.

 

## <a href="" id="bkmk-hck-webcam-hr"></a>Hardware requirements


The following hardware is required for testing a webcam:

-   A test computer that meets the [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   The device under test (the webcam).

-   For internal webcams, a mirror to reflect a screen image back into the camera.

-   A speaker positioned close to the webcam's microphone.

You might need additional hardware (for example, a USB hub) to test some USB capabilities of the webcam. To find out if additional hardware requirements apply, see the description of each USB test that's identified for your webcam in Windows HCK Studio.

## <a href="" id="bkmk-hck-webcam-sr"></a>Software requirements


The following software is required for testing a webcam:

-   The driver for the webcam

-   The latest Windows HCK filters or updates

## <a href="" id="bkmk-hck-webcam-tc"></a>Test computer configuration


To configure the test computer for webcam testing:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network (the network that contains Windows HCK Studio and Windows HCK Controller).

2.  Install the manufacturer-supplied device driver, if necessary, on the test computer.

3.  Attach the webcam to the test computer (if external).

4.  Install the Windows HCK client application on the test computer.

5.  By using Windows HCK Studio, create a computer pool and move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters before it is run, a dialog box appears for that test. Review the specific test topic for more information.

Manual Windows HCK tests require user intervention. It's best to run automated tests separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Webcam%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




