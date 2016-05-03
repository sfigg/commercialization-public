---
author: joshbax-msft
title: XPSRAS Display Driver Conformance Test
description: XPSRAS Display Driver Conformance Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 10d91681-0be7-4e07-b5d5-f71c340b60c9
---

# XPSRAS Display Driver Conformance Test


This automated conformance test validates using GPU to render XPS by using the XPS Rasterization Service.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM12.Render.XPSRasterizationConformance</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>TE.exe /inproc /enablewttlogging /appendwttlogging WlkXpsRasDisplayTest.dll</strong></p></td>
<td><p>Runs the test job.</p></td>
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
<td><p>Axecore.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>LGV2.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Mb01.xps</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Mb02.xps</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Mb03.xps</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Mb04.xps</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Mb05.xps</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Mb06.xps</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Mb07.xps</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Mb08.xps</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Mb09.xps</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Microsoft.assessments.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Te.Common.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Te.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Te.Host.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Te.Loaders.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Te.Managed.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Te.ManagedHost.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Te.ManagedHost.exe.config</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Te.Model.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Te.Model.Managed.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Te.ProcessHost.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Te.TestMode.Watchdog.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Te.TestModes.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Te.winrt.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>ViewLog.cmd</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Wex.Common.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Wex.Common.Managed.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Wex.Communication.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Wex.Logger.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>Wex.Logger.Interop.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="even">
<td><p>Wex.Services.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
<tr class="odd">
<td><p>WlkXpsRasDisplayTest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20XPSRAS%20Display%20Driver%20Conformance%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




