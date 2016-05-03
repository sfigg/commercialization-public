---
author: joshbax-msft
title: Converged Traffic Test
description: Converged Traffic Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 28d6cf9e-6970-4310-9bda-99b58b246e42
---

# Converged Traffic Test


This test ensures that the test adapter supports concurrent network and disk input/output (I/O).

The Converged Traffic test runs the Disk Stress test against the storage array attached to the Fibre Channel over Ethernet (FCoE) adapter while simultaneously running NTttcp to stress network traffic through the same FCoE adapter. For additional NTttcp details, see [How to Use NTttcp to Test Network Performance](http://msdn.microsoft.com/windows/hardware/gg463264.aspx). For Disk Stress details, please see [Disk Stress (LOGO)](disk-stress--logo-738735f7-245a-4b39-9d81-20339ce31fd4.md).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Fcoe.Interoperability</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~480 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Fibre Channel Over Ethernet Testing Prerequisites](fibre-channel-over-ethernet-testing-prerequisites.md).

To schedule the Converged Traffic test in HCK Studio, after the test has been selected, you must first select a secondary machine to be the receiver of network I/O. The ReceiverIPAddress should correspond to an FCoE network port on the primary machine. It should also be reachable from the secondary test machine via a network port on the same FCoE adapter that has a storage array attached. Please ensure that the port that the test is using is not being blocked by a firewall.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>logtest.vbs</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>verify_ip_address.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Converged%20Traffic%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




