---
author: joshbax-msft
title: DXVA High Definition Video Processing - CreateDevice
description: DXVA High Definition Video Processing - CreateDevice
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: df94c947-8b20-4217-bb34-390c08389324
---

# DXVA High Definition Video Processing - CreateDevice


This manual test performs multiple test cases targeting IDXVAHD\_CreateDevice. It uses several different IDirect3D9DeviceEx interface devices.

The permutations consist of multiple different content descriptions, including (but not limited to) different sizes of content, different frame rates, and different frame formats.

Test performs a few mode changes, but generally just shows incrementing pass or fail counts. It also displays which test case variables are being iterated upon.

The test might return SKIP if the driver does not expose D3DCAPS3\_DXVAHD. In some cases it might fail if back buffer format or mode is not supported during D3D device creation.

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

-   A display driver that supports D3D9Caps.Caps3 D3DCAPS3\_DXVAHD, specifically:

    -   D3D9 support exposing D3DCAPS3\_DXVAHD

    -   Required Output Formats: D3DFMT\_X8R8G8B8, D3DFMT\_A8R8G8B8

    -   Required Input Formats: D3DFMT\_X8R8G8B8, D3DFMT\_A8R8G8B8, D3DFMT\_YUY2, D3DFMT\_AYUV and Any Decode Render targets supported.

-   dxvahdsw.dll.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


DXVAHD\_CONTENT\_DESC Tested output rates and input rate permutations additional output rates may be added depending on the output device attached.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Tested output rates</th>
<th>Input rates</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>120Hz</p></td>
<td><p>60p 60i 30p 24p</p></td>
</tr>
<tr class="even">
<td><p>75Hz</p></td>
<td><p>60p 60i 30p 24p</p></td>
</tr>
<tr class="odd">
<td><p>60Hz</p></td>
<td><p>60p 60i 30p 24p</p></td>
</tr>
<tr class="even">
<td><p>59Hz</p></td>
<td><p>60p 60i 30p 24p</p></td>
</tr>
<tr class="odd">
<td><p>50Hz</p></td>
<td><p>60p 60i 30p 24p</p></td>
</tr>
<tr class="even">
<td><p>30Hz</p></td>
<td><p>60p 60i 30p 24p</p></td>
</tr>
<tr class="odd">
<td><p>29Hz</p></td>
<td><p>60p 60i 30p 24p</p></td>
</tr>
<tr class="even">
<td><p>25Hz</p></td>
<td><p>60p 60i 30p 24p</p></td>
</tr>
</tbody>
</table>

 

Verify all permutations of output and input rates. Keep a table of capabilities exposed per rate configuration. Only execute across other test cases on rates that caused the device to expose different capabilities.

Verify correct scaling between input and output frame descriptions. Invalid frame rate rational should default to 0/1, and 0/\* should result in 0 rate.

-   InputFrameRate with valid numerator/denominator values

-   InputFrameRate with invalid numerator/denominator values

-   Valid InputFrameRate with matching OutputFrameRate

-   Valid InputFrameRate with different valid OutputFrameRate

-   Valid InputFrameRate with different invalid OutputFrameRate

-   Zeroed out FrameRate values both Input and Output

-   Use a FrameFormat of Interlaced value, and then use progressive content

-   Use a FrameFormat of Progressive value, and then use interlaced content

``` syntax
typedef enum _DXVAHD_DEVICE_USAGE{DXVAHD_DEVICE_USAGE_PLAYBACK_NORMAL = 0,DXVAHD_DEVICE_USAGE_OPTIMAL_SPEED = 1,DXVAHD_DEVICE_USAGE_OPTIMAL_QUALITY = 2} DXVAHD_DEVICE_USAGE;DXVAHD_DEVICE_USAGE
```

-   Verify output is of higher quality frame DXVAHD\_DEVICE\_USAGE\_OPTIMAL\_QUALITY than that of the normal playback usage.

-   Verify optimal performance processes frames more quickly DXVAHD\_DEVICE\_USAGE\_OPTIMAL\_SPEED than that of the normal playback usage.

-   Top two cases should prove NORMAL playback is more typical than that of the other two instances.

Verify successful handle to SW Plugin when valid pPlugin is passed and SW VP is available.

Validate on failure that ppDevice is NULL.

Attempt to create multiple devices from separate threads, both with the D3DCREATE\_MULTITHREADED D3D9Ex Device and without.

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
<td><p><strong>DXVAHDVideoProcessing CreateDevice</strong></p></td>
<td><p>Without any options, the test enumerates all but some extreme invalid argument test cases.</p></td>
</tr>
<tr class="even">
<td><p><strong>TestPriority:[0, 1, 2]</strong></p></td>
<td><p>By default, tests at a priority 1 level; however, priority 2 will test every permutation, including extreme invalid arg test cases. 0 is for BVT level.</p></td>
</tr>
<tr class="odd">
<td><p><strong>SoftwareOnly</strong></p></td>
<td><p>Tests only the software implementation of the video processor. This was mainly used for initial testing before drivers supported the test cases.</p></td>
</tr>
<tr class="even">
<td><p><strong>SaveAllFrames</strong></p></td>
<td><p>The test has a hard-coded save count of invalid frames set to 100. If you want all of them saved, then use this flag. Good for high frame count test case failures.</p></td>
</tr>
<tr class="odd">
<td><p><strong>LogLevel:[0, 1, 2]</strong></p></td>
<td><p>The test has the ability to be very verbose in its logging methods. By default level 0 is set, however; level one will gather increased logging info per test cases including many stream states/blt states set. Level 2 will gather all adjusted stream states and blt states as well as any configuration information.</p></td>
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DXVA%20High%20Definition%20Video%20Processing%20-%20CreateDevice%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




