---
title: Digitizer Testing Prerequisites
description: Digitizer Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a556ad6e-35da-41bc-8073-a2d8c9e49472
---

# Digitizer Testing Prerequisites


This section describes the tasks that you must complete before you test a digitizer for Windows 8 by using the Windows Hardware Lab Kit (Windows HLK).

In this topic:

-   [Hardware requirements](#bkmk-hck-digitizer-hr).

-   [Software requirements](#bkmk-hck-digitizer-sr).

-   [Test computer configuration](#bkmk-hck-digitizer-tc).

To learn more, go to [Windows Certification Program Polices and Process](http://msdn.microsoft.com/en-us/library/windows/hardware/hh852370)

## <span id="BKMK_HCK_Digitizer_hR"></span><span id="bkmk_hck_digitizer_hr"></span><span id="BKMK_HCK_DIGITIZER_HR"></span>Hardware requirements


To test a digitizer, you must have the following hardware. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the test description for each test that appears for the device in Windows HLK Studio.

-   One test computer that meets the Windows HLK prerequisites. For more information, see [Windows HLK Prerequisites](p_sxs_hlk.windows_hlk_prerequisites).

-   The digitizer device to be tested.

-   One USB hub that is Windows Certified if the digitizer is a USB-based device.

**Note**  
To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that do not include a driver to test, such as hard disk drive tests, the Windows HLK scheduler constrains the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Test personnel must make sure that the first test computer in the list meets the minimum hardware requirements.

 

**Note**  
Except for para-virtualization drivers (as defined by the [WHCP Policies and Processes](http://go.microsoft.com/fwlink/p/?LinkID=615222) document), you may not use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. All virtualization products do not support the underlying functionality that is required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

 

**Note**  Multiple Processor Groups Setting
You must set the value for the processor group size for Hardware Lab Kit testing of Windows Server 2008 R2 and later device drivers for certification. This is done by running bcdedit in an elevated command prompt window, using the /set option.

The commands for adding the group settings and restarting are as follows:

``` syntax
bcdedit.exe /set groupsize 2
bcdedit.exe /set groupaware on
shutdown.exe -r -t 0 -f
```

The commands for removing the group settings and rebooting are as follows:

``` syntax
bcdedit.exe /deletevalue groupsize
bcdedit.exe /deletevalue groupaware
shutdown.exe -r -t 0 -f
```

 

**Note**  
**Code Integrity Setting**

The Virtualization Based Security feature (VBS) of Windows Server 2016 must be enabled using Server Manager first.

Once that has occurred, the following Registry key must be created and set:

``` syntax
HKLM\System\CurrentControlSet\Control\DeviceGuard
HypervisorEnforcedCodeIntegrity:REG_DWORD
0 or 1 (disabled, enabled)
```

 

## <span id="BKMK_HCK_Digitizer_sR"></span><span id="bkmk_hck_digitizer_sr"></span><span id="BKMK_HCK_DIGITIZER_SR"></span>Software requirements


To test a digitizer, you must have the following software:

-   Windows Server 2008 R2

-   The drivers for the test device

    **Note**  
    You cannot install any touch drivers. You must have correct drivers for other components in the test device that affects testing, such as a graphic driver.

     

-   The latest Windows HLK filters or updates

## <span id="BKMK_HCK_Digitizer_tC"></span><span id="bkmk_hck_digitizer_tc"></span><span id="BKMK_HCK_DIGITIZER_TC"></span>Test computer configuration


To configure the test computer for your test device, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network. The test network is the network that contains Windows HLK Studio and Windows HLK Controller.

2.  If the test device is connected through the USB port, connect the USB 2.0 controller to the high-speed USB 2.0 hub, and then connect the test device to the downstream port of the high-speed USB 2.0 hub.

    **Note**  
    Don't connect the USB test device directly to the root hub of the USB 2.0 controller.

     

3.  Attach the digitizer device to be tested to the test computer.

4.  Install the manufacturer-supplied device driver, if the device requires one, on the test computer.

    **Note**  
    For touch digitizer, there should be no touch drivers installed.

     

5.  Verify that the digitizer functions correctly on the digitizer device to be tested.

6.  Install the Windows HLK client application on the digitizer device to be tested.

7.  Use Windows HLK Studio to create a computer pool, and then move the test computer to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires you to set parameters before you run it, a dialog box will appear for that test. For more information, review the specific test topic.

Some Windows HLK tests require user intervention. When you're running tests for a submission, it's a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting the completion of an automated test.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Digitizer%20Testing%20Prerequisites%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




