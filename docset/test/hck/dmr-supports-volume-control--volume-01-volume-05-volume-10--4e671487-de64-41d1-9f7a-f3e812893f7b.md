---
author: joshbax-msft
title: DMR supports volume control (VOLUME-01 VOLUME-05 VOLUME-10)
description: DMR supports volume control (VOLUME-01 VOLUME-05 VOLUME-10)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b00abe83-2bcd-456f-b6da-aff2c8a76afd
---

# DMR supports volume control (VOLUME-01 VOLUME-05 VOLUME-10)


This test verifies the digital media renderer (DMR) supports volume control requests via the SetVolume() action (VOLUME-01), is capable of adjusting volume while in the NO\_MEDIA\_PRESENT, STOPPED, PLAYING, PAUSED\_PLAYBACK states (VOLUME-05), and advertises the Volume state variable, the SetVolume() action, and the GetVolume() action in the Service Description Document (VOLUME-10), as specified below.

**VOLUME-01** (Applies to A/V DMR and audio DMR)

A DMR device must support volume control requests from a digital media controller (DMC) and adjust the volume output accordingly. A DMC requests volume adjustments using the SetVolume() action with a level between 0 (silence) and 100 (loudest). A DMR does not need to support volume control for channels other than the master channel.

**VOLUME-05** (Applies to A/V DMR and audio DMR)

A DMR that receives a SetVolume() action must adjust the volume to the requested level while the DMR is in the following states: NO\_MEDIA\_PRESENT, STOPPED, PLAYING, PAUSED\_PLAYBACK.

**VOLUME-10** (Applies to A/V DMR and audio DMR)

A DMR must declare the implementation of the volume state variable, the SetVolume() action, and the GetVolume() action in the Service Description Document. In particular, the allowed range value for the state variable must indicate a minimum of 0 and a maximum of 100.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.VolumeControl</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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
<tr class="even">
<td><p>WDKData_Audio</p></td>
<td><p></p></td>
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
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0072 /dmrID=[Query WDKData_DeviceUUID] /audio=[WDKData_Audio]</strong></p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DMR%20supports%20volume%20control%20%28VOLUME-01%20VOLUME-05%20VOLUME-10%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




