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

 

 






