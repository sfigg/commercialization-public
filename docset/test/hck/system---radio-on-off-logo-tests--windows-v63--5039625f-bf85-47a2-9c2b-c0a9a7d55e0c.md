---
author: joshbax-msft
title: System - Radio On-Off Logo Tests (Windows v6.3)
description: System - Radio On-Off Logo Tests (Windows v6.3)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f91ebb19-d5b7-44d4-a42f-2eff12e891d1
---

# System - Radio On-Off Logo Tests (Windows v6.3)


This test validates the ability of the Bluetooth radio to support radio airplane mode. The test requires that two machines, with the primary DUT being a mobile platform with an internal Bluetooth radio.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.BluetoothController.Base.OnOffStateControllableViaSoftware</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
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

To run this test, the user needs to choose the primary and secondary machines with the primary machine being a mobile platform with an internal Bluetooth 4.0 radio; the secondary machine can have any Bluetooth radio.

If the radio is a 3.0 or earlier radio, a vendor supplied package is required to support radio management on the DUT.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

If the test times out, if the radio is still active after turning off, or the radio is in a bad state with rapid on/off, investigate the HCI log and trace for more information.

Enabling collection of Event Tracing for Windows (ETW) traces assists with diagnosing test failures.

These traces capture the HCI traffic sent to and from the Bluetooth stack. They can be decoded using Netmon and the Bluetooth ETW parsers. It is recommended to first investigate the issue internally using these traces or some other method of capturing over-the-air traces because many controller/stack inter-operability issues can be observed in these traces.

You can view the collected logs using Netmon and the Bluetooth NPL parsers. These parsers can be obtained through installing the WDK.

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

 

 

 






