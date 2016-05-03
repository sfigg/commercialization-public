---
author: joshbax-msft
title: USB Exposed Port Controller Test
description: USB Exposed Port Controller Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 127abb2f-83af-4e1d-8e2e-c9ff7cbad947
---

# USB Exposed Port Controller Test


This manual test validates that USB exposed connectors support SuperSpeed, High, Full and Low Speed USB devices routed through its xHCI controller. The test also validates the port mapping of the high speed and SuperSpeed ports in each connector.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.UsbController.SuperSpeedConnectorsSupportHighFullLow Device.BusController.UsbController.TestedUsingMicrosoftUsbStack Device.BusController.UsbController.XhciAddInCardsMapPortsConsistently Device.BusController.UsbController.XhciAddInCardsReportInternalDevices Device.BusController.UsbController.XhciVersionCompliant</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [USB Bus Controller Testing Prerequisites](usb-bus-controller-testing-prerequisites.md).

A USB 3.0 Hub must be attached to each exposed connector of the xHCI controller. In addition to the USB 3.0 Hub, a low speed and full speed device must be attached to each exposed connector of the xHCI controller.

This is a manual test: the devices must be moved between each exposed connector of the USB host controller under test. Please allow several seconds for the device to fully enumerate on each connector before removing the device. The devices may be connected in any sequence as long as each device (low speed, full speed, and USB 3.0 hub) is plugged into each exposed connector at least once. You may use the device tree in the test UI to validate the device enumeration in for each device and connector. Once you have completed each step on each connector the test will automatically close.

-   We recommend using USB-IF certified hubs and low, full speed devices. For example, the Texas Instruments SuperSpeed USB 3.0 Hub reference design board (TUSB8040EVM) which can be used to evaluate system compatibility ([http://go.microsoft.com/fwlink/p/?linkid=248509](http://go.microsoft.com/fwlink/p/?LinkID=248509)).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

If you have attached each required device to each exposed connector and the test has not automatically closed, you must manual exit the test UI and examine the test logs in the WHCK studio. The logs will detail which devices were correctly enumerated and which devices were not. If a device failed to enumerate on the USB host controller under test, it will require further investigation. Re-run the test and explore the device tree in the UI to validate the failing test case. Manually check device responsiveness and functionality on the failing port as well.

If the USB 3.0 hub (port mapping) step of the test is failing it may be due to an improperly implemented hub. The container ID's of the high speed and SuperSpeed portion of the test hub must match in order for the test to validate host controller port mapping. Please see the hardware requirements section of the USB Host Controller Prerequisites for more information on a suitable USB 3.0 hub.

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
<td><p><strong>TestMode</strong></p></td>
<td><p>String that indicates whether the test runs in manual or automated mode.</p>
<p>Modern: Uses WDTF to check USB port connections. The test runs automatically. Default value.</p>
<p>Legacy: Uses USB Device Viewer to show check USB port connections. The test runs in manual mode.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20Exposed%20Port%20Controller%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




