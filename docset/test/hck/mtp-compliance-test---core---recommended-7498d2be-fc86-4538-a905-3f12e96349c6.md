---
author: joshbax-msft
title: MTP Compliance Test - Core - Recommended
description: MTP Compliance Test - Core - Recommended
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ee49390f-8472-4546-8e79-9669ba652a2b
---

# MTP Compliance Test - Core - Recommended


This test validates compliance with the Windows implementation of the Media Transfer Protocol (MTP) and ensures that devices use the MTP class driver that is included with Windows.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.Core.MTP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Device.Portable Testing Prerequisites](deviceportable-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Portable Testing](troubleshooting-deviceportable-testing.md).

## More information


### Parameters

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
<td><p>WDKDeviceID</p></td>
<td><p>The Device ID</p></td>
</tr>
<tr class="even">
<td><p>DeviceProfile</p></td>
<td><p>The profile of the device: MtpCamera MtpMediaPlayer, MtpCellphone, MtpDigitalVideoCamera, MtpOther.</p>
<p>Default value: MtpCore</p></td>
</tr>
<tr class="odd">
<td><p>WpdTestDir</p></td>
<td><p>The directory that contains the test.</p></td>
</tr>
<tr class="even">
<td><p>TaefTestFile</p></td>
<td><p>The name of the test file.</p>
<p>Default value: MtpTest.dll</p></td>
</tr>
<tr class="odd">
<td><p>TaefParameters</p></td>
<td><p>The parameters used with TAEF.</p>
<p>Default value: /inproc /enablewttlogging</p></td>
</tr>
<tr class="even">
<td><p>TestParameters</p></td>
<td><p>The parameters used with the test.</p>
<p>Default value: /p:”BVT=TRUE”</p></td>
</tr>
<tr class="odd">
<td><p>TestSelect</p></td>
<td><p>The test that should be ran.</p>
<p>Default value: /select:”@TestClassificationType=’*HCK’ and @name=’MtpTestMod.RecommendedTests*’”</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>te.exe /p:”BVT=TRUE” MtpTest.dll /select:”@TestClassification:Type='HCK' and NOT(@name='*MtpTestMod.RecommendedTests*')”</strong></p></td>
<td><p>Runs the test.</p></td>
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
<td><p>Mtptest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\mtp\</p></td>
</tr>
</tbody>
</table>

 

 

 






