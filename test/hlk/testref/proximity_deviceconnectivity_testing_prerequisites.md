---
title: Proximity Device.Connectivity Testing Prerequisites
Description: Proximity Device.Connectivity Testing Prerequisites
ms.assetid: 98e384ef-25ca-4f17-93f2-60a3ee5a7a03
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Proximity Device.Connectivity Testing Prerequisites

This topic describes the tasks that you must complete before you test your device for proximity feature support by using the Windows Hardware Lab Kit (Windows HLK):

-   <xref local="BKMK_HCK_SDC_hR">Hardware requirements</b>.

-   <xref local="BKMK_HCK_SDC_sR">Software requirements</b>.

-   <xref local="BKMK_HCK_SDC_tC">Test computer configuration</b>.

## Hardware requirements

To run the proximity tests, you need the following hardware:

-   One test device that includes the proximity feature (for example, a proximity-enabled mouse or keyboard).

-   One test computer that meets the <xref rid="p_sxs_hlk.windows_hlk_prerequisites">Windows HLK Prerequisites</b> and has one near field proximity hardware device attached.

-   One proximity controller.

## Software requirements

To run the proximity tests, you need the following software:

-   The drivers for the test device

-   The latest Windows HLK filters and software updates

## Test computer configuration

To configure the test computer for proximity testing, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network (the network that contains Windows HLK Studio and Windows HLK Controller).

2.  If the test computer doesn't include an integrated proximity controller, attach an external proximity controller to the test computer.

3.  Install the manufacturer-supplied device driver, if it's required, on the test computer.

4.  Install the Windows HLK client application on the test computer.

5.  By using Windows HLK Studio, create a computer pool and move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires you to set parameters before you run it, a dialog box will appear for that test. For more information, review that test topic.

Some Windows HLK tests require user intervention. When you're running tests for a submission, it's a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting the completion of an automated test.

<note type="important">
You must open the desktop on the test computer before you run any proximity tests. To do this, choose the Desktop tile from the Start screen after the test computer starts.


>[!NOTE]
If a device supports multiple connectivity methods, complete a separate submission for each connectivity method.






