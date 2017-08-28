---
title: Device.Fundamentals Reliability Testing Prerequisites
Description: Device.Fundamentals Reliability Testing Prerequisites
ms.assetid: e2278239-49c7-45ee-ae3d-2dbbb2c71487
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Device.Fundamentals Reliability Testing Prerequisites

This content applies to a subset of the Windows Hardware Lab Kit (Windows HLK) Device.Device Fundamentals tests that are known as <mark type="term">Device Fundamentals Reliability</b> tests. (The applicable test names begin with “*DF –* “.)

This topic describes configuration requirements for the Windows HLK Device Fundamentals Reliability tests.

<mark type="bullet_intro">In this article:</b>

-   <xref local="BKMK_HCK_Devfund_gR">General requirements</b>

-   <xref local="btmice">Bluetooth mice</b>

-   <xref local="lan">LAN adapters </b>

-   <xref local="wlan">WLAN adapters </b>

-   <xref local="BKMK_HCK_Devfund_tC">Storage devices </b>

-   <xref local="mutt">Microsoft USB Test Tool (MUTT)</b>

>[!NOTE]
For information regarding prerequisites and configuration details for additional device types, see <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/Hh781398(v=vs.85).aspx">Provided WDTF Simple I/O plug-ins</b>.


## General requirements

Device Fundamentals Reliability tests require devices to be configured properly for the tests to test I/O on devices when they run. Tests log device configuration errors if devices are not configured properly.

These tests use WDTF Simple I/O interfaces to test I/O in devices. Simple I/O plug-ins are extensions to the Windows Driver Test Framework (WDTF) that implement generic device-specific I/O functionality. Before you run any tests, review the specific plug-in requirements for the device. For more information, see <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/Hh781398(v=vs.85).aspx">Provided WDTF Simple I/O plug-ins</b>.

## Bluetooth mice

When you test a Bluetooth mouse, you must keep the mouse moving during the entire course of testing so that the HID mouse devnode stays enumerated the whole time. Otherwise, the Device Fundamentals Reliability tests will log failures. We recommend that you use custom/simple automatic solutions to keep the mouse moving during the tests.

## LAN adapters

>[!NOTE]
The network test configuration that is required to run Device Fundamentals Reliability tests for network LAN adapters is different from the network test configuration that is required to run <xref rid="p_hlk_test.device_network_tests">Device.Network Tests</b>.


If the device under test (DUT) is a network LAN adapter, make sure that the network LAN adapter has an IPv6 gateway address assigned to it before you run Device Fundamentals Reliability tests.

If the test network environment cannot support a test adapter that has an assigned IPv6 gateway address (for example, if you are testing in a private network configuration or in a network configuration that supports IPv4 gateway assignments only), we recommend that you use the following test configuration:

1.  Select a remote client or server system that is running Windows® 7 or later version of Windows.

2.  Use an Ethernet cable to make a direction connection between the test system’s adapter to the remote system’s LAN adapter.

3.  On the remote system, from the Network and Sharing Center, turn on file and printer sharing. (For more information about how to enable file and printer sharing, see <xref hlink="http://go.microsoft.com/fwlink/?LinkID=301387">Enable file and printer sharing</b>.)

4.  On the remote system, open a command prompt window that has administrative privileges. Type <cmd_line>ipconfig /all</cmd_line> and make a note of the IPv6 address that is assigned to the remote system’s LAN adapter.

5.  From the command prompt window on the test system, ping the IPv6 address that you noted in the previous step. Use the **ping –s** option to specify the IPv6 address of the test adapter as the source address.

6.  Provide the noted IPv6 address, without the scope ID (for example, fe80::205:ddff:fe27:3840), as the <mark type="param">WDTFREMOTESYSTEM</b> parameter to Device Fundamentals Reliability tests.

## WLAN adapters

WLAN adapters are among the more difficult devices to configure for Device Fundamentals and System Fundamentals testing. While many different routers may work for testing, we recommend that you follow the setup instructions described in <xref rid="p_hlk_test.wireless_lan__80211__testing_prerequisites">Wireless LAN (802.11) Testing Prerequisites</b>.

See <xref rid="p_hlk_test.troubleshooting_device_fundamentals_reliability_testing_by_using_the_windows_hck">Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK</b> for additional help with testing WLAN devices.

## Storage devices

We strongly recommend that you complete all Device Fundamentals Reliability tests before you start to run storage tests. This means scheduling the tests two times, as follows:

1.  Schedule the tests to run one time, to run all Device Fundamentals Reliability tests.

2.  Schedule the tests to run one time, after Device Fundamentals Reliability tests finish running, to run Storage tests.

Storage tests reconfigure a test device and can leave the device in a state that cannot support Device Fundamentals Reliability tests. If you must run storage tests before you run Device Fundamentals Reliability tests, you must reconfigure the devices according to the preceding general requirements before you run Device Fundamentals Reliability tests.

## Media card readers or multi-function devices that have storage capability

If you are testing a media card reader or a multi-function device that has an external storage capability, you must populate all media slots of the storage device with media, according to the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=302330">Volume I/O plug-in</b> requirements.

Because of Windows HLK and test limitations, you must insert media into all media slots on the test computer also (even if you are not testing media slots on the test computer).

## Microsoft USB Test Tool (MUTT)

The Microsoft USB Test Tool (MUTT) device and the software package gives you a powerful set of tools for testing interoperability of your USB hardware with the Microsoft USB driver stack. See <xref hlink="http://go.microsoft.com/fwlink/?LinkID=324174">Test with Microsoft USB Test Tool (MUTT)</b> for a brief overview of the different types of MUTT devices, the tests you can run by using the device, and suggests topologies for controller, hub, device, and BIOS/UEFI testing.



