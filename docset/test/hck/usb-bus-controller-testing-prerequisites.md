---
author: joshbax-msft
title: USB Bus Controller Testing Prerequisites
description: USB Bus Controller Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 568604cf-9759-4546-8d28-3aea46608f4d
---

# USB Bus Controller Testing Prerequisites


This topic describes the tasks that you must complete before you test your USB host controller by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computer](#bkmk-testcomputerconfiguration).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware requirements


The following hardware is required for USB host controller testing. You might need additional hardware if the USB host controller includes additional capabilities. See the test description for each test that the Windows HCK identifies to determine whether the USB host controller requires additional hardware.

-   One test computer that meets the Windows HCK prerequisites. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   One test USB host controller.

For USB 3.0 controller certification you will need a device of each speed and one Windows 8 certified USB 3.0 hub\* on each exposed port.

\*We recommend that you use a USB 3.0 hub that is both USB-IF certified and Windows 8 certified.

**Note**  
To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that do not include a driver to test, such as hard disk drive tests, the Windows HCK scheduler constrains the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Test personnel must make sure that the first test computer in the list meets the minimum hardware requirements.

 

**Note**  
Except for para-virtualization drivers (as defined by Logo Program Requirement Policy-0020), you may not use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. All virtualization products do not support the underlying functionality that is required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

 

## <a href="" id="bkmk-softwarerequirements"></a>Software requirements


The following software is required to run the USB host controller tests:

-   The drivers for the USB host controller.

-   The latest Windows HCK filters or updates.

## <a href="" id="bkmk-testcomputerconfiguration"></a>Test computer configuration


Only one test computer is required for USB host controller testing. To configure the test computer for USB host controller testing, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network. The test network is the network that contains the Windows HCK Studio and Windows HCK Controller.

2.  Install or attach the USB host controller to the test computer, if the controller is not embedded on the motherboard.

3.  Verify that the USB host controller functions correctly by using a USB device.

    **Note**  
    It is a best practice to verify full functionality of the USB host controller before you begin testing.

     

4.  Install the Windows HCK client application on the test computer.

5.  Use Windows HCK Studio to create a machine pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

## Related topics


[Device.BusController Testing](devicebuscontroller-testing.md)

 

 







