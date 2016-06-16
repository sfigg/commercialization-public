---
author: joshbax-msft
title: AC3 Test (System)
description: AC3 Test (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 86be3425-af82-4030-a05f-dc4ce28bc150
---

# AC3 Test (System)


This test verifies that audio devices that support the AC-3 format comply with the Hardware Certification requirements.

**Note**  
This is a system-specific implementation of an existing test. For more information on this test, see [AC3 Test - Certification](ac3-test---certificationb42bd7fc-32b1-4500-8049-a4e00c70eb33.md).

 

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
<td><p>~4 minutes</p></td>
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


See [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md)

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
<td><p>TestPro</p></td>
<td><p>The name of the test profile.</p>
<p>Default value: logo_win7_ac3test.pro</p></td>
</tr>
</tbody>
</table>

 

 

 






