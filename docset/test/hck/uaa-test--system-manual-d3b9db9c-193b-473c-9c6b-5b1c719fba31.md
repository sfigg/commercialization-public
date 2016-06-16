---
author: joshbax-msft
title: UAA Test (System, Manual)
description: UAA Test (System, Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 43a8eff1-4c16-42b9-b038-d835aad09ad8
---

# UAA Test (System, Manual)


This test validates that High Definition (HD) audio controller and codec hardware meet the requirements for the Microsoft HD Audio class driver. This test also validates that the system BIOS is correctly programming the pin configuration registers in the codec.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.SystemAudio.Audio System.Fundamentals.SystemAudio.SystemUsesHDAudioPinConfigs</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~8 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements:[Audio Device Testing Prerequisites](audio-device-testing-prerequisites.md).

This is a system-specific implementation of an existing test. For more information on this test, see [UAA Test (Manual)](uaa-test--manual-2cd7d686-b209-4708-8536-fa751f009581.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

 

 






