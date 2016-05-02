---
author: joshbax-msft
title: Troubleshooting Device.Connectivity Testing
description: Troubleshooting Device.Connectivity Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 991829f3-8800-4e0b-bffd-c4cf59740757
---

# Troubleshooting Device.Connectivity Testing


To troubleshoot issues with PCI device, USB devices, or USB hub connectivity tests, follow these steps:

1.  Review:

    -   [Troubleshooting Windows HCK Test Failures](troubleshooting-windows-hck-test-failures.md)

    -   The following topics, depending on the device type:

        -   [PCI Device.Connectivity Testing Prerequisites](pci-deviceconnectivity-testing-prerequisites.md)

        -   [Proximity Device.Connectivity Testing Prerequisites](proximity-deviceconnectivity-testing-prerequisites.md)

        -   [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md)

        -   [USB Hub.Connectivity Testing Prerequisites](usb-hubconnectivity-testing-prerequisites.md)

    -   

2.  Verify that you have installed the latest Windows HCK filters and kit updates. For more information, see [Windows Hardware Certification Kit Filters](windows-hardware-certification-kit-filters.md).

3.  For a test failure, look for usable information in the Windows HCK Studio test log. If you find usable information, resolve the issue and rerun the test.

4.  If you cannot obtain a successful test result, contact [Windows HCK Support](windows-hck-support.md).

### Information about USB connectivity tests for Windows 7

The advantages of connecting a device to a USB 2.0 hub are as follows:

-   We recommended this connection for regular USB devices.

-   This connection is required for the USB Selective Suspend test. For more information, see [USB Selective Suspend](usb-selective-suspend53823f4f-d797-4045-8146-eeb524c7735b.md).

-   This connection forces the Enhanced Host Controller Interface (EHCI) high-speed controller to enumerate low-speed and full-speed devices.

The disadvantages of connecting a device to a USB 2.0 hub are as follows:

-   Devices that have embedded hubs must be directly connected for certification tests.

-   We do not recommend multi-TT (transaction translator) hubs for certification testing.

When you are testing a device that has an embedded high-speed hub, attach the device directly to the system for all tests.

## Related topics


[Device.Connectivity Testing](deviceconnectivity-testing.md)

[Troubleshooting Windows HCK](troubleshooting-windows-hck.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Troubleshooting%20Device.Connectivity%20Testing%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





