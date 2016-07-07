---
author: joshbax-msft
title: Secure Digital Host Controller Storage Testing Prerequisites
description: Secure Digital Host Controller Storage Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d9ac8b55-0b6f-42e0-911d-404c5e130d16
---

# Secure Digital Host Controller Storage Testing Prerequisites


This topic describes the tasks that you must complete before you test a Secure Digital host controller by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computer](#bkmk-configure).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware Requirements


To test a Secure Digital host controller, you need the following hardware. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the description for each test that appears for the device in Windows HCK Studio.

-   1 test computer that meets the Windows HCK requirements. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   The Secure Digital host controller that you want to test.

-   1 or more Secure Digital memory cards that comply with the requirements of the Windows Hardware Certification Program. You need a memory card for each port on the Secure Digital host controller.

    **Note**  
    If the Secure Digital host controller supports High Speed mode, the memory card that you use must also be High Speed.

     

-   1 USB 2.0 hub if the Secure Digital host controller supports USB.

To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test your device, at least 1 computer in the pool must contain 4 processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that don't include a driver to test, like tests for a hard disk drive, the Windows HCK scheduler constrains the tests that validate the device's and driver's Rebalance, D3 State, and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Make sure that the first test computer in the list meets the minimum hardware requirements.

**Note**  
Except for para-virtualization drivers (as defined by Windows Logo Program Requirement Policy-0020), you can't use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. Virtualization products don't support the underlying functionality that's required to pass the tests that relate to multiple processor groups, device power management, device Peripheral Component Interconnect (PCI) functionality, and other tests.

 

## <a href="" id="bkmk-softwarerequirements"></a>Software Requirements


To test a Secure Digital host controller, you need this software:

-   The drivers for the test device

-   The latest Windows HCK filters or updates

## <a href="" id="bkmk-configure"></a>Configuring the Test Computer


To configure the test computer for your test device, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network. The test network is the network that contains Windows HCK Studio and Windows HCK Controller.

2.  Install the test device and any accessories.

3.  If you must install the manufacturer-supplied device driver on the test computer, do this now.

4.  If the test device is connected through a USB port, connect the USB 2.0 controller to the high-speed USB 2.0 hub, and then connect the test device to the downstream port of the high-speed USB 2.0 hub.

    **Note**  
    Don't connect the USB test device directly to the root hub of the USB 2.0 controller.

     

5.  Place Secure Digital memory cards in every port of the test controller.

6.  Verify that the removable Secure Digital host controller functions correctly on the test computer (specifically, that the test computer can detect the Secure Digital memory cards).

7.  Install the Windows HCK client application on the test computer.

8.  Use Windows HCK Studio to create a computer pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires you to set parameters before you run it, a dialog box will appear for that test. For more information, review the specific test topic.

Some Windows HCK tests require user intervention. When you're running tests for a submission, it's a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting the completion of an automated test.

**Warning**  
When testing storage devices, we strongly recommend that you complete all Device Fundamentals tests before starting storage tests. Storage tests will reconfigure your test device, leaving the device in a state unsuitable to support Device Fundamentals tests. The following configurations provide steps to create volume on the storage test device. This is important to complete the Device Fundamental part of testing (DevFund).

 

 

 






