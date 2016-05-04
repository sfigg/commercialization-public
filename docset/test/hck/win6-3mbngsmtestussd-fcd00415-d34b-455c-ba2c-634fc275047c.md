---
author: joshbax-msft
title: Win6\_3.MBN.GSM.TestUssd
description: Win6\_3.MBN.GSM.TestUssd
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 05f98523-abef-400b-bb16-93ab282e87e1
---

# Win6\_3.MBN.GSM.TestUssd


The test will attempt a USSD set operation and verify the USSD status indication.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.GSM.USSD</p>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md).

The test requires a Mobile Broadband Device.

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
<td><p>UssdStringCodingScheme</p></td>
<td><p>Specifies the USSD data coding scheme in hexadecimal.</p>
<p>Default value: 0F</p></td>
</tr>
<tr class="even">
<td><p>UssdStringChar</p></td>
<td><p>Specifies the USSD string to encode.</p>
<p>Default value: *225#</p></td>
</tr>
<tr class="odd">
<td><p>IssdStringByte</p></td>
<td><p>Specifies the USSD byte string to send.</p>
<p>Default value: 2A99AC3602</p></td>
</tr>
</tbody>
</table>

 

 

 






