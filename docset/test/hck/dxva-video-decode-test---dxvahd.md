---
author: joshbax-msft
title: DXVA Video Decode Test - DXVAHD
description: DXVA Video Decode Test - DXVAHD
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ea1283da-ba90-4edf-9ddc-f62b4a717072
---

# DXVA Video Decode Test - DXVAHD


These tests test DirectX Video Acceleration (DXVA) decoding on the graphics adapter, and DXVA-high definition (HD) quality on the graphics adapter.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.Graphics.WDDM12.Render.D3D11VideoDecoding</p>
<p>Device.Graphics.WDDM.Render.VideoProcessing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86 Windows RT 8.1 Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~840 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md). Then, perform the following prerequisite steps before you begin to test:

-   When you download the supplemental test content package for DXVA Multimedia Tests as described in [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md), you can put the downloaded content in one of the following places:

    -   Put the content on the Windows Hardware Certification Kit (Windows HCK) server or controller, under the path **%DTMBIN%..\\Tests\\DXVAContent**. When you schedule the tests, leave the default value for **ContentSource**. This setup causes each test to copy only the input content that it requires for that single test, and deletes the content after the test has completed. This is a useful strategy for machines that have less than 75GB free space.

    -   Put the content in a different location on the Windows HCK server or controller, or on a network share that is accessible to the client machines. In this case, when you schedule the tests, you must update the **ContentSource** to point to the location to whichyou have copied the files. This strategy results in the same behavior as the previous option, but provides additional flexibility for the input content location.

    -   Copy the content locally to each client machine before you run the tests. Update the **ContentSource** to be the local path to the content. For example, if you place the content in **d:\\DXVAContent**, at schedule time set **ContentSource** to **d:\\DXVAContent**.

        **Note**  
        This parameter is passed to all client machines against which the tests are scheduled, so you must make sure that the content is at an identical path on all client machines).

         

        This strategy causes the test to use the locally cached content; the test does not copy each file for each test. This setup requires at least 75GB free space, but will speed up the test run.

    -   Copy the content locally to each client machine before you run the tests. Use the **%PATH%** environment variable to add the path of the content. When you schedule the test, leave the default value for **ContentSource**. In this case, the **ContentSource** value is irrelevant.

        **Note**  
        If you combine this option with the preceding option, you must set**ContentSource** to point to the path of the content.

         

        This strategy causes is similar to the preceding option: the content is not copied for each test, which speeds up execution; this option also requires at least 75GB free space on the client machine. The advantage of this option is that the content does not have to exist in the same path on all client machines as long as each client has its **%PATH%** environment variable correctly set.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


### Parameters

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
<th>Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ContentSource</strong></p></td>
<td><p>The location of the DXVA and DXVAHD input source content files. Client machines must be able to access this location.</p></td>
<td><p>[WTT\TestBinRoot]\..\DXVAContent</p></td>
</tr>
</tbody>
</table>

 

 

 






