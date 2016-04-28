---
author: joshbax-msft
title: Printer Testing Prerequisites
description: Printer Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c28ee781-91d3-485b-9dc2-86a99328020f
---

# Printer Testing Prerequisites


This section describes the tasks that you must complete before you test a printer by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hck-printer-hr).

-   [Review the software requirements](#bkmk-hck-printer-sr).

-   [Configure the test computers](#bkmk-hck-printer-sc).

## <a href="" id="bkmk-hck-printer-hr"></a>Hardware requirements


The following hardware is required for printer testing. Additional hardware may be required if the test device provides bus-specific support. See the test description for each bus-specific test to determine whether there are additional hardware requirements.

-   Basic Windows HCK test setup (Controller and Studio). See [Windows HCK Getting Started](windows-hck-getting-started.md).

-   One test computer.

    **Note**  
    All computers must meet the Windows HCK requirements. If two test computers are required, both computers must be in the same computer pool. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

    For testing networking capabilities, the test computer that the scanner is physically attached to is referred to as the System Under Test (SUT) and the other computer is referred to as the support computer.

     

-   One test printer.

-   One wireless network card that supports SoftAP (for example, a D-Link WDA-1320 Desktop Adapter) and a Wireless router if the test printer includes wireless networking capabilities.

-   One stand-alone network adapter (if the test computer does not include an integrated network adapter) and an Ethernet hub or switch if the test scanner includes network printing capabilities.

-   One USB cable and one USB 3.0 hub for testing printers that support USB 3.0; or a USB 2.0 hub for testing a printer that supports USB 2.0

-   Printer paper.

Other hardware may be required to enable certain scenarios.

-   Kernel Debugger system attached to the Windows HCK client.

-   Print server to test print server configurations.

**Note**  
Testing a device for Server Device certification requires that the system that is being used to test the device supports four processors and a minimum of 1 GB of RAM. These system capabilities are required for testing the device and driver for their Rebalance, D3 State and Multiple Processor Group functionality. You do not need a computer that has more than 64 processors to test your device.

If a pool of test computers is used to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and driver that is being tested. As long as the driver is the same on all computers in the pool, the test will be created to run against all computers.

For those tests that do not include a driver to test, such as testing a hard drive, the Windows HCK scheduler will require the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default computer. This computer should also be manually configured to have multiple processor groups. The default computer is the first computer listed. Test personnel, in this case, should ensure that this first computer meets these minimum hardware requirements.

 

**Note**  
Except for para-virtualization drivers (as defined by Logo Program Requirement Policy-0020), physical devices and their associated drivers being tested for a server certification or signature may not be tested in virtual machines using any form of virtualization. This is because not all virtualization products support the underlying functionality needed to pass the tests relating to Multiple Processor Groups, Device Power Management, Device PCI functionality, and so on.

 

## <a href="" id="bkmk-hck-printer-sr"></a>Software requirements


Install the operating system on the client systems before the final test passes to ensure that the system is in a known good state.

The following software is required to run the printer tests:

-   The driver package that is being tested on the client system.

-   The AppVerifier application.

-   The Windows .NET Framework 4.0 for computers with Windows Server 2008 R2 installed. This ensures that the tests run correctly.

    **Note**  
    Both AppVerifier and the .NET Framework are installed during the Windows HCK client application installation.

     

## Device configuration


To configure the test device for HCK testing, follow these steps:

1.  Stage the driver you want like to use for testing to the driver store.

2.  Use Plug and Play to install the device on the test machine.

3.  Confirm that the driver you want to test was installed automatically.

If the driver you want to use for testing was not installed, follow these steps:

1.  Select the printer in **Device and Printers**.

2.  Right-click the printer and select **Printer Properties**.

3.  Select the **Advanced** tab.

4.  Under **Driver**, select the driver you want to test.

For the print tests to run properly, the queue must have plug and play data populated. Do not manually create a new queue using the same port and the driver.

## <a href="" id="bkmk-hck-printer-sc"></a>Test computer configuration


To configure the test computer for printer testing, follow these steps:

1.  Install the appropriate Windows operating system on the test computer.

2.  Configure the test computer for your test network (the network that contains the Windows HCK Studio and Windows HCK Controller.

3.  Connect the SUT and the support computer to an Ethernet switch or hub to test wired networking capabilities of your printer. Connect a wireless router to the support computer to test wireless capabilities.

4.  Install the manufacturer-supplied device driver on the test computer, if the device requires one that is not included with Windows.

5.  Attach the test printer to the test computer using a USB cable.

6.  Check that the printer functions properly on the test computer.

7.  Install the Windows HCK client application on the test computer.

8.  Create a computer pool and move the test computers to that pool by using Windows HCK Studio.

Make sure that the test computers are in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

If a device supports multiple connectivity methods, you can either test each individual connectivity, or run them all at one time. Each connectivity will run all of the print features, and are separate from each other.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Printer%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




