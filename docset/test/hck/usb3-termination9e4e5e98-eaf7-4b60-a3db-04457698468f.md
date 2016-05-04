---
author: joshbax-msft
title: USB3 Termination
description: USB3 Termination
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cbbf04c5-c939-4793-a864-29e7ec31b25a
---

# USB3 Termination


This test verifies that once the USB 3.0 bus is powered, SuperSpeed termination remains on unless the operating system explicitly removes it. A SuperSpeed capable device should always enumerate on the SuperSpeed bus and remain enumerated at SuperSpeed.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.SystemUSB.SuperSpeedTerminationRemainsOn System.Fundamentals.SystemUSB.XHCIToEHCIControllerTransitions System.Fundamentals.USBDevice.SelectiveSuspend</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~7 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

For this test, you must perform some manual steps and connect a USB3 device to the USB3 port on the system. We recommend using a SuperMUTT (SuperSpeed Microsoft USB Test Tool) device for this test. Please refer to the instructions in the HCK Studio for additional test instructions.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. For information about how to review test details, see the [Step 7: View test results and log files](step-7-view-test-results-and-log-files.md) topic.

 

 






