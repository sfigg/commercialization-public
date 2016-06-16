---
author: joshbax-msft
title: NDISTest 6.0 - 1 Machine -1c\_64BitOIDs
description: NDISTest 6.0 - 1 Machine -1c\_64BitOIDs
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b977fbd8-776c-41a8-b02e-eabeead757fd
---

# NDISTest 6.0 - 1 Machine -1c\_64BitOIDs


This test checks OID\_GEN\_XMIT\_OK and OID\_GEN\_RCV\_OK. It does not attempt to verify the values themselves. It only checks that the queries are properly handled. If the driver does not support 64 bit queries, it is warned unless it a Gigabit network adapter. Gigabit network adapters are required to support 64 bit queries.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.Base.NDISRequirements</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

## More information


The OIDs are queried three times using:

-   Information Buffer Length = 0 bytes

    Expected Response:

    BytesNeeded = 8

    BytesWritten = 0 (Write No data in buffer)

    NdisStatus = INVALID\_LENGTH Or BUFFER\_TOO\_SHORT

-   Information Buffer Length = 4 bytes

    Expected Response:

    Lower 32 bits of statistics

    BytesWritten = 4

    BytesNeeded = 8

    NdisStatus = SUCCESS

-   Information Buffer Length = 8 bytes

    Expected Response:

    64 bit statistics value

    BytesWritten = 8

    NdisStatus = SUCCESS

### Parameters

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
<td><p>queryTestDeviceID</p></td>
<td><p>The ID of the test device.</p>
<p>Example: //Devnode/DeviceID</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>[WTTRunWorkingDir]\ndistest\bin\ndtest.exe /auto /client /dvi /u /target:Miniport /tc:[queryTestDeviceID] /script:{1c_64BitOIDs.wsf}</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

 

 






