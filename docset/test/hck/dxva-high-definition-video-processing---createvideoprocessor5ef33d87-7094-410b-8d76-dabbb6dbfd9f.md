---
author: joshbax-msft
title: DXVA High Definition Video Processing - CreateVideoProcessor
description: DXVA High Definition Video Processing - CreateVideoProcessor
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0223d9e7-552e-49dc-838b-73333d20dddc
---

# DXVA High Definition Video Processing - CreateVideoProcessor


This manual test runs test cases across the following: IDXVAHD\_Device::GetVideoProcessorCaps, IDXVAHD\_Device::GetVideoProcessorCustomRates, IDXVAHD\_Device::GetVideoProcessorFilterRange, IDXVAHD\_Device::CreateVideoProcessor.

This test will, for the most part, show a ticker-like window incrementing pass fail counts and showing which test case variables are being iterated upon. The test might return SKIP if the driver does not expose D3DCAPS3\_DXVAHD. In some cases, it might skip if another device is not available to query other VP GUIDs from.

For both valid and invalid calls to the API entry points, verify that the proper return values match up to those exposed by the capabilities. Also confirm the ability to create a video processor successfully. If the VP GUID is invalid, the test should return a FAIL.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM11.Render.DXVAHD.DXVAHD</p>
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


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

In addition, this test requires the following software:

-   A display driver that supports D3D9Caps.Caps3 D3DCAPS3\_DXVAHD. Specifically:

    -   D3D9 support exposing D3DCAPS3\_DXVAHD.

    -   Required output formats: D3DFMT\_X8R8G8B8, D3DFMT\_A8R8G8B8.

    -   Required input formats: D3DFMT\_X8R8G8B8, D3DFMT\_A8R8G8B8, D3DFMT\_YUY2, D3DFMT\_AYUV and any decode render targets supported.

-   dxvahdsw.dll.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


This test verifies the following requirements:

-   IDXVAHD\_Device::GetVideoProcessorCaps

    -   Use a valid number of video processors from DXVAHD\_VPDEVCAPS.VideoProcessorCount.

    -   Use both a number less than the video processors count and a number greater than video processors Count verify result is E\_INVALIDARG.

    -   Validate pCaps is empty on failure.

    -   Verify VPGUID for given device works successfully with GetVideoProcessorCustomRates.

    -   Verify CustomRateCount corresponds and works properly with GetVideoProcessorCustomRates.

    -   Verify that PastFrames and FutureFrames (Counts) work accordingly with DXVAHD\_STREAM\_DATA expected counts.

-   IDXVAHD\_Device::GetVideoProcessorCustomRates

    -   With the valid video processor GUID for this device, then a valid GUID from another DXVAHD Device if another device can be found with a different GUID.

    -   With an invalid zeroed out GUID.

    -   Verify pRates is successfully filled when valid pVPGUID and Count are used.

    -   Use both a number less than the DXVAHD\_VPCAPS.CustomRateCount and a number greater than DXVAHD\_VPCAPS.CustomRateCount. Both should result in E\_INVALIDARG.

    -   Validate pRates is empty on failure.

-   IDXVAHD\_Device::GetVideoProcessorFilterRange

    -   Iterate over all filters, validating for any failures that pRange is NULL.

    -   Out of range filter value and validate E\_INVALIDARG.

    -   Verify Empty pRange on failure.

    -   Verify maximum value is greater than minimum.

    -   Verify the default value is within minimum and maximum values.

-   IDXVAHD\_Device::CreateVideoProcessor

    -   With the valid video processor GUID for this device, then a valid GUID from another DXVAHD Device if another device can be found with a different GUID.

    -   With an invalid zeroed out GUID.

    -   Verify ppVideoProcessor is NULL upon any failures.

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
<td><p>DXVAHDVideoProcessing CreateVideoProcessor</p></td>
<td><p>Without any options, the test enumerates all but some extreme invalid argument test cases.</p></td>
</tr>
<tr class="even">
<td><p>TestPriority:[0, 1, 2]</p></td>
<td><p>By default, tests at a priority 1 level; however, priority 2 will test every permutation, including extreme invalid arg test cases. 0 is for BVT level.</p></td>
</tr>
<tr class="odd">
<td><p>SoftwareOnly</p></td>
<td><p>Tests only the software implementation of the video processor. This was mainly used for initial testing before drivers supported the test cases.</p></td>
</tr>
<tr class="even">
<td><p>SaveAllFrames</p></td>
<td><p>The test has hard coded save count of invalid frames set to 100. I you want all of them saved, then use this flag. Good for high frame count test case failures.</p></td>
</tr>
<tr class="odd">
<td><p>LogLevel:[0, 1, 2]</p></td>
<td><p>The test has the ability to be very verbose in its logging methods. By default level 0 is set, however; level one will gather increased logging info per test cases, including many stream states/blt states set. Level 2 will gather all adjusted stream states and blt states, as well as any configuration information.</p></td>
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
<td><p>DXVAHDVideoProcessing.exe</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\func\</p></td>
</tr>
<tr class="even">
<td><p>Dxvahdsw.dll</p></td>
<td><p>[osbinroot]\nttest\windowstest\graphics\dxva\</p></td>
</tr>
</tbody>
</table>

 

 

 






