---
author: joshbax-msft
title: USB Serial Number
description: USB Serial Number
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 40d0ce24-ad9f-4819-aa44-056177a180dc
---

# USB Serial Number


This test verifies that the serial number on the device under test is unique. Some device classes must implement USB serial number (see [More information](#bkmk-moreinfoserialtest) for a list of device classes).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbDevices.Addressing Device.Connectivity.UsbDevices.AlternateDriver Device.Connectivity.UsbDevices.InternalDevicesMustSupportSuspend Device.Connectivity.UsbDevices.MsOsContainerId Device.Connectivity.UsbDevices.MustEnumerateOnEhciAndXhci Device.Connectivity.UsbDevices.MustSupportSuspendOnRT Device.Connectivity.UsbDevices.SerialNumbers Device.Connectivity.UsbDevices.SerialNumbersUseValidCharacters</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

In addition, this test requires:

-   One test device if the serial-number feature is not supported

-   Two identical test devices with the same product ID (PID) and vendor ID (VID) numbers if the serial-number feature is supported

Before you run the test, you must attach the test device to the USB hub that is attached to the test computer.

**Important**  
If the test device goes into selective suspend quickly, you may need to disable the power management option for the USB hub in Device Manager.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

If the serial number isn't required and is not implemented, this test automatically passes. To review test details, review the test log from Windows HCK Studio.

Note the following information about this test:

-   This test runs only if the test device supports a unique serial number.

-   The test validates the uniqueness of the serial number.

## <a href="" id="bkmk-moreinfoserialtest"></a>More information


The following device classes must implement USB serial numbers:

-   Bluetooth (Class Code 0xE0, SubClass 0x01, Protocol 0x01)

-   Communication (Class Code 0x02)

-   Mass storage (Class Code 0x08)

-   Scanning/imaging (Class Code 0x06)

-   Printing (Class Code 0x07)

-   Host wire adapters and device wire adapters (Class Code 0xE0, SubClass 0x02)

USB serial numbers are optional for all other device classes. However, if you implement the serial-number feature, all devices of the same model must have unique serial numbers.

If you implement the serial-number feature, the test setup requires two identical devices that have different serial numbers in order to pass the test.

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>IsEmbeddedUSBDevice</strong></p></td>
<td><p>String that indicates whether the device is an internal device.</p>
<p>TRUE: The device is an internal device</p>
<p>FALSE: The device is an external device. This is the default value.</p></td>
</tr>
</tbody>
</table>

 

 

 






