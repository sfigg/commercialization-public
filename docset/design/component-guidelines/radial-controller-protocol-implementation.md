---
title: Windows radial controller protocol implementation
author: windows-driver-content
description: This document provides guidelines for radial controller protocol implementation. Windows radial controller devices are expected to use the Human Interface Device (HID) protocol to communicate with the host.
ms.assetid:
keywords: ["radial dial", "radial controller", "dial"]
redirect_url: https://msdn.microsoft.com/windows/hardware/commercialize/design
---

# Radial controller protocol implementation

Windows radial controller devices are expected to use the Human Interface Device (HID) protocol to communicate with the host.

A good understanding of the HID protocol is needed to be able to understand the information presented here. See the following resources for information about the HID protocol:
* [Device Class Definition for Human Interface Devices (HID)](http://www.usb.org/developers/hidpage#Class_Definitions)
* [HID Usage Tables](http://www.usb.org/developers/hidpage#HID_Usage)
* [HID Over I2C Protocol Specification](https://msdn.microsoft.com/library/windows/hardware/dn642101.aspx)

Windows includes a HID class driver and corresponding HID I²C, HID USB and HID Bluetooth-enabled miniport drivers; therefore, there is no need for any third-party mini-port drivers for Windows radial controllers unless it utilizes a bus where an inbox HID mini-port driver is not available.

A device only needs to report the usages described in this topic in the firmware for a Windows radial controller device. Windows will use the firmware and its own HID drivers to enable the device and give Windows applications access to the device.

A sample descriptor is provided in the [Sample Report Descriptors](radial-controller-sample-report-descriptors.md) section.

# In this section

Topic | Description
--- | ---
[required HID Top-Level Collections](radial-controller-required-hid-top-level-collections.md) | This topic discusses the required HID top-level collections that are used for radial controller reporting in Windows 10 Anniversary Update and later operating systems.
[Radial Controller Output Reports](radial-controller-output-reports.md) | TBD
[Radial Controller Feature Reports](radial-controller-feature-reports.md) | TBD
[Firmware Update Collection](radial-controller-firmware-update-collection.md) | TBD
[Sample Report Descriptors](radial-controller-sample-report-descriptors.md) | This topic presents a sample report descriptor and some sample descriptor excerpts for a Windows radial controller device.
