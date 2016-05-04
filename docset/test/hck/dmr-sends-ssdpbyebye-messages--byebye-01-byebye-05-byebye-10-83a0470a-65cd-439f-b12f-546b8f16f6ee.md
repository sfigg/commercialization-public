---
author: joshbax-msft
title: DMR sends ssdpbyebye messages (BYEBYE-01 BYEBYE-05 BYEBYE-10)
description: DMR sends ssdpbyebye messages (BYEBYE-01 BYEBYE-05 BYEBYE-10)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c603ad1e-0361-4acc-86fb-e781920a4893
---

# DMR sends ssdpbyebye messages (BYEBYE-01 BYEBYE-05 BYEBYE-10)


This test verifies that the digital media renderer (DMR) sends ssdp:byebye messages when it turns off the DMR functionality (BYEBYE-01), when it enters low power mode (BYEBYE-05), and in compliance with UPnP and DLNA specifications (BYEBYE-10), as specified below.

**BYEBYE-01** (Applies to A/V DMR and Audio DMR)

A device that implements DMR functionality must send ssdp:byebye messages when the device turns off the DMR functionality. This requirement does not apply to error conditions like accidental disconnections or unexpected malfunctioning. This requirement does not apply to devices designed to be always on and do not include an off button. This requirement applies to all cases when a user gracefully turns off the DMR function.

**BYEBYE-05** (Applies to A/V DMR and Audio DMR)

A DMR device that supports a low power (sleep) mode must send ssdp:byebye messages when the device enters low power mode. For devices that support multiple levels of low power modes, this requirement applies to any modes where the device can no longer accept UPnP actions from controllers in the network.

**BYEBYE-10** Applies to (A/V DMR and Audio DMR)

A DMR device must send ssdp:byebye messages in compliance with UPnP and DLNA specifications. In particular, a DMR device sends one ssdp:bybye message for each corresponding ssdp:alive message.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.SendsSSDPByeByeMessage</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~6 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Experiences</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Digital Media Renderer Testing Prerequisites](digital-media-renderer-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Media Testing](troubleshooting-devicemedia-testing.md).

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
<td><p>WDKData_DeviceUUID</p></td>
<td><p>The Device ID</p></td>
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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0128 /dmrID=[Query WDKData_DeviceUUID]</strong></p></td>
<td><p>Runs the test.</p></td>
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
<td><p>NetMediaLogoTests.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\sharing\netmedialogotests</p></td>
</tr>
</tbody>
</table>

 

 

 






