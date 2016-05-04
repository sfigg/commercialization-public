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

 

 







