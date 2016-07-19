---
author: joshbax-msft
title: Win8.MBN.CDMA.TestSelectiveSuspend
description: Win8.MBN.CDMA.TestSelectiveSuspend
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 16cdddce-e2c1-48b7-9aa6-c824fad21174
---

# Win8.MBN.CDMA.TestSelectiveSuspend


This test evaluates the selective suspend capabilities of a Mobile Broadband device. The test connects to the Internet and puts an IP filter in place to block all outbound traffic. The test then verifies the lack of traffic traversing the interface, which causes the interface to enter a selective suspend state.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.CDMA.SupportUSBSelectiveSuspend</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Network Testing](troubleshooting-devicenetwork-testing.md).

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
<td><p>AccessString</p></td>
<td><p>The access string used when making a connection.</p></td>
</tr>
<tr class="even">
<td><p>UserName</p></td>
<td><p>The user name used when making a connection.</p></td>
</tr>
<tr class="odd">
<td><p>Password</p></td>
<td><p>The password used when making a connection.</p></td>
</tr>
</tbody>
</table>

 

 

 






