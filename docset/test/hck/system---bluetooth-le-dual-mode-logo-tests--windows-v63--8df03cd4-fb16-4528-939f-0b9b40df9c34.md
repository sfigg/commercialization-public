---
author: joshbax-msft
title: System - Bluetooth LE Dual-Mode Logo Tests (Windows v6.3)
description: System - Bluetooth LE Dual-Mode Logo Tests (Windows v6.3)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 64c857c3-b6dd-4ef9-9f2e-d574fa193a4c
---

# System - Bluetooth LE Dual-Mode Logo Tests (Windows v6.3)


This automated test examines the Bluetooth certification requirements and verifies that the controller that you’re testing is using valid Bluetooth 4.0 specifications. It requires three computers. Install the Bluetooth Test Driver (BTHCSTI) on both computers. The first computer acts as the primary and the other two computers acts as a secondary. The tests are copied locally to the WTTJobsWorking directory.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.BluetoothController.Base.4LeSpecification System.Client.BluetoothController.Base.SimultaneousBrEdrAndLeTraffic</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~15 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

Enabling collection of Event Tracing for Windows (ETW) traces assists with diagnosing test failures.

These traces capture the HCI traffic sent to and from the Bluetooth stack. They can be decoded using Netmon and the Bluetooth ETW parsers. It is recommended to first investigate the issue internally using these traces or some other method of capturing over-the-air traces because many controller/stack inter-operability issues can be observed in these traces.

You can view the collected logs using Netmon and the Bluetooth NPL parsers. These parsers can be obtained through installing the WDK.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

This test will always return Pass or Fail. To review test details, review the test log from the DTM Studio.

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
<td><p>ENABLETRACING</p></td>
<td><p>Enables collection of ETW traces. If <strong>True</strong>, the ETW traces are enabled on the collection. If <strong>False</strong>, the ETW traces on the collection are turned off.</p>
<p>Default value: False</p></td>
</tr>
</tbody>
</table>

 

 

 






