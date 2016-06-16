---
author: joshbax-msft
title: WHCKProximityTest- WindowsMimeDotCustom
description: WHCKProximityTest- WindowsMimeDotCustom
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cdd78605-d666-4432-9156-fd3eb25879ac
---

# WHCKProximityTest- WindowsMimeDotCustom


This manual test determines whether the implementation correctly handles this protocol and payload.

To successfully complete this test, you must respond to prompts that appear.

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

Both computers MUST be at the Windows desktop when you run this test; the test provides timing prompts be changing desktop backgrounds.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## More information


This test is run by using two test computers. Computer A runs the WHCKNearFieldInitiator.dll file and grades the test as Pass or Fail. Computer B runs the WHCKNearFieldResponder.dll file and returns a Pass or Fail result only to report on the computer's support operations to the test.

Computer A subscribes to and then waits for Computer B's publication. Computer B creates a publication. Computer B then subscribes to the **DeviceDeparted** event and waits for this event to occur.

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
<td><p><strong>Te.exe /inproc WHCKNearFieldInitiator.dll /name:&quot;CWHCKProximityTestInitiator::WindowsMimeDotCustom&quot;</strong></p></td>
<td><p>Runs the test on the test computer (Computer A).</p></td>
</tr>
<tr class="even">
<td><p><strong>Te.exe /inproc WHCKNearFieldResponder.dll /name:&quot;CWHCKProximityTestResponder::WindowsMimeDotCustom&quot;</strong></p></td>
<td><p>Initializes the test responder on the second test computer (Computer B).</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type: the following:

**Te.exe /inproc WHCKNearFieldInitiator.dll /name:"CWHCKProximityTestInitiator::WindowsMimeDotCustom" /listproperties**

 

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
<td><p>NotifyAttention.png</p></td>
<td><p>&lt;testbinroot&gt;\dtmtest\NearField</p></td>
</tr>
<tr class="even">
<td><p>NotifyPrepare.png</p></td>
<td><p>&lt;testbinroot&gt;\dtmtest\NearField</p></td>
</tr>
<tr class="odd">
<td><p>NotifyProximate.png</p></td>
<td><p>&lt;testbinroot&gt;\dtmtest\NearField</p></td>
</tr>
<tr class="even">
<td><p>NotifyRemove.png</p></td>
<td><p>&lt;testbinroot&gt;\dtmtest\NearField</p></td>
</tr>
<tr class="odd">
<td><p>Te.exe</p></td>
<td><p>&lt;TAEFBinRoot&gt;</p></td>
</tr>
<tr class="even">
<td><p>WHCKNearFieldInitiator.dll</p></td>
<td><p>&lt;testbinroot&gt;\dtmtest\NearField</p></td>
</tr>
<tr class="odd">
<td><p>WHCKNearFieldResponder.dll</p></td>
<td><p>&lt;testbinroot&gt;\dtmtest\NearField \</p></td>
</tr>
</tbody>
</table>

 

 

 






