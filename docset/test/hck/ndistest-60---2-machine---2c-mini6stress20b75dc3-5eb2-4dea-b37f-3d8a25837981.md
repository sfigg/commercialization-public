---
author: joshbax-msft
title: NDISTest 6.0 - 2 Machine - 2c\_Mini6Stress
description: NDISTest 6.0 - 2 Machine - 2c\_Mini6Stress
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4368b720-f587-463b-b75f-5e532464988d
---

# NDISTest 6.0 - 2 Machine - 2c\_Mini6Stress


This test validates the stress send and receive code paths of the NDIS 6.0 miniport drivers.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.Base.AnyBoundary Device.Network.LAN.Base.NDISRequirements</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~8 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
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
<tr class="even">
<td><p>SupportDeviceGuid0</p></td>
<td><p>The support device GUID.</p></td>
</tr>
<tr class="odd">
<td><p>ClientMessageDeviceGuid</p></td>
<td><p>The client message device GUID.</p></td>
</tr>
<tr class="even">
<td><p>ServerMessageDeviceGuid</p></td>
<td><p>The server message device GUID.</p></td>
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
<td><p><strong>[WTTRunWorkingDir]\ndistest\bin\ndtest.exe /logo /auto /server /support:[SupportDeviceGuid0] /msg:[ServerMessageDeviceGuid]</strong></p></td>
<td><p>Runs the NDIS test server.</p></td>
</tr>
<tr class="even">
<td><p><strong>[WTTRunWorkingDir]\ndistest\bin\ndtest.exe /auto /client /dvi /u /target:Miniport /tc:[queryTestDeviceID] /support:[SupportDeviceGuid0] /msg:[ClientMessageDeviceGuid] /script:{2c_Mini6Stress.wsf}</strong></p></td>
<td><p>Runs the NDIS test client.</p></td>
</tr>
</tbody>
</table>

 

 

 






