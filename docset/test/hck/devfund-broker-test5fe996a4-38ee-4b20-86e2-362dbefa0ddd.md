---
author: joshbax-msft
title: DevFund Broker Test
description: DevFund Broker Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 351934e6-9f02-47e7-b4bf-f3aa036806bf
---

# DevFund Broker Test


This test verifies all of the device interface paths for a device node against the Device.Fundamentals requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.CDA.Application</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
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


If you select a device node that has any restricted interfaces, a dialog box is displayed. Press **OK** to dismiss the dialog box.

## Troubleshooting


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
<td><p><strong>WDKDeviceID</strong></p></td>
<td><p>The device identifier of the target device node.</p></td>
</tr>
</tbody>
</table>

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>brokerlogotest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\brokerlogotest.dll</p></td>
</tr>
<tr class="even">
<td><p>brokerlogotest.dll.mui</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\en-us\brokerlogotest.dll.mui</p></td>
</tr>
</tbody>
</table>

 

 

 






