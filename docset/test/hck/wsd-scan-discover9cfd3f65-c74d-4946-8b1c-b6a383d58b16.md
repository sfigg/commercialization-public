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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WSD%20Scan%20Discover%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




