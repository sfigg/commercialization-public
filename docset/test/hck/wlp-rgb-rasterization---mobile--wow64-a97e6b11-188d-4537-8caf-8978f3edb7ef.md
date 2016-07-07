---
author: joshbax-msft
title: WLP RGB Rasterization - Mobile (WoW64)
description: WLP RGB Rasterization - Mobile (WoW64)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d35ff92a-6561-4c6a-b22c-cdc64a3a20cb
---

# WLP RGB Rasterization - Mobile (WoW64)


This automated test enforces that the display adapter can meet the minimum Microsoft Direct3D requirements. For the full list of minimum requirements, refer to the latest Windows Certification Program documentation.

The test composes a Direct3D scene that includes all of the relevant elements from the WLP minimum requirements, such as Gouraud shading, basic alpha blending, Bi-Linear filtering, specific texture formats, etc. The test then validates that the display adapter claims support for each of these (and fails the test if it does not) and renders the scene with the display adapter and with the reference rasterizer.

The test does a pixel comparison of the rendered images and determines if the test passed or failed based on that comparison (allowing the standard 15% difference). The test is run twice: the first time in windowed mode and the second time in full-screen mode.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterRender.MinimumDirectXLevel</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 8 (x64) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

 

 






