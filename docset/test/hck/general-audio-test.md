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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20General%20Audio%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




