---
author: joshbax-msft
title: WGFVidMMWDDM1\_2 Test
description: WGFVidMMWDDM1\_2 Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 849da9bb-85e6-4ede-95fb-1e30d97ae26d
---

# WGFVidMMWDDM1\_2 Test


This automated test verifies the display driver UMD (CacheCoherency).

This topic is applicable to the following test jobs:

-   WGFVidMMWDDM1\_2 - CacheCoherency - FL9.1

-   WGFVidMMWDDM1\_2 - CacheCoherency - FL10.0

-   WGFVidMMWDDM1\_2 - OfferReclaim - FL9.1

-   WGFVidMMWDDM1\_2 - OfferReclaim - FL10.0

-   WGFVidMMWDDM1\_2 - UMDLogging - FL9.1

-   WGFVidMMWDDM1\_2 - UMDLogging - FL10.0

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.Graphics.WDDM12.Render.Base</p>
<p>See the [device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


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
<td><p><strong>WgfVidMMWDDM1_2</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/?**.

 

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
<td><p>etwLibEvents.man</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\WINDOWSTEST\common\etw\</p></td>
</tr>
<tr class="even">
<td><p>UMDEtw.man</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\WINDOWSTEST\common\etw\</p></td>
</tr>
<tr class="odd">
<td><p>WGFVidMMWDDM1_2.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\WINDOWSTEST\graphics\wddm\bin\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WGFVidMMWDDM1_2%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




