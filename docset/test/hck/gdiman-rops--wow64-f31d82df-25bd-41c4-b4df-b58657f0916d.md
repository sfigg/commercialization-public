---
author: joshbax-msft
title: GDIMAN Rops (WoW64)
description: GDIMAN Rops (WoW64)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5e8793b9-798c-4ccb-bd29-8e5d724bc6a7
---

# GDIMAN Rops (WoW64)


This automated test verifies that the graphic adapter or chipset meets all requirements defined in the WDDM 1.1 specifications.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.XDDM.Stability</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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
<td><p><strong>Gdiman rops.scr</strong></p></td>
<td><p>This command runs the GDIMAN Rops (WoW64) test job.</p></td>
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
<td><p>Bitblt16.emf</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\windowstest\win32\gdi\graphics\guiman\gui\</p></td>
</tr>
<tr class="even">
<td><p>BltTests.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\windowstest\win32\gdi\graphics\gdiman\</p></td>
</tr>
<tr class="odd">
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\windowstest\tools</p></td>
</tr>
<tr class="even">
<td><p>GdiMan.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\windowstest\win32\gdi\graphics\gdiman\</p></td>
</tr>
<tr class="odd">
<td><p>Gdimdraw.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\win32\gdi\graphics\gdiman\</p></td>
</tr>
<tr class="even">
<td><p>MetaFile.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\win32\gdi\graphics\gdiman\</p></td>
</tr>
<tr class="odd">
<td><p>Monitorshifter.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Ntlog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\commontest\ntlog\</p></td>
</tr>
<tr class="odd">
<td><p>NTLogger.ini</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="even">
<td><p>Ntwint.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\win32\gdi\graphics\gdiman\</p></td>
</tr>
<tr class="odd">
<td><p>Rops.scr</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\win32\gdi\graphics\gdiman\</p></td>
</tr>
<tr class="even">
<td><p>Rroptests.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Shifter.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\tools\shifter\</p></td>
</tr>
<tr class="even">
<td><p>Shifter.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\multimediatest\tools\shifter\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\graphics\</p></td>
</tr>
</tbody>
</table>

 

 

 






