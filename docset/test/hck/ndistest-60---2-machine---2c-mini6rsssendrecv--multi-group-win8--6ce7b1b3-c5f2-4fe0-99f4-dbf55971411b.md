---
author: joshbax-msft
title: NDISTest 6.0 - 2 Machine - 2c\_Mini6RSSSendRecv (Multi-Group Win8+)
description: NDISTest 6.0 - 2 Machine - 2c\_Mini6RSSSendRecv (Multi-Group Win8+)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 08df17ab-f00e-42ad-a9f6-b2a13ea8756e
---

# NDISTest 6.0 - 2 Machine - 2c\_Mini6RSSSendRecv (Multi-Group Win8+)


This test validates the miniport driver’s receive side scaling (RSS) implementation. It tests that when RSS is enabled, the miniport does not drop packets, indicates them in order, and (when appropriate) puts them on the correct processor. It also tests disabling RSS.

This test uses an indirection table which contains a number of processors equal to the greater of either the number of hardware queues the miniport supports or the number of processors on the system.

There are two main iterations in this test:

-   A single support adapter instance sending packets to the RSS miniport driver.

-   Multiple senders sending packets to the RSS miniport driver.

Both OID\_GEN\_RECEIVE\_SCALE\_PARAMETERS (RSS) and OID\_GEN\_RECEIVE\_HASH (Hash only) are tested. RSS is tried first. If RSS is not supported, the test falls back to doing hash only. If RSS is supported, the test also attempts hash only. A failure will occur if the miniport driver does not support either hash or RSS and it reported capabilities.

Disabling and enabling RSS and hashing are tested three ways:

-   Setting the NDIS\_RSS\_PARAM\_FLAG\_DISABLE\_RSS flag

-   Setting the standardized RSS registry key to disabled (0)

-   Setting the HashFunction to 0

When disabled by using a registry key, we expect no capabilities to be reported, sets to fail, and no RSS or hashing to be done.

The test sends different packet types:

-   IPv4 + TCP packets with no options

-   IPv4 packets with no options and no TCP header

-   IPv4 + TCP packets with fixed length IP options

-   IPv4 packets with fixed length IP options and no TCP header

-   Pv4 + TCP packets with variable length IP options

-   IPv4 packets with variable length IP options and no TCP header

-   First fragment of IPv4 + TCP packets with no options

-   Middle fragment of IPv4 + TCP packets with no options

-   Last fragment of IPv4 + TCP packets with no options

-   IPv4 + TCP packets changing ports and addresses

-   Raw NDISTest packets (no IP or TCP)

-   IPv6 + TCP packets with no options

-   IPv6 packets with no options & no TCP header

-   IPv6 + TCP packets with fixed length IP padding

-   IPv6 packets with fixed length IP padding and no TCP header

-   First fragment of IPv6 + TCP packets with no additional options

-   Middle fragment of IPv6 + TCP packets with no additional options

-   Last fragment of IPv6 + TCP packets with no additional options

-   IPv6 packets with route type 0 header and TCP header

-   IPv6 packets with a route type 2 header and TCP header

-   IPv6 packets with a route type 2 header and no TCP header

-   IPv6 packets with home address header and TCP header

-   IPv6 packets with home address header and no TCP header

-   IPv6 packets with home address and route type 2 header and TCP header

-   IPv6 packets with home address and a route type 2 header and no TCP header

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.RSS.RSS Device.Network.LAN.RSS.SetHashFunctionTypeAndValue Device.Network.LAN.RSS.SupportIndirectionTablesSizes Device.Network.LAN.RSS.SupportToeplitzHashFunction Device.Network.LAN.RSS.SupportUpdatesToRSSInfo</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows Server 2012 (x64) Windows 8.1 x64 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~120 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

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
<td><p>queryTestDeviceID</p></td>
<td><p>The ID of the test device.</p>
<p>Example: //Devnode/DeviceID</p></td>
</tr>
<tr class="even">
<td><p>SupportDeviceGuid0</p></td>
<td><p>The support device GUID.</p></td>
</tr>
<tr class="odd">
<td><p>ClientMessageDeviceGuid</p></td>
<td><p>The client message device GUID.</p></td>
</tr>
<tr class="even">
<td><p>ServerMessageDeviceGuid</p></td>
<td><p>The server message device GUID.</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>[WTTRunWorkingDir]\ndistest\bin\ndtest.exe /logo /auto /server /support:[SupportDeviceGuid0] /msg:[ServerMessageDeviceGuid]</strong></p></td>
<td><p>Runs the NDIS test server.</p></td>
</tr>
<tr class="even">
<td><p><strong>[WTTRunWorkingDir]\ndistest\bin\ndtest.exe /auto /client /dvi /u /target:Miniport /tc:[queryTestDeviceID] /support:[SupportDeviceGuid0] /msg:[ClientMessageDeviceGuid] /script:{2c_Mini6RSSSendRecv.wsf}</strong></p></td>
<td><p>Runs the NDIS test client.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.0%20-%202%20Machine%20-%202c_Mini6RSSSendRecv%20%28Multi-Group%20Win8+%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




