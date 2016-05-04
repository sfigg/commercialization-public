---
author: joshbax-msft
title: Web Services for Devices (WSD)
description: Web Services for Devices (WSD)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 660ce126-8d80-4191-9083-8a00ddfd735c
---

# Web Services for Devices (WSD)


This test verifies the device supports Web Services for Device (WSD)/Device Profile for Web Services (DPWS). The test verifies that a PC or other device can detect DPWS-enabled devices on a network, then discover and invoke the Web service functionality each device provides. DPWS is part of the Windows Rally technology set.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.WSD.DPWS Device.Connectivity.WSD.DPWSExtensibility Device.Connectivity.WSD.MetadataExchange Device.Connectivity.WSD.MetadataValid Device.Connectivity.WSD.Schema Device.Connectivity.WSD.WSDiscovery</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

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
<td><p>DPWS_UUID</p></td>
<td><p>The ID of the device being tested.</p></td>
</tr>
</tbody>
</table>

 

 

 






