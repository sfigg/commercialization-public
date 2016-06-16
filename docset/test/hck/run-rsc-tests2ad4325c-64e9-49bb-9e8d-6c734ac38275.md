---
author: joshbax-msft
title: Run RSC Tests
description: Run RSC Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3b8dac95-22b0-4efd-8f17-08538393d9d2
---

# Run RSC Tests


This test validates receive-segment coalescing (RSC).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.RSC.RSC</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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

**Important**  
The Windows HCK User's Guide - LAN Testing Prerequisites page recommends the HCK configuration of back-to-back test connection and a separate backchannel connection to the same network together with the HCK controller. It is important that in this configuration, the DUT (device-under-test) and the support network interface, be configured for DHCP so that when they are connected back-to-back, they are auto-configured with a '169.x.x.x' IP address. If this configuration is not available, then the RSC test might not be able to determine the correct client and corresponding support IP interfaces for the DUT (device-under-test). An alternate configuration is to configure the HCK Controller to be directly reachable from the DUT network – this typically requires that the test, support and controller machines be connected to the same switch. In this configuration, all network devices, except for the controller NIC, the test NIC and the support NIC, should be disabled. Other configurations are less likely to succeed."

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

## More information


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
<td><p><strong>cscript [SystemDrive]\Sparta_Test\TCP\RSC.wsf -v4 2&gt;&gt;scripterr.txt</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

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
<td><p>spartadrv*.*</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\</p></td>
</tr>
<tr class="even">
<td><p>netcapdrv6*.*</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Spartamini\</p></td>
</tr>
<tr class="odd">
<td><p>drvinstall.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\</p></td>
</tr>
<tr class="even">
<td><p>autosrvc.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\</p></td>
</tr>
<tr class="odd">
<td><p>ntlog.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\commontest\ntlog\</p></td>
</tr>
<tr class="even">
<td><p>netcapture.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\</p></td>
</tr>
<tr class="odd">
<td><p>spartacm.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\</p></td>
</tr>
<tr class="even">
<td><p>testcore.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\</p></td>
</tr>
<tr class="odd">
<td><p>config_vista.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\</p></td>
</tr>
<tr class="even">
<td><p>*.*</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\scripts\common\</p></td>
</tr>
<tr class="odd">
<td><p>tcp.vbs</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\scripts\tcp\</p></td>
</tr>
<tr class="even">
<td><p>rsc.wsf</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\nettest\Transports\Sparta\scripts\tcp\</p></td>
</tr>
</tbody>
</table>

 

 

 






