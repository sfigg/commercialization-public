---
author: joshbax-msft
title: USB Device.Connectivity Testing Prerequisites
description: USB Device.Connectivity Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 51822294-5413-4723-8537-ac9d564659e1
---

# USB Device.Connectivity Testing Prerequisites


This topic describes the tasks that you must complete before you test your USB device by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements),

-   [Configure the test computer](#bkmk-configuringtestcomputer).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware requirements


The following hardware is required for USB device testing. You might need additional hardware if the device includes additional features.

-   A test computer that meets the [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   An EHCI–compliant controller and an xHCI version 1.0 compliant controller, or an xHCI-compliant controller and a high speed hub. The controllers can be either embedded or included on an adapter that is attached or installed in the test computer.

-   Two identical USB test devices. (Note that if the device does not support serial numbers,a legacy test mode option supports using one device only.)

-   A high speed hub if you are using an xHCI controller only.

**Note**  
To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that do not include a driver to test, such as hard disk drive tests, the Windows HCK scheduler constrains the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Test personnel must make sure that the first test computer in the list meets the minimum hardware requirements.

 

**Note**  
Except for para-virtualization drivers (as defined by Logo Program Requirement Policy-0020), you may not use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. All virtualization products do not support the underlying functionality that is required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

 

## <a href="" id="bkmk-softwarerequirements"></a>Software requirements


Before you run the USB tests in the Device.Connectivity category, you should install the latest Windows HCK filters or updates.

## <a href="" id="bkmk-configuringtestcomputer"></a>Test computer configuration


To configure the test computer for USB device testing, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network (the network that contains Windows HCK Studio and Windows HCK Controller).

2.  Attach one of the USB devices to the test computer through an xHCI controller (it can either be attached directly to the root hub port or through a SuperSpeed hub.)

3.  Attach the other USB device to the EHCI port or to a high speed hub that is connected to the XHCI port.

    **Note**  
    If the USB device supports a USB serial number, attach an additional USB 3.0–compliant device to the test computer before you run the USB Serial Number test. For more information about this test, see [USB Serial Number](usb-serial-number-6e589c10-ed2f-4ec4-bc49-6f0b1ceb2139.md).

    To test USB 3.0 or 2.0 devices or hubs on a system running Windows 7, make sure that the device or hub is attached to a USB 2.0 port of an EHCI controller. xHCI controllers on systems running Windows 7 load non-Microsoft drivers. HCK tests cannot detect devices and hubs enumerated by third-party drivers.

     

4.  Optionally, verify that the test device is visible from **Device Manager** on the test computer.

5.  Install the Windows HCK client application on the test computer.

6.  By using Windows HCK Studio, create a machine pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

If a device supports multiple connectivity methods, complete a separate submission for each connectivity method.

## Related topics


[Device.Connectivity Testing](deviceconnectivity-testing.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20Device.Connectivity%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





