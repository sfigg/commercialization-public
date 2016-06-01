---
author: joshbax-msft
title: Win6\_3.MBN.GSM.TestLoopBack
description: Win6\_3.MBN.GSM.TestLoopBack
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b08915b5-d653-4786-9a49-46e696e068f2
---

# Win6\_3.MBN.GSM.TestLoopBack


This test connects the device using the Access String “loopback”. The test then sends data through the device in loopback mode. The test verifies that a throughput of 100 Mbps can be achieved and that packet loss does not exceed 5%.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.MobileBroadband.GSM.Loopback</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md).

If Windows Firewall is blocking loopback traffic, the following Windows PowerShell commands can be ran to permit the loopback traffic.

``` syntax
Powershell set-executionpolicy unrestricted -fNew-NetFirewallRule -DisplayName InboundLoopBack -Profile Any -Action Allow -Direction Inbound -LocalPort 2000 -Protocol UDPNew-NetFirewallRule -DisplayName OutboundLoopBack -Profile Any -Action Allow -Direction Inbound -RemotePort 2000 -Protocol UDP
```

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Network Testing](troubleshooting-devicenetwork-testing.md).

 

 






