---
author: joshbax-msft
title: Combined Radio - GPS and BTH - Radio Interference
description: Combined Radio - GPS and BTH - Radio Interference
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 95049944-07a3-432f-9e5c-8bd6a6f16d1a
---

# Combined Radio - GPS and BTH - Radio Interference


This automated test verifies that systems that support both GPS and Bluetooth radio hardware can operate both radios simultaneously without excessive interference.

This test performs the following operations:

-   Subscribes to GPS data events

-   Performs Bluetooth scanning and pairing

-   Unsubscribes from GPS data events

The GPS data events should continue to be generated while the Bluetooth radio performs scanning and pairing.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Sensor.Discretional</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md) and [Combined Radio Tests Prerequisites](combined-radio-tests-prerequisites.md#crgpsblue).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

## Related topics


[Combined Radio Tests](combined-radio-tests.md)

 

 







