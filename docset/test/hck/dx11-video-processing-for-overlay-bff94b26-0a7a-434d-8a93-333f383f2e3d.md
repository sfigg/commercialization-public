---
author: joshbax-msft
title: DX11 Video Processing for Overlay
description: DX11 Video Processing for Overlay
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2807043e-cbef-4665-b473-869fc3e63a9c
---

# DX11 Video Processing for Overlay


This test runs test cases across the following DX11 VideoProcessing steps with Overlays enabled where supported:

-   SetVideoProcessBltState

-   GetVideoProcessBltState

-   SetVideoProcessStreamState

-   GetVideoProcessStreamState

-   VideoProcessBlt

The test will show a ticker-like window incrementing pass fail counts and showing which test case variables are being iterated on.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM12.DisplayRender.ProcessingStereoscopicVideoContent.ProcessingStereoscopicVideoContent Device.Graphics.WDDM13.DisplayRender.MultiplaneOverlaySupport Device.Graphics.WDDM13.DisplayRender.MultiPlaneOverlayVideoProcessing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~7 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
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

## More information


### Command syntax

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
<td><p><strong>-LogClean</strong></p></td>
<td><p>Clear the test log at the start of each run.</p>
<p>Default value: True</p></td>
</tr>
<tr class="even">
<td><p><strong>-Step</strong></p></td>
<td><p>Run the first test case and then wait for user input before running the next. Useful for debugging failures.</p>
<p>Default value: False</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

 

 






