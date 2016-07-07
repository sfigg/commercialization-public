---
author: joshbax-msft
title: USB xHCI Runtime Power Management Test
description: USB xHCI Runtime Power Management Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 492f130b-6d13-44da-a0e3-77322bad74e3
---

# USB xHCI Runtime Power Management Test


This manual test validates that the USB host controller supports runtime power management correctly, if implemented.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.UsbController.XhciSupportsRuntimePowerManagement</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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

You can try running this test with devices attached to the root hub ports; however, if the device doesn’t support selective suspend, the device can prevent the root hub from going into the low power management state necessary to pass this test.

We recommend running this test with all external devices detached from the root hub ports, as this allows the root hub to go into low power state. The test can then prompt you to reconnect the device in order to wake the root hub and continue testing.

**Note**  
The docking station (if it replicates or extends USB ports) is considered an external device and should be removed when the test prompts to remove external devices. You can then replace it when prompted.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

 

 






