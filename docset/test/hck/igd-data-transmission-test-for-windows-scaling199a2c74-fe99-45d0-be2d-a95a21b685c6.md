---
author: joshbax-msft
title: IGD Data Transmission Test for Windows Scaling
description: IGD Data Transmission Test for Windows Scaling
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f6647b36-91ec-4ffa-9de7-d07706b0b52d
---

# IGD Data Transmission Test for Windows Scaling


This test checks the transmission between a machine that supports Windows Scaling but has a lower scaling factor on the external side. On some devices, if Windows Scaling is used and the scaling factor for the client machine is 8 and the server is 3, the IGD will drop packets inbound from the server machine. This test configures auto-tuning to Restricted on the external machine and then sends data by using a set of TCP connections. This test catches where the sends fail to complete. Also, overall these test guarantee reliability of the device for standard TCP connection internally and externally.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.Router.BasicCompatibility Device.Network.Router.UPnPPortMappings</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x86) Windows 8 (x86) Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless Router Testing Prerequisites](wireless-router-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless Router Testing](troubleshooting-wireless-router-testing.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20IGD%20Data%20Transmission%20Test%20for%20Windows%20Scaling%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




