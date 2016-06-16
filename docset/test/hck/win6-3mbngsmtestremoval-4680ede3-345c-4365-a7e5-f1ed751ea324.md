---
author: joshbax-msft
title: Win6\_3.MBN.GSM.TestRemoval
description: Win6\_3.MBN.GSM.TestRemoval
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0c9727ed-6105-43dd-ab22-0590bec641bc
---

# Win6\_3.MBN.GSM.TestRemoval


This test validates a device removal while it is in various states.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.GSM.ComplyWithBaseReq</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md).

When the test initializes, it will verify if the device is removable. If the device is not removable, no further action is needed. If the device is removable, the test will put the device into three states and prompt the user to "Please remove device" and "Please insert the device". The three states the test executes under is when the device is registered, packet attached, and when connected.

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
<tr class="even">
<td><p>WebDoc8K</p></td>
<td><p>The 8 KB web document to download.</p></td>
</tr>
</tbody>
</table>

 

 

 






