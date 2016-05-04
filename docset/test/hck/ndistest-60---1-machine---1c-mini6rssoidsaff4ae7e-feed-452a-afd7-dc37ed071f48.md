---
author: joshbax-msft
title: NDISTest 6.0 - 1 Machine - 1c\_Mini6RSSOids
description: NDISTest 6.0 - 1 Machine - 1c\_Mini6RSSOids
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7c7aa3b8-df08-440d-ac95-c59a4fc44d82
---

# NDISTest 6.0 - 1 Machine - 1c\_Mini6RSSOids


This test exercises the various receive side scaling OIDs. The miniport driver should:

-   Return a valid CAPABILITIES structure which includes support for NdisHashFunctionToeplitz.

-   Accept all the PARAMETER sets if the hash information is valid and supported.

-   Reject the PARAMETER sets if the hash information is not supported or invalid or if the hash table or the structure itself is not of the correct size.

-   In case the miniport rejects a PARAMETER set, it should retain the previously set PARAMETERs structure.

-   Miniport should handle 64 bit misaligned requests correctly.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.RSS.RSS Device.Network.LAN.RSS.SetHashFunctionTypeAndValue Device.Network.LAN.RSS.SupportIndirectionTablesSizes Device.Network.LAN.RSS.SupportToeplitzHashFunction Device.Network.LAN.RSS.SupportUpdatesToRSSInfo</p>
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
<td><p><strong>[WTTRunWorkingDir]\ndistest\bin\ndtest.exe /auto /client /dvi /u /target:Miniport /tc:[queryTestDeviceID] /script:{1c_Mini6RSSOids.wsf}</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

 

 






