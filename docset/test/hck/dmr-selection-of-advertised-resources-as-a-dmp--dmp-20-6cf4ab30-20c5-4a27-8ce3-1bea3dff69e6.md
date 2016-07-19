---
author: joshbax-msft
title: DMR selection of advertised resources as a DMP (DMP-20)
description: DMR selection of advertised resources as a DMP (DMP-20)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0370db3a-3f7e-4366-bf31-b73028fdab35
---

# DMR selection of advertised resources as a DMP (DMP-20)


This test verifies the following conditions are satisfied:

-   A digital media renderer (DMR) includes digital media player (DMP) capabilities.

-   The DMP finds an item with multiple &lt;res&gt; elements.

-   The DMP selects an A/V or an Audio resource in streaming mode, or the DMP selects an Image resource in interactive mode.

-   The DMP connects to a DMS under ideal network conditions.

If the above conditions are met, the DMP selects a &lt;res&gt; element according to the following procedures:

**Audio Class**

-   If the server exposes a non-transcoded resource with a Profile ID that matches one of the Profile IDs advertised by the DMP/DMR device, then the DMP device must select this resource.

-   If the DMP does not support the Profile ID for the non-transcoded resource, the DMP must select a transcoded resource with a supported Profile ID and play this resource.

**A/V Class**

-   If the server exposes a non-transcoded resource with a Profile ID that matches one of the Profile IDs advertised by the DMP/DMR device, then the DMP device must select this resource.

-   If the DMP does not support the Profile ID for the non-transcoded resource, the DMP must select a transcoded resource with a supported Profile ID and play this resource.

**Image Class**

-   The DMP device must select a &lt;res&gt; element for an image with a resolution of 1920x1080 or smaller. There is one exception: a DMP device may select an image resource with a resolution higher than 1920x1080 if the DMP can display the image within 2 seconds.

-   The 2 seconds are measured from the moment the user selects an image to the moment the image is displayed on the screen.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Media.DMR.Base.DMPSelectionOfAdvertisedResources</p>
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
<td><p><strong>NetMediaLogoTests.exe NETMEDIA_0120 /dmrID=[Query WDKData_DeviceUUID]</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

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

 

 

 






