---
author: joshbax-msft
title: Combined Radio - GPS and NFC - Radio Interference (ARM System)
description: Combined Radio - GPS and NFC - Radio Interference (ARM System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6464f018-9281-4db2-bcff-c553c3d4d082
---

# Combined Radio - GPS and NFC - Radio Interference (ARM System)


This automated test verifies that systems that support both GPS and NFC radio hardware can operate both radios simultaneously without excessive interference.

This test performs the following operations:

-   Subscribes to GPS data events.

-   Performs NFC tapping.

-   Unsubscribes from GPS data events.

The GPS data events should continue to be generated while the NFC radio operates.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Sensor.GNSSRFSensitivity</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

The test requires a GPS signal and an NFC device.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

## Related topics


[Combined Radio Tests](combined-radio-tests.md)

 

 







