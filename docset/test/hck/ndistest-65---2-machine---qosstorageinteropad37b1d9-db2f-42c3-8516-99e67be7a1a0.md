---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - QosStorageInterop
description: NDISTest 6.5 - 2 Machine - QosStorageInterop
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1fce2859-05ec-4742-81a9-85dee6c1e7a4
---

# NDISTest 6.5 - 2 Machine - QosStorageInterop


The DUT must have a QoS-capable CNA adapter and the willing-bit should be turned off. The SUT must have a network adapter capable of working at DUT's line rate. A ISCSI drive should be configured to work over the CNA over either ISCSI connection offered by the CAN or an SMB share should be configured and mounted on drive for testing a NetworkDirect-capable network adapter. No more than one SMB share should be configured on the test machine to ensure no false failures. Test cases are as follows:

-   Network Traffic ETS Enforcement ensures that CNA does not throttle any network traffic flow when the network traffic class is configured at the traffic rate observed when ETS is disabled.

-   Storage Traffic ETS Enforcement ensures that CNA does not throttle any storage traffic flow when the storage traffic class is configured at the traffic rate observed when ETS is disabled.

-   1:1 Network:Storage -- Traffic Distribution of oversubscribed bandwidth ensures that CNA is able to evenly distribute network and storage traffic overload.

-   2:1 Network:Storage -- Traffic Distribution of oversubscribed bandwidth ensures that CNA is able to prioritize network traffic over storage traffic at a ratio of 2:1.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.DCB.DCB</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%202%20Machine%20-%20QosStorageInterop%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




