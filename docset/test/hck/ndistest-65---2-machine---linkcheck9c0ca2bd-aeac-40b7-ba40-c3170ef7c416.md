---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - LinkCheck
description: NDISTest 6.5 - 2 Machine - LinkCheck
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 47c3229e-5a2b-40bd-961a-52a43c4a4700
---

# NDISTest 6.5 - 2 Machine - LinkCheck


This test verifies whether the connect/disconnect events are received from WMI as well as from the protocol driver. It verifies that the initialization time for a network card is not too long. For initialization time, it will stop and start the driver with the link disconnected and then with the link connected. It verifies the connect is detected properly with long (&gt;30 seconds) disconnects and that communication with the server is restored. In all, there are three tests. Pass 0 : short disconnect event Pass 1 : long disconnect event (&gt;30 seconds) Pass 2 : disconnect-unload-load-connect This script can be run with or without a switch. If the test and support devices connect to a switch then the user has to select the switch before running this script. Switch can be selected from the Tools-&gt;Option-&gt;ManagedSwitch tab. If no switches are selected then the user is prompted to manually connect and disconnect the link for the test device.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.Base.NDISRequirements</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~60 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

 

 






