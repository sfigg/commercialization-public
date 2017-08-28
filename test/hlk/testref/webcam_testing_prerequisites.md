---
title: Webcam Testing Prerequisites
Description: Webcam Testing Prerequisites
ms.assetid: 2555ac07-aacc-4ec1-80f0-4418c8d68d84
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Webcam Testing Prerequisites

This section describes the tasks that you must complete before you test a webcam by using the Windows Hardware Lab Kit (Windows HLK):

-   <xref local="BKMK_HCK_Webcam_hR">Hardware requirements</b>

-   <xref local="BKMK_HCK_Webcam_sR">Software requirements</b>

-   <xref local="BKMK_HCK_Webcam_tC">Test computer configuration</b>

A webcam is a USB video device class that describes devices that can stream video.

>[!NOTE]
If the webcam isn't a stand-alone product (for example, an integrated webcam in a laptop or another mobile computer), these tests run as part of system certification.


## Hardware requirements

The following hardware is required for testing a webcam:

-   A test computer that meets the <xref rid="p_sxs_hlk.windows_hlk_prerequisites">Windows HLK Prerequisites</b>.

-   The device under test (the webcam).

-   For internal webcams, a mirror to reflect a screen image back into the camera.

-   A speaker positioned close to the webcam's microphone.

You might need additional hardware (for example, a USB hub) to test some USB capabilities of the webcam. To find out if additional hardware requirements apply, see the description of each USB test that's identified for your webcam in Windows HLK Studio.

## Software requirements

The following software is required for testing a webcam:

-   The driver for the webcam

-   The latest Windows HLK filters or updates

## Test computer configuration

To configure the test computer for webcam testing:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network (the network that contains Windows HLK Studio and Windows HLK Controller).

2.  Install the manufacturer-supplied device driver, if necessary, on the test computer.

3.  Attach the webcam to the test computer (if external).

4.  Install the Windows HLK client application on the test computer.

5.  By using Windows HLK Studio, create a computer pool and move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters before it is run, a dialog box appears for that test. Review the specific test topic for more information.

Manual Windows HLK tests require user intervention. It's best to run automated tests separately from manual tests. This prevents a manual test from interrupting completion of an automated test.



