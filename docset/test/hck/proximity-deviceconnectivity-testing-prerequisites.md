---
author: joshbax-msft
title: Proximity Device.Connectivity Testing Prerequisites
description: Proximity Device.Connectivity Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1062898a-e055-4ecd-b308-322b6d0441c8
---

# Proximity Device.Connectivity Testing Prerequisites


This topic describes the tasks that you must complete before you test your device for proximity feature support by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hck-sdc-hr).

-   [Review the software requirements](#bkmk-hck-sdc-sr).

-   [Configure the test computer](#bkmk-hck-sdc-tc).

## <a href="" id="bkmk-hck-sdc-hr"></a>Hardware requirements


To run the proximity tests, you need the following hardware:

-   One test device that includes the proximity feature (for example, a proximity-enabled mouse or keyboard).

-   One test computer that meets the [Windows HCK Prerequisites](windows-hck-prerequisites.md) and has one near field proximity hardware device attached.

-   One proximity controller.

## <a href="" id="bkmk-hck-sdc-sr"></a>Software requirements


To run the proximity tests, you need the following software:

-   The drivers for the test device

-   The latest Windows HCK filters and software updates

## <a href="" id="bkmk-hck-sdc-tc"></a>Test computer configuration


To configure the test computer for proximity testing, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network (the network that contains Windows HCK Studio and Windows HCK Controller).

2.  If the test computer doesn't include an integrated proximity controller, attach an external proximity controller to the test computer.

3.  Install the manufacturer-supplied device driver, if it's required, on the test computer.

4.  Install the Windows HCK client application on the test computer.

5.  By using Windows HCK Studio, create a computer pool and move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires you to set parameters before you run it, a dialog box will appear for that test. For more information, review that test topic.

Some Windows HCK tests require user intervention. When you're running tests for a submission, it's a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting the completion of an automated test.

**Important**  
You must open the desktop on the test computer before you run any proximity tests. To do this, choose the Desktop tile from the Start screen after the test computer starts.

 

**Note**  
If a device supports multiple connectivity methods, complete a separate submission for each connectivity method.

 

 

 






