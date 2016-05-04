---
author: joshbax-msft
title: Unexpected Sensor Activity Test
description: Unexpected Sensor Activity Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 89959379-89e6-4e79-a208-613955e3d8c5
---

# Unexpected Sensor Activity Test


This manual test monitors for sensor activity in a time window of 5 minutes when no sensor activity is expected. The monitor period kicks off after the user indicates his readiness through a key press, after which the user could try to perform any action that would normally trigger activity from any of the sensor devices. After the monitor period is complete, the user is once again prompted to press a key to complete the test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.ScreenRotation.SmoothRotation System.Client.Sensor.Integrated</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

This manual test monitors for sensor activity in a time window of five minutes when no sensor activity is expected. To run the test:

1.  Press any key to start the monitor period.

2.  Perform any action that typically causes activity from any sensor device.

3.  Press any key after the monitor period to complete the test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

 

 






