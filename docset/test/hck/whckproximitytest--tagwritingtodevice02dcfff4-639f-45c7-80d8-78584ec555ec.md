---
author: joshbax-msft
title: WHCKProximityTest- TagWritingToDevice
description: WHCKProximityTest- TagWritingToDevice
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 32e0218d-13e0-4fdc-90a2-47d0b3520f7e
---

# WHCKProximityTest- TagWritingToDevice


This manual test determines whether the proximity implementation does not write tag data to a non-tag device.

During the test, you will be prompted to place a second computer close enough to the test computer so that both computers exchange proximity messages. The test passes if the test computer detects that the test computer is no an NFC tag.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.NearFieldProximity.ProviderImplementation</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


This is a two-computer test. Before you run the test, complete the test setup as described in [Proximity Controller Testing Prerequisites](proximity-controller-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## More Information


During the test, the test computer publishes a write-to-tag message to the second test computer when it is within proximity range. The test fails if the test computer mistakes the second computer for a NFC tag. The test passes successfully if the test proximity device correctly detects that the second proximity device is not an NFC tag, and does not trigger a Write-to-tag publication event.

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
<td><p><strong>Te.exe /inproc WHCKNearFieldInitiator.dll /name:&quot;CWHCKProximityTestInitiator::TagWritingToDevice</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type the following:

**Te.exe /inproc WHCKNearFieldInitiator.dll /name:"CWHCKProximityTestInitiator::TagWritingToDevice" /listproperties**

 

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
<td><p>Te.exe</p></td>
<td><p><em>&lt;TAEFBinRoot&gt;</em></p></td>
</tr>
<tr class="even">
<td><p>WHCKNearFieldInitiator.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\dtmtest\NearField\</p></td>
</tr>
</tbody>
</table>

 

 

 






