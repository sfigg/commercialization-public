---
author: joshbax-msft
title: DMR playback functionality as a DMP (DMP-01 DMP-05 DMP-10)
description: DMR playback functionality as a DMP (DMP-01 DMP-05 DMP-10)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 57eeb3d7-a71e-423e-8f1d-42a56556419e
---

# DMR playback functionality as a DMP (DMP-01 DMP-05 DMP-10)


This test verifies that if a digital media renderer (DMR) includes digital media player (DMP) capabilities: the DMP can play all content types it can play as a DMR (DMP-01), the DMP and DMR work jointly as a single unit (DMP-05), and the DMP is capable of navigating a Reference Windows DMS (DMP-10), as specified below.

**DMP-01** (Applies to A/V DMR and Audio DMR)

If a DMR device also implements a DMP, the DMP must play all content types that can be played as a DMR. Similarly, the DMR must play all content types that can be played as a DMP. The different types of content are defined using a Profile ID, a MIME type, or both.

**DMP-05** (Applies to A/V DMR and Audio DMR)

If a DMR device also implements a Digital Media Player (DMP), the DMP and the DMR should work jointly as a single combined unit in the network:

-   If the DMP plays content, the DMR state variables should change accordingly to reflect the playback conditions.

-   If the DMP stops or pauses playback, the DMR state variables should change accordingly to advertise the changes.

The DMR state variables advertise conditions such as current status, current state, current position, or current transport actions.

**DMP-10** (Applies to A/V DMR and Audio DMR)

If a DMR device also implements a Digital Media Player (DMP), the DMP must be capable to navigate a Reference Windows DMS in compliance with the following performance procedure and requirement:

**Note**  
Under ideal network conditions, the time to complete tasks 2 and 3 must not exceed 10 seconds.

 

-   Using the DMP controls find the UI from where users start navigating the content in a DMS

-   Using the DMP controls navigate the UI menus to find the 30th music item

-   Using the DMP controls play the 30th music item

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.DMPPlayback</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0112 /dmrID=[Query WDKData_DeviceUUID]</strong></p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DMR%20playback%20functionality%20as%20a%20DMP%20%28DMP-01%20DMP-05%20DMP-10%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




