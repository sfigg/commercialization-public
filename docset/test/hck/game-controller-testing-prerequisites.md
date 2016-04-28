---
author: joshbax-msft
title: Game Controller Testing Prerequisites
description: Game Controller Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ee9ae455-9076-48c6-a2cd-e42c08d47a14
---

# Game Controller Testing Prerequisites


This section describes the tasks that you must complete before you test a game controller by using the Windows Hardware Certification Kit (Windows HCK).

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computer](#bkmk-configure).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware requirements


The following hardware is required for testing a game controller. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the test description for each test that appears for the device in Windows HCK Studio.

-   One test computer. The test computer must meet the Windows HCK prerequisites. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   The game controller to be tested.

-   One USB 2.0 hub that has a Windows logo if the game controller is a USB-based device.

## <a href="" id="bkmk-softwarerequirements"></a>Software requirements


The following software is required for testing a game controller:

-   The drivers for the test device.

-   The latest Windows HCK filters or updates.

## <a href="" id="bkmk-configure"></a>Test computer configuration


To configure the test computer for your test device, follow these steps:

1.  Install the appropriate Windows operating system on the test computer and then configure the computer for your test network (the network that contains the Windows HCK Studio and Windows HCK Controller.

2.  Attach a USB 2.0 hub to your test computer.

3.  If the game controller uses USB as the primary connection, connect the game controller USB 2.0 hub. If the game controller includes a headset, the headset must be attached to the test game controller.

    **Note**  
    Do not connect the USB test device directly to the root hub of the USB 2.0 controller.

     

4.  Open Joy.cpl and ensure that the game controller shows up in Joy.cpl.

5.  If you have to install the manufacturer-supplied device driver on the test computer, do this now.

6.  Verify that the game controller functions correctly on the test computer.

7.  Install the Windows HCK client application on the test computer.

8.  Use Windows HCK Studio to create a machine pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Game%20Controller%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




