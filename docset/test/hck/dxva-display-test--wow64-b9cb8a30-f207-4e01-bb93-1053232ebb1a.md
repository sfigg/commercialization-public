---
author: joshbax-msft
title: DXVA Display Test (WoW64)
description: DXVA Display Test (WoW64)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a6ccbede-10d3-468b-a86e-b50930dc62bc
---

# DXVA Display Test (WoW64)


This automated test verifies that a display driver can comply with the Microsoft® DirectX® Video Acceleration (DXVA) DXVA 1.0 MPEG2 decode acceleration specification.

Specifically, the DXVA Display Test simulates an MPEG2 decoder. It makes calls through the display subsystem to exercise the MPEG2 decode acceleration characteristics of the display driver. This test tries each set of the minimal interoperability configurations defined in the DXVA specification, and whatever the driver's recommended profile is. The driver must support at least one member of the minimal set.

The test runs in automated mode through HCK Studio. The output from the display driver is compared to a reference image. If there are failures, a bitmap of the failing data is saved, and a reference to the file logged.

-   DXVA Display Test (WoW64)

-   DXVA Display Test (DX9) (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM.Render.VideoProcessing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 8 (x64) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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

The test consists of an executable file (DXVADisplayTest.exe) and a source filter (DXVASourceTest.dll). Register the source filter before you run the test. The test also requires the presence of the source content (DXVAStream.dva and DXVAStreamMpeg1.dva) in the same directory as the test.

One of the test cases tests the ability of the decoder to work while the screen resolution is changed. This test case requires the presence of the ModeChange.exe utility to be present somewhere in the executable path. This tool is part of the display subset of the Microsoft Windows Driver Kit (WDK).

After testing, all windows should be closed. Check the log files to make sure that no test case has failed. If a feature is unsupported, it may be skipped.

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
<td><p><strong>DXVADisplayTest.exe -A -whql</strong></p></td>
<td><p>This command runs the DXVA Display Test (DX9) (WoW64) test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>DXVADisplayTest.exe -whql</strong></p></td>
<td><p>This command runs the DXVA Display Test (Manual) (WoW64) test job.</p>
<div class="alert">
<strong>Warning</strong>  
<p>This is a manual test job.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p><strong>DXVADisplayTest.exe -A -9 -whql</strong></p></td>
<td><p>This command runs the DXVA Display Test (DX9) (WoW64) tttest job.</p>
<p>This test job forces DirectShow Video Mixing Renderer 9 filter (VMR9) connection.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

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
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>DXVADisplayTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="odd">
<td><p>DXVASourceTest.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="even">
<td><p>DXVAStream.dva</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="odd">
<td><p>DXVAStreamMpeg1.dva</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\streaming\</p></td>
</tr>
<tr class="even">
<td><p>Modechange.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DXVA%20Display%20Test%20%28WoW64%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




