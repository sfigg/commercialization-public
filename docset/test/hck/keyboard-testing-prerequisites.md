---
author: joshbax-msft
title: Keyboard Testing Prerequisites
description: Keyboard Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0f5405e6-0bdd-42ac-ba2c-9601e1b2b381
---

# Keyboard Testing Prerequisites


This section describes the tasks that you must complete before you test a keyboard by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computer](#bkmk-configure).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware requirements


The following hardware is required for testing a keyboard. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the test description for each test that appears for the device in Windows HCK Studio.

-   One test computer. The test computer must meet the Windows HCK prerequisites. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   One test keyboard (the keyboard must be compliant with Microsoft®-specified scan codes \[PS2 or HID\]).

-   If the keyboard is connected through a USB device, one external USB 2.0 high-speed hub that has a logo (unless the keyboard contains an embedded hub).

## <a href="" id="bkmk-softwarerequirements"></a>Software requirements


The following software is required for testing a keyboard:

-   The drivers for the test device.

-   The latest Windows HCK filters or updates.

## <a href="" id="bkmk-configure"></a>Test computer configuration


To configure the test computer for your test device, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network. The test network is the network that contains the Windows HCK Studio and Windows HCK Controller.

2.  Attach a USB 2.0 hub to the test computer.

3.  If the keyboard supports USB, attach the keyboard to the test computer. Verify that the keyboard is plugged into the external USB 2.0 high-speed hub that is connected to the test computer. To test a keyboard that supports Bluetooth or wireless connections, connect the associated base station to the USB 2.0 hub.

    **Note**  
    Do not connect the keyboard or wireless base station directly to the root hub of a USB 2.0 controller.

     

4.  If you have to install the manufacturer-supplied device driver on the test computer, do this now.

5.  Make sure that the keyboard functions correctly on the test computer.

6.  Install the Windows HCK client application on the test computer.

7.  Use Windows HCK Studio to create a machine pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

 

 






