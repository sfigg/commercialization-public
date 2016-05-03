---
author: joshbax-msft
title: DMR support for AVC video (AVC-01 AVC-05)
description: DMR support for AVC video (AVC-01 AVC-05)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fcc8c5bd-8761-4bc3-919a-4762917aad0d
---

# DMR support for AVC video (AVC-01 AVC-05)


This test verifies that an A/V digital media renderer (DMR) decodes and renders AVC content (AVC-01) and declares support for AVC/H.264 playback (AVC-05) as specified below:

**AVC-01**

An A/V DMR must decode and render AVC content encoded using the following parameters:

Video Codec:

-   H.264/AVC codec

-   Profiles:

    -   Baseline (all levels up to 3.2)

    -   Main (all levels up to 4.2)

    -   High (all levels up to 4.2)

-   Constant and variable bitrate with a maximum average bitrate of 15 Mbps

-   Constant and variable frame rate with a maximum average frame rate of 60 fps

-   All resolutions from 320x240 to 1920x1080, only progressive formats

Audio Codec:

-   AAC codec, Low Complexity (LC) profile

-   1 and 2 channels

-   Constant and variable bitrate with a maximum average bitrate of 320 Kbps

-   Sampling rates: 16 KHz, 44.1 KHz, and 48 KHz

Container:

-   MP4 file format

-   The "moov" box may be located at the end of the file

-   The size of the "moov" box may be up to 10 MB

-   The file does not contain "moof" boxes

**AVC-05**

An A/V DMR must declare support for AVC/H.264 playback using the following protocolInfo value in the SinkProtocolInfo state variable: http-get:\*:video/mp4:\*

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.AV.AVC</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~7 minutes</p></td>
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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0110 /dmrID= [Query WDKData_DeviceUUID]</strong></p></td>
<td><p>Runs this test.</p></td>
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
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\sharing\netmedialogotests\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DMR%20support%20for%20AVC%20video%20%28AVC-01%20AVC-05%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




