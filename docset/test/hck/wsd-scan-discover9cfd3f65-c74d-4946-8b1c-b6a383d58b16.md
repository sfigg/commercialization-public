---
author: joshbax-msft
title: WSD Scan Discover
description: WSD Scan Discover
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 036789d5-a39f-457f-a3df-816541c09d66
---

# WSD Scan Discover


This automated test verifies that a Web Services on Devices (WSD) scan device responds to "Probe" and "Resolve" multi-cast Web Services for Scanner (WS-Scan)-Discovery messages according to the Device Profile for Web Services protocol document. The "Probe" filters on the ScanDeviceType and the "Resolve" message filters on the Device UUID.

**Note**  
For WS-Discovery details, visit [WS-Discovery Specification Compliance](http://go.microsoft.com/fwlink/p/?LinkId=232675). For WS-Scan details, visit [Scan Service (WS-Scan) Schema](http://go.microsoft.com/fwlink/p/?LinkId=232676).

 

The test first performs the "Probe" WS-Discovery operation filtered by ScanDeviceType. The second and final test is the "Resolve" WS-Discovery operation based on the device WSD ID. Both test cases will timeout if the device does not respond within 60 seconds.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Scanner.WSD.WSScan</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements:[Scanner Testing Prerequisites](scanner-testing-prerequisites.md).

In addition, this test requires the following:

-   For versions of Windows Server, the "Desktop Experience" Feature must be installed.

-   The "Network Discovery" firewall exception must be enabled on the test host.

**Warning**  
The device must be on the same subnet as the test host. It does not have to be installed.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md)

Multicast network traces will be needed to determine the root cause of any failures.

 

 






