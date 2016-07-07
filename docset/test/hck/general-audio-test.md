---
author: joshbax-msft
title: General Audio Test
description: General Audio Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 57554d44-86a7-4b96-b79b-98a849159aca
---

# General Audio Test


This automated test verifies support for audio capabilities. The test sends intentionally invalid commands to the audio driver and expects them to be rejected. If an invalid command is accepted, the test fails. Similarly, if an invalid command generates a system stop event that is also a test failure; although no test log file will be generated.

This test is applicable to the following test jobs:

-   General Audio Test (I)

-   General Audio Test (I) - Win7

-   General Audio Test (II)

-   General Audio Test (II) - Win7

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p><strong>General Audio Tests (I) -</strong>[Device.Audio.Base.KSTopologyCompliance](http://go.microsoft.com/fwlink/p/?linkid=254483)</p>
<p><strong>General Audio Tests (II) -</strong>[Device.Audio.Base.KSPROPERTYAUDIOMIXLEVELTABLE](http://go.microsoft.com/fwlink/p/?linkid=254483)[Device.Audio.Base.KSPROPERTYAUDIOVOLUMELEVEL](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p><strong>General Audio Tests (I &amp; II) Win7</strong> Windows 7 (x64) Windows 7 (x86) Windows Server 2008 R2 (x64)</p>
<p><strong>General Audio Tests (I &amp; II)</strong> Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~2 minutes for each test</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Audio Device Testing Prerequisites](audio-device-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Audio Testing](troubleshooting-audio-testing.md).

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
<td><p><strong>GAudiT</strong></p></td>
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
<td><p>GAudiT.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\</p></td>
</tr>
<tr class="even">
<td><p>S98wtt.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\ultimediatest\common\</p></td>
</tr>
<tr class="odd">
<td><p>Logo_win7_gaudit_1.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>nttest\multimediatest\AVCore\Audio\Profiles\Win7\logo</p></td>
</tr>
<tr class="even">
<td><p>Logo_win7_gaudit_2.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\Win7\logo</p></td>
</tr>
<tr class="odd">
<td><p>Logo_win8_gaudit_1.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\Win8\logo</p></td>
</tr>
<tr class="even">
<td><p>Logo_win8_gaudit_2.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\Win8\logo</p></td>
</tr>
</tbody>
</table>

 

 

 






