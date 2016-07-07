---
author: joshbax-msft
title: D3D Content Protection Test
description: D3D Content Protection Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b12bff41-72e1-45ac-ae47-aac871318699
---

# D3D Content Protection Test


This automated test starts the test binary (D3DProtection.exe) and runs the test jobs specified on the command line:

-   CPAuthChannelapi: This test group queries and configures the driver using authenticated channel tests.

-   Cryptosession: This test group encrypts and decrypts blt tests.

-   DriverProtections: This test group reads back protection tests.

In addition, this test uses the ContentProtection\_CrossProc.exe test binary to run test jobs that verify cross process content protection.

This topic applies to the following test jobs:

-   D3D Content Protection - CrossProc

-   D3D Content Protection - CrossProc (WoW64)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.Graphics.WDDM11.Render.ContentProtection.ContentProtection</p>
<p>See the [device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~15-30 minutes</p></td>
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
<td><p><strong>D3DProtection CPAuthChannelAPI -whql -logclean</strong></p></td>
<td><p>This command runs both the D3D Content Protection - CPAuthChannelAPI test job and the D3D Content Protection - CPAuthChannelAPI (WoW64) test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>ContentProtection_CrossProc -whql -logclean</strong></p></td>
<td><p>This command runs both the D3D Content Protection - CrossProc test job and the D3D Content Protection - CrossProc (WoW64) test job.</p></td>
</tr>
<tr class="odd">
<td><p><strong>D3DProtection Cryptosession -whql -logclean</strong></p></td>
<td><p>This command runs both the D3D Content Protection - Cryptosession test job and the D3D Content Protection - CryptoSession (WoW64) test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>D3DProtection DriverProtections -whql -logclean</strong></p></td>
<td><p>This command runs both the D3D Content Protection - DriverProtections test job and the D3D Content Protection - DriverProtections (WoW64) test job.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
Without any options, the test enumerates devices. For command line help for this test binary, type **/?**.

 

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
<td><p>[testbinroot]\nttest\windowstest\tools</p></td>
</tr>
<tr class="even">
<td><p>ContentProtection_CrossProc.exe</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\func\</p></td>
</tr>
<tr class="odd">
<td><p>D3d10ref.dll</p></td>
<td><p>[testbinroot]\nttest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3d11ref.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dcompiler_test.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dref.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support</p></td>
</tr>
<tr class="odd">
<td><p>D3dref8.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dref9.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx10_test.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>D3dx11_TEST.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3DProtection.exe</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
<tr class="even">
<td><p>D3dx8d.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="odd">
<td><p>D3dx9_TEST.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\support\</p></td>
</tr>
<tr class="even">
<td><p>Fpstate.dll</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="odd">
<td><p>Modechange.exe</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\utility\</p></td>
</tr>
<tr class="even">
<td><p>TDRWatch.exe</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\</p></td>
</tr>
<tr class="odd">
<td><p>Vbswap.x</p></td>
<td><p>[testbinroot]\nttest\windowstest\graphics\d3d\conf\</p></td>
</tr>
</tbody>
</table>

 

 

 






