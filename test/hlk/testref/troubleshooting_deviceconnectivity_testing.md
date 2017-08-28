---
title: Troubleshooting Device.Connectivity Testing
Description: Troubleshooting Device.Connectivity Testing
ms.assetid: 2d03925a-fdee-4be3-9ef7-4177b1aa8117
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Device.Connectivity Testing

To troubleshoot issues with PCI device, USB devices, or USB hub connectivity tests, follow these steps:

1.  Review:

    -   <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>

    -   The following topics, depending on the device type:

        -   <xref rid="p_hlk_test.pci_deviceconnectivity_testing_prerequisites">PCI Device.Connectivity Testing Prerequisites</b>

        -   <xref rid="p_hlk_test.proximity_deviceconnectivity_testing_prerequisites">Proximity Device.Connectivity Testing Prerequisites</b>

        -   <xref rid="p_hlk_test.usb_deviceconnectivity_testing_prerequisites">USB Device.Connectivity Testing Prerequisites</b>

        -   <xref rid="p_hlk_test.usb_hubconnectivity_testing_prerequisites">USB Hub.Connectivity Testing Prerequisites</b>

    -   

2.  Verify that you have installed the latest Windows HLK filters and kit updates. For more information, see <xref rid="p_hlk.windows_hardware_lab_kit_filters">Windows Hardware Lab Kit Filters</b>.

3.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

4.  If you cannot obtain a successful test result, contact <xref rid="p_hlk.windows_hlk_support">Windows HLK Support</b>.

## Information about USB connectivity tests for Windows 7

The advantages of connecting a device to a USB 2.0 hub are as follows:

-   We recommended this connection for regular USB devices.

-   This connection is required for the USB Selective Suspend test. For more information, see <xref rid="p_hlk_test.06e1e2d7-ac7c-4ded-82f7-9c6a31386880">USB Internal Device Idle Test - Compat</b>.

-   This connection forces the Enhanced Host Controller Interface (EHCI) high-speed controller to enumerate low-speed and full-speed devices.

The disadvantages of connecting a device to a USB 2.0 hub are as follows:

-   Devices that have embedded hubs must be directly connected for certification tests.

-   We do not recommend multi-TT (transaction translator) hubs for certification testing.

When you are testing a device that has an embedded high-speed hub, attach the device directly to the system for all tests.

<seealso> <xref rid="p_hlk_test.device_connectivity_tests">Device.Connectivity Tests</b> <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> </seealso>



