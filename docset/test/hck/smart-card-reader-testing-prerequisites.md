---
author: joshbax-msft
title: Smart Card Reader Testing Prerequisites
description: Smart Card Reader Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d8fada65-c326-446d-9fe4-b7f065b1f8d3
---

# Smart Card Reader Testing Prerequisites


This section describes the tasks that you must complete before you test a smart card reader by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hck-sc-hr)

-   [Review the software requirements](#bkmk-hck-sc-sr)

-   [Configure the test computer](#bkmk-hck-sc-tc)

## <a href="" id="bkmk-hck-sc-hr"></a>Hardware requirements


The following hardware is required for testing a smart card reader. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the test description for each test that appears for the device in Windows HCK Studio.

-   One test computer. The test computer must meet the Windows HCK requirements. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   The smart card reader that you want to test.

    **Note**  
    If the device supports universal serial bus (USB), you must have two test devices to run the USB Serial Number test. For more information, see [USB Serial Number](usb-serial-number-6e589c10-ed2f-4ec4-bc49-6f0b1ceb2139.md).

     

-   One Personal Computer / Smart Card (PC/SC) workgroup test card (from card set 2).

    This card set can be purchased from the [PC/SC website](http://go.microsoft.com/fwlink/?LinkId=228902). Test the product by using the smart cards that the PC/SC workgroup test card set includes. Do not include these smart cards with your test submission.

-   One of the following, depending on the type of connection that the smart card reader implements:

    -   A USB 2.0 hub (if the card reader connects through a USB connection).

    -   An IEEE 1394 controller (if the card reader connects through a 1394 connection).

        **Note**  
        Support for IEEE 1394 has been deprecated.

         

**Note**  
To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that do not include a driver to test, such as hard disk drive tests, the Windows HCK scheduler constrains the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Test personnel must make sure that the first test computer in the list meets the minimum hardware requirements.

 

**Note**  
Except for para-virtualization drivers (as defined by Logo Program Requirement Policy-0020), you may not use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. All virtualization products do not support the underlying functionality that is required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

 

## <a href="" id="bkmk-hck-sc-sr"></a>Software requirements


The following software is required for testing a smart card reader:

-   The drivers for the test device.

-   The latest Windows HCK filters or updates.

## <a href="" id="bkmk-hck-sc-tc"></a>Test computer configuration


To configure the test computer for your test device, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network. The test network is the network that contains Windows HCK Studio and Windows HCK Controller.

2.  If the reader is an internal device, install the smart card reader in the computer. If the reader is an external device, attach a controller to the test computer, and then attach the reader to the external controller.

    If the test device is connected through the USB port, connect the USB 2.0 controller to the high-speed USB 2.0 hub, and then connect the test device to the downstream port of the high-speed USB 2.0 hub.

    **Note**  
    Do not connect the USB test device directly to the root hub of the USB 2.0 controller.

     

3.  If you have to install the manufacturer-supplied device driver on the test computer, do this now.

4.  Verify that the smart card reader functions correctly on the test computer.

5.  Install the Windows HCK client application on the test computer.

6.  Use Windows HCK Studio to create a machine pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

 

 






