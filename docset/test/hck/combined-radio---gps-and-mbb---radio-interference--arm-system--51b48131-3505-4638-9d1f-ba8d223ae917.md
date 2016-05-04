---
author: joshbax-msft
title: Combined Radio - GPS and MBB - Radio Interference (ARM System)
description: Combined Radio - GPS and MBB - Radio Interference (ARM System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1d990033-7375-41ce-af47-743ecbac9ab6
---

# Combined Radio - GPS and MBB - Radio Interference (ARM System)


This automated test verifies that systems that support both GPS and Mobile Broadband radio hardware can operate both radios simultaneously without excessive interference.

This test performs the following operations:

-   Establishes a baseline to establish download speeds for the Mobile Broadband radio.

-   Subscribes to GPS data events.

-   Attempts to scan on the Mobile Broadband radio.

-   Attempts to download by using the Mobile Broadband radio.

-   Unsubscribes to GPS data events.

The GPS data events should continue to be generated while the Mobile Broadband radio is scanning and downloading. The Mobile Broadband radio must be able to download while the GPS radio generates data events.

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
<td><p>~15 minutes</p></td>
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

The test requires Mobile Broadband and GPS signals. The Mobile Broadband radio requires an active SIM.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

## Command syntax


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
<td><p><strong>MBBAccessString</strong></p></td>
<td><p>Specifies the access string to use when making a Mobile Broadband connection.</p>
<p>Default value: UseProvisionedInfo</p></td>
</tr>
<tr class="even">
<td><p><strong>MBBUserName</strong></p></td>
<td><p>Specifies the user name to use when making a Mobile Broadband connection.</p>
<p>Default value: UseProvisionedInfo</p></td>
</tr>
<tr class="odd">
<td><p><strong>MBBPassword</strong></p></td>
<td><p>Specifies the password to use when making a Mobile Broadband connection.</p>
<p>Default value: UseProvisionedInfo</p></td>
</tr>
<tr class="even">
<td><p><strong>WebDoc1024K</strong></p></td>
<td><p>Specifies a 1024K document to download from the Internet.</p>
<p>Default value: http://www.microsoft.com/windows/using/tools/igd/StaticContent/igdprobedocs/ws/test20.txt</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Combined Radio Tests](combined-radio-tests.md)

 

 







