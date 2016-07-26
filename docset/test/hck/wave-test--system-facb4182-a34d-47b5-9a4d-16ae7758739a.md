---
author: joshbax-msft
title: Wave Test (System)
description: Wave Test (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d3d103ee-fee0-4510-9294-ba874e02635e
---

# Wave Test (System)


This test validates that an audio device and driver within a system meet the basic requirements for capture and playback of pulse code modulation (PCM) data.

The test exercises simple combinations of capture and playback of PCM data by using the kernel-streaming (KS) interfaces.

This is a system-specific implementation of an existing test. For more information on this test, see [Wave Test - Certification](wave-test---certificationed35b0cd-7562-446f-92a6-6ed0a42ff1c6.md).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.SystemAudio.Audio</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~16 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements:[Audio Device Testing Prerequisites](audio-device-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

For troubleshooting information specific to audio tests, see [Troubleshooting Audio Testing](troubleshooting-audio-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## Supporting Information


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
<td><p><strong>Wavetest</strong></p></td>
<td><p>Without any options, the test opens the user interface.</p></td>
</tr>
<tr class="even">
<td><p><strong>-c [string]</strong></p></td>
<td><p>This option starts the application and runs the test cases that are specified in the .profile file.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-h [string]</strong></p></td>
<td><p>This option specifies the Plug and Play (PnP) ID of the device to test. Default is all devices.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**

 

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
<td><p>Logo_win7_wavetest.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\</p></td>
</tr>
<tr class="even">
<td><p>Logo_vista_wavetest.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\</p></td>
</tr>
<tr class="odd">
<td><p>S98wtt.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\AVCore\Audio\Profiles\</p></td>
</tr>
<tr class="even">
<td><p>Wavetest.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\audio\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 






