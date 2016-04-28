---
author: joshbax-msft
title: USB Host Controller Enable Disable Test
description: USB Host Controller Enable Disable Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7eb6eda7-1590-405a-b22e-5019a424adff
---

# USB Host Controller Enable Disable Test


This automated test disables and re-enables the USB host controller(s) and checks to see whether all of the devices are still attached to the system.

A list of USB devices is compiled at the beginning of the test, as well as a list of all the USB host controllers. The test disables and re-enables the host controllers a total of five times. All of the USB host controllers are disabled and enabled simultaneously. After re-enabling the controllers, the test gathers a list of the current devices attached to the system. This list is compared to the original device list. If at any time the list of current devices does not match the original device list, the missing devices are listed, and the test fails and exits.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.UsbController.PreserveDeviceStateAfterDisableEnable</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Bus Controller Testing Prerequisites](usb-bus-controller-testing-prerequisites.md).

Attach at least one USB peripheral device to the USB host controller under test before scheduling the test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

Review the test results in the log file for specific details about failures. If a device is no longer attached after running the test then the test fails. The test then lists which devices were not found and exits. This may be the result of a faulty device. Re-run the test with another device, of the same device class, to verify the USB host controller functionality.

## More information


The USB Host Controller Enable Disable Test performs the following tasks:

1.  Detect and save the entire device list before running the test.

2.  Cycle disable/enable of the USB host controller.

3.  Re-gather the device list and validate against the initial device list. If any device is missing or in a bad state, fail the test.

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
<td><p><strong>GUID</strong></p></td>
<td><p>String that indicates the device class GUID for the USB controller class.</p>
<p>Value: {36fc9e60-c465-11cf-8056-444553540000}</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20Host%20Controller%20Enable%20Disable%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




