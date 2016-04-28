---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - AddressChange
description: NDISTest 6.5 - 2 Machine - AddressChange
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 53b9ecc4-74f3-4ca2-bee4-fe035c8d80df
---

# NDISTest 6.5 - 2 Machine - AddressChange


This test verifies the ability of NDIS and the driver to override the adapter's current MAC address by writing a new address (both valid and invalid addresses into the driver's registry with registry value NetworkAddress. The driver should receive the new address when it calls NdisReadNetworkAddress during initialization. The following is the sequence of events:

1.  Read current NetworkAddress parameter in registry so it can be restored at the end.

2.  Query the card to find its current and permanent Ethernet address.

3.  Stop the driver.

4.  Write the new Ethernet address into registry.

5.  Start the driver.

6.  Query the card to find its current registry setting and compare to expected setting.

7.  Query the card to find its permanent address and make sure it hasn't changed.

8.  Have the server send 250 packets to the new current address.

9.  Have the server send 250 packets to the original current address (expecting 0 packets received).

10. Repeat steps 3-9 for each new address to be tested (valid and invalid ones).

11. Stop the driver.

12. Put the original NetworkAddress into the registry.

13. Start the driver.

14. Query the card to find its current and permanent Ethernet address and make sure they are the same as at the start.

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
<td><p>~5 minutes</p></td>
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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%202%20Machine%20-%20%20AddressChange%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




