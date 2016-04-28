---
author: joshbax-msft
title: WSD Scan Verify
description: WSD Scan Verify
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f389874d-9c5b-4351-81d2-fe2405a7fdeb
---

# WSD Scan Verify


This manual test verifies that a Web Services on Devices (WSD) scan device complies with the Web Services for Scanner (WS-Scan) Protocol. Specifically it verifies that the device being tested supports WS-Scan events and operations.

**Note**  
For WS-Discovery details, visit [WS-Discovery Specification Compliance](http://go.microsoft.com/fwlink/?LinkId=232675). For WS-Scan details, visit [Scan Service (WS-Scan) Schema](http://go.microsoft.com/fwlink/?LinkId=232676).

 

The test directly communicates with the device over the WS-Scan protocol. It will create the web service connection and then subscribe for WS-Scan Events and attempt WS-Scan Operations. It will also pull scan jobs from the device whether or not they have an active event subscription.

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
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Scanner Testing Prerequisites](scanner-testing-prerequisites.md).

In addition, this test requires the following:

-   For versions of Windows Server, the “Desktop Experience” Feature must be installed.

-   The “Network Discovery” firewall exception must be enabled on the test host.

**Warning**  
The device must be on the same subnet as the test host. It does not have to be installed. If the device only has a document feeder, make sure it is loaded with a document that can be scanned.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md)

The test can trace the HTTP SOAP messages sent between the device and the test. To generate a trace file, edit the file named “WsdScanVerify.exe.config” in a text editor.

Modify this line in the file:

``` syntax
<MessageTrace TraceDestination="None"/>
```

The config file contains details on how to set the “TraceDestination” value.

If the test is not logging HTTP SOAP messages, the next step is to perform a network trace between the test host and the device to debug the HTTP connection.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WSD%20Scan%20Verify%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




