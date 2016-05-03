---
author: joshbax-msft
title: WHCKProximityTest- GetNextSubUndersizedBuffer
description: WHCKProximityTest- GetNextSubUndersizedBuffer
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6b8b1fb3-e4e5-4ef3-bda3-4f9709f829ad
---

# WHCKProximityTest- GetNextSubUndersizedBuffer


This manual test determines whether the proximity-compliant device handles standard publications and subscription events correctly, provides meaningful details about the buffer size for each publication subscription message, and handles the message correctly during a publication and subscription event.

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


Before you run the test, complete the test setup as described in [Proximity Controller Testing Prerequisites](proximity-controller-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## More information


This test uses two test computers. Computer A, the computer that runs the WHCKNearFieldInitiator.dll file, grades the test as Pass or Fail. Computer B, the computer that runs the WHCKNearFieldResponder.dll file, returns a Pass or Fail result only to report its support operations to the test.

Computer A subscribes to and then waits for Computers B’s publication. Computer A has a buffer that is smaller than the expected publication payload. On subscription fulfillment, Computer A parses the buffer for the size hint, creates a buffer of the reported size, and then tries a second time to retrieve the subscribed message.

Computer B creates a publication. Computer B then subscribes to and waits for the DeviceDeparted message.

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
<td><p>Te.exe /inproc WHCKNearFieldInitiator.dll /name:” CWHCKProximityTestInitiator::GetNextSubUndersizedBuffer”</p></td>
<td><p>Side A - Runs the test.</p></td>
</tr>
<tr class="even">
<td><p>Te.exe /inproc WHCKNearResponder.dll /name:” CWHCKProximityTestResponder::GetNextSubUndersizedBuffer”</p></td>
<td><p>Side B – Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type the following:

**Te.exe /inproc WHCKNearFieldInitiator.dll /name:”CWHCKProximityTestInitiator::GetNextSubUndersizedBuffer” /listproperties**

 

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
<td><p><em>&lt;testbinroot&gt;</em>\dtmtest\NearField</p></td>
</tr>
<tr class="even">
<td><p>NotifyPrepare.png</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\dtmtest\NearField</p></td>
</tr>
<tr class="odd">
<td><p>NotifyProximate.png</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\dtmtest\NearField</p></td>
</tr>
<tr class="even">
<td><p>NotifyRemove.png</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\dtmtest\NearField</p></td>
</tr>
<tr class="odd">
<td><p>Te.exe</p></td>
<td><p><em>&lt;TAEFBinRoot&gt;</em></p></td>
</tr>
<tr class="even">
<td><p>WHCKNearFieldInitiator.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\dtmtest\NearField</p></td>
</tr>
<tr class="odd">
<td><p>WHCKNearFieldResponder.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\dtmtest\NearField \</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WHCKProximityTest-%20GetNextSubUndersizedBuffer%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




