---
author: joshbax-msft
title: Diagnosability - Kernel Debugging - Enable 1394 kernel debugging
description: Diagnosability - Kernel Debugging - Enable 1394 kernel debugging
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d241762b-bf2b-4513-835f-c06555209238
---

# Diagnosability - Kernel Debugging - Enable 1394 kernel debugging


This optional test is not required for certification. This test is provided to help troubleshoot certain test failures. When you debug test failures, you can use this optional test to enable 1394 Windows Kernel debugging.

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


See [Setting Up Kernel-Mode Debugging over a 1394 Cable Manually](http://go.microsoft.com/fwlink/p/?linkid=302285) for device and system configuration requirements to enable 1394 kernel debugging.

## Troubleshooting


See the **Troubleshooting Tips for Debugging over a 1394 cable** section of [Setting Up Kernel-Mode Debugging over a 1394 Cable Manually](http://go.microsoft.com/fwlink/p/?linkid=302285) for troubleshooting assistance.

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
<td><p><strong>ChannelNumber</strong></p></td>
<td><p>Specifies the 1394 channel to use for kernel debugging.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Diagnosability - Kernel Debugging Tests](diagnosability---kernel-debugging-tests.md)

 

 







