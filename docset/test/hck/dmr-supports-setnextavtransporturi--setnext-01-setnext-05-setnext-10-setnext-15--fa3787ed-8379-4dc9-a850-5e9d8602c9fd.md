---
author: joshbax-msft
title: DMR supports SetNextAVTransportURI (SETNEXT-01 SETNEXT-05 SETNEXT-10 SETNEXT-15)
description: DMR supports SetNextAVTransportURI (SETNEXT-01 SETNEXT-05 SETNEXT-10 SETNEXT-15)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0a6777eb-2a51-4465-82bf-ab08a4be09b9
---

# DMR supports SetNextAVTransportURI (SETNEXT-01 SETNEXT-05 SETNEXT-10 SETNEXT-15)


This test verifies that a digital media renderer (DMR) implements the SetNextAVTransportURI() action (SETNEXT-01), sequentially plays the resource described in the NextAVTransportURI state variable (SETNEXT-05), plays the resource described in the NextAVTransportURI variable when it receives a Next() action (SETNEXT-10), and does not play the next resource when it receives a Stop() command (SETNEXT-15), as specified below.

**SETNEXT-01** (Applies to A/V DMR and audio DMR)

A DMR device must implement the SetNextAVTransportURI() action and its related state variables NextAVTransportURI and NextAVTransportURIMetaData.

**SETNEXT-05** (Applies to A/V DMR and audio DMR)

-   If the DMR is playing an audio resource, as soon as the resource finishes playing, the DMR must play the resource described in the NextAVTransportURI state variable.

-   If the DMR is playing an AV resource, as soon as the resource finishes playing, the DMR must play the resource described in the NextAVTransportURI state variable.

-   If the DMR is playing an image resource, as soon as the DMR receives a Next() action, the DMR must play the resource described in the NextAVTransportURI state variable.

**SETNEXT-10** (Applies to A/V DMR and audio DMR)

-   If the DMR is playing an audio, A/V, or image resource and if the DMR receives a Next() action, the DMR must play the resource defined in the NextAVTransportURI state variable (if available).

-   If the DMR receives a Next() action but the NextAVTransportURI state variable is empty, then the DMR must respond with error 711 (Invalid Action).

-   This requirement does not apply if the DMR is playing a resource from media collections (DIDL\_S, DIDL\_V, or any other playlist file format) or PlayContainer operations. In the case of media collections or PlayContainer requests, DLNA defines the proper use of Next() and Previous() actions. These actions are used to traverse back and forth items in the collection or container. The current version of Windows does not support media collections or PlayContainer operations.

**SETNEXT-15** (Applies to A/V DMR and audio DMR)

If the DMR is playing an audio, A/V, or image resource and if the DMR receives a Stop() action, the DMR must stop playing the current resource. If the NextAVTransportURI state variable is non-empty, the DMR must not play the next resource.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.SetNextAVTransportURI</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~4 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
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
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0126 /dmrID=[Query WDKData_DeviceUUID]</strong></p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DMR%20supports%20SetNextAVTransportURI%20%28SETNEXT-01%20SETNEXT-05%20SETNEXT-10%20SETNEXT-15%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




