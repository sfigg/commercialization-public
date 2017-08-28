---
title: Scanner Testing Prerequisites
Description: Scanner Testing Prerequisites
ms.assetid: f6bf91ea-0ab6-426c-9e35-f94dd7cc1a9c
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Scanner Testing Prerequisites

This section describes the tasks that you must complete before you test a scanner by using the Windows Hardware Lab Kit (Windows HLK):

-   <xref local="BKMK_HCK_Scanner_hR">Hardware requirements</b>.

-   <xref local="BKMK_HCK_Scanner_sR">Software requirements</b>.

-   <xref local="BKMK_HCK_Scanner_tC">Test system configuration</b>.

## Hardware requirements

The following hardware is required for scanner testing. Additional hardware may be required if the test device provides bus-specific support. See the test description for each bus-specific test to determine whether there are additional hardware requirements.

-   Basic Windows HLK test setup (Controller and Studio). See <xref rid="p_sxs_hlk.windows_hlk_getting_started">Windows HLK Getting Started</b>

-   One test computer.

    >[!NOTE]
    All computers must meet the Windows HLK requirements. If two test computers are required, both computers must be in the same computer pool. For more information, see <xref rid="p_sxs_hlk.windows_hlk_prerequisites">Windows HLK Prerequisites</b>.

    For testing networking capabilities, the test computer that the scanner is physically attached to is referred to as the System Under Test (SUT) and the other computer is referred to as the support computer.

    
-   The test scanner

-   One standalone wireless network adapter that supports SoftAP (for example, a D-Link WDA-1320 Desktop Adapter), and a Wireless router if the test scanner includes wireless networking capabilities.

-   One stand-alone network adapter (if the test computer does not include an integrated network adapter) and an Ethernet hub or switch if the test scanner includes network scanning capabilities.

-   One USB cable and one USB 3.0 hub for testing scanners that support USB 3.0; or a USB 2.0 hub for testing a scanner that supports USB 2.0

>[!NOTE]
Testing a device to obtain Server Device certification requires that the system being used to test the device supports four processors and a minimum of 1 GB of RAM. These system capabilities are required for testing the device and driver for their Rebalance, D3 State and Multiple Processor Group functionality. You do not need a computer that actually has more than 64 processors to test your device.

If a pool of test computers is used to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and driver being tested. As long as the driver is the same on all computers in the pool, the schedule will be created to run against all computers.

For those tests that do not include a driver to test, such as testing a hard drive, the Windows HLK scheduler will constrain the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default computer. This computer should also be manually configured to have multiple processor groups. The default computer is the first one listed. Test personnel, in this case, should ensure that this first computer meets these minimum hardware requirements.


>[!NOTE]
Except for para-virtualization drivers (as defined by the <xref hlink="http://go.microsoft.com/fwlink/p/?LinkID=615222">WHCP Policies and Processes</b> document), physical devices and their associated drivers being tested for a server logo or signature may not be tested in virtual machines using any form of virtualization. This is because not all virtualization products support the underlying functionality needed to pass the tests relating to Multiple Processor Groups, Device Power Management, Device PCI functionality, and so on.


>[!NOTE]
Multiple Processor Groups Setting
You must set the value for the processor group size for Hardware Lab Kit testing of Windows Server 2008 R2 and later device drivers for certification. This is done by running bcdedit in an elevated command prompt window, using the /set option.

The commands for adding the group settings and restarting are as follows:

`bcdedit.exe /set groupsize 2 bcdedit.exe /set groupaware on shutdown.exe -r -t 0 -f`
The commands for removing the group settings and rebooting are as follows:

`bcdedit.exe /deletevalue groupsize bcdedit.exe /deletevalue groupaware shutdown.exe -r -t 0 -f`

>[!NOTE]
**Code Integrity Setting**

The Virtualization Based Security feature (VBS) of Windows Server 2016 must be enabled using Server Manager first.

Once that has occurred, the following Registry key must be created and set:

`HKLM\System\CurrentControlSet\Control\DeviceGuard HypervisorEnforcedCodeIntegrity:REG_DWORD 0 or 1 (disabled, enabled)`

## Software requirements

It is good practice to clean-install the operating system on client systems before final test passes to ensure that the system is in a known clean state.

The following software is required to run the scanner tests:

-   The AppVerifier application.

    >[!NOTE]
    AppVerifier is installed during the Windows HLK client application installation.

    
-   The driver package being tested installed on a client system

-   Desktop Experience, for computers with Windows Server 2008 R2 installed. Desktop Experience ensures that the scanner tests run correctly. Run the following command from the command prompt to install Desktop experience: **ocsetup.exe DesktopExperience /quiet /norestart**

## Test system configuration

To configure the test computer for scanner testing, follow these steps:

1.  Install the appropriate Windows operating system on the test computer.

2.  Configure the test computer for your test network (the network that contains the Windows HLK Studio and Windows HLK Controller.

3.  Connect the SUT and the support computer to an Ethernet switch or hub to test wired networking capabilities of your scanner. Connect a wireless router to the support computer to test wireless capabilities.

4.  Install the manufacturer-supplied device driver on the test computer, if the device requires one that is not included with Windows.

5.  Attach the test scanner to the test computer using a USB cable.

6.  Check that the scanner functions properly on the test computer.

7.  Install the Windows HLK client application on the test computer.

8.  Create a computer pool and move the test computers to that pool by using Windows HLK Studio.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HLK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.



