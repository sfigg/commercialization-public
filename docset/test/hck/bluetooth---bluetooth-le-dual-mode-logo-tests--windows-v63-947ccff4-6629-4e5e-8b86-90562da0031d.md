---
author: joshbax-msft
title: Bluetooth - Bluetooth LE Dual-Mode Logo Tests (Windows v6.3)
description: Bluetooth - Bluetooth LE Dual-Mode Logo Tests (Windows v6.3)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d9d1b23a-5f69-4648-b4d7-a67356134405
---

# Bluetooth - Bluetooth LE Dual-Mode Logo Tests (Windows v6.3)


This automated test examines the Bluetooth certification requirements and verifies that the controller that you’re testing is using valid Bluetooth 4.0 specifications.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.Bluetooth.Base.4LeSpecification Device.BusController.Bluetooth.Base.SimultaneousBrEdrAndLeTraffic</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
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


Before you run the test, complete the test setup as described in [Bluetooth Controller Testing Prerequisites](bluetooth-controller-testing-prerequisites.md).

-   This test requires three test computers (one acts as Primary, and the other two as Secondary). The test computers must have the same operating system and have a Bluetooth 4.0 Compliant LE radio. The primary test computer must have the radio being certified for the logo.

-   Install Bluetooth Test Driver (BTHCSTI) on all three machines (this is done automatically when scheduling through the WHCK Studio).

-   The Bluetooth radio must use the Microsoft Bluetooth Driver Stack for testing.

Tests are copied locally to the WTTJobsWorking directory and logs are copied to the default Logs server for WTT.

Enabling collection of Event Tracing for Windows (ETW) traces assists with diagnosing test failures.

These traces capture the HCI traffic sent to and from the Bluetooth stack. They can be decoded using Netmon and the Bluetooth ETW parsers. It is recommended to first investigate the issue internally using these traces or some other method of capturing over-the-air traces because many controller/stack inter-operability issues can be observed in these traces.

You can view the collected logs using Netmon and the Bluetooth NPL parsers. These parsers can be obtained through installing the WDK.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## More information


To install the bthcsti driver, follow these steps:

1.  Copy the bthcsti.inf, bthcsti.sys, bthcsti.cat, bthcstisetup.exe, and devcon.exe files into a directory. Run the remaining steps from this directory.

2.  Run bthcstisetup.exe.

3.  Run devcon dp\_add bthcsti.inf.

4.  Restart the computer.

5.  In Device Manager, verify that the bthcsti driver is installed.

**WHCK\_DualModeTraffic\_1**

1.  Pair with Basic Rate simulated device running on first secondary machine.

2.  Open eL2CAP channel to BR device and continuously send and receive traffic.

3.  Discover and bond with a LE simulated device running on the second secondary machine.

4.  Download GATT database from LE device.

5.  Remove LE bonding, close L2CAP channel, unpair BR device.

### More information

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

 

 

 






