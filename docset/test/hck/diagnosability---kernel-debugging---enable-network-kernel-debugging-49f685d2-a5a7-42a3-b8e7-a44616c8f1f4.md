---
author: joshbax-msft
title: Diagnosability - Kernel Debugging - Enable network kernel debugging
description: Diagnosability - Kernel Debugging - Enable network kernel debugging
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8923a2e3-a77d-4ee3-a1d8-89f0a5682ecf
---

# Diagnosability - Kernel Debugging - Enable network kernel debugging


This optional test is not required for certification. This test is provided to help troubleshoot certain test failures. When you debug test failures, you can use this optional test to enable Windows network kernel debugging.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Reliability.Discretional System.Fundamentals.Reliability.Discretional</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
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
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


See [Setting Up Kernel-Mode Debugging over a Network Cable Manually](http://go.microsoft.com/fwlink/p/?linkid=302288) for device and system configuration requirements to enable network kernel debugging.

## Troubleshooting


See the **Troubleshooting Tips for Debugging over a network cable** section of [Setting Up Kernel-Mode Debugging over a Network Cable Manually](http://go.microsoft.com/fwlink/p/?linkid=302288) for troubleshooting assistance.

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
<td><p><strong>HostSystemIPAddress</strong></p></td>
<td><p>Specifies the host system IP address.</p></td>
</tr>
<tr class="even">
<td><p><strong>PortNumber</strong></p></td>
<td><p>Specifies the port number.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Key</strong></p></td>
<td><p>Specifies the key.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Diagnosability - Kernel Debugging Tests](diagnosability---kernel-debugging-tests.md)

 

 







