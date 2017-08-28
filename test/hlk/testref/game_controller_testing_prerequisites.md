---
title: Game Controller Testing Prerequisites
Description: Game Controller Testing Prerequisites
ms.assetid: 0d027160-6ab0-4912-9be9-7727a48985ef
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Game Controller Testing Prerequisites

This section describes the tasks that you must complete before you test a game controller by using the Windows Hardware Lab Kit (Windows HLK).

-   <xref local="BKMK_HardwareRequirements">Hardware requirements</b>.

-   <xref local="BKMK_SoftwareRequirements">Software requirements</b>.

-   <xref local="BKMK_Configure">Test computer configuration</b>.

## Hardware requirements

The following hardware is required for testing a game controller. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the test description for each test that appears for the device in Windows HLK Studio.

-   One test computer. The test computer must meet the Windows HLK prerequisites. For more information, see <xref rid="p_sxs_hlk.windows_hlk_prerequisites">Windows HLK Prerequisites</b>.

-   The game controller to be tested.

-   One USB 2.0 hub that has a Windows logo if the game controller is a USB-based device.

## Software requirements

The following software is required for testing a game controller:

-   The drivers for the test device.

-   The latest Windows HLK filters or updates.

## Test computer configuration

To configure the test computer for your test device, follow these steps:

1.  Install the appropriate Windows operating system on the test computer and then configure the computer for your test network (the network that contains the Windows HLK Studio and Windows HLK Controller.

2.  Attach a USB 2.0 hub to your test computer.

3.  If the game controller uses USB as the primary connection, connect the game controller USB 2.0 hub. If the game controller includes a headset, the headset must be attached to the test game controller.

    >[!NOTE]
    Do not connect the USB test device directly to the root hub of the USB 2.0 controller.

    
4.  Open Joy.cpl and ensure that the game controller shows up in Joy.cpl.

5.  If you have to install the manufacturer-supplied device driver on the test computer, do this now.

6.  Verify that the game controller functions correctly on the test computer.

7.  Install the Windows HLK client application on the test computer.

8.  Use Windows HLK Studio to create a machine pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HLK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.



