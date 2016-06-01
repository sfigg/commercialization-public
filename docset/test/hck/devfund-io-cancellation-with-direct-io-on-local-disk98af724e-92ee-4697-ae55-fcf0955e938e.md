---
author: joshbax-msft
title: DevFund IO Cancellation with Direct IO on local disk
description: DevFund IO Cancellation with Direct IO on local disk
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f19bdb72-bf90-42ab-b44f-912cb664c65a
---

# DevFund IO Cancellation with Direct IO on local disk


This automated test verifies that drivers handle cancellation of issues IOs in a timely manner. The test will conduct synchronous and asynchronous IOs against the device under test. The test will attempt to end the process, at which point the driver will be directed to cancel any outstanding IOs. If the outstanding IOs do not cancel in time, driver verifier breaks into debugger mode and the test fails.

For UMDF drivers, this test enables AppVerifier on the Host Process and also enables handle tracking for the driver. For KMDF drivers it enables KMDF Verifier, KMDF Enhanced Verifier and Handle Tracking for all KMDF objects of the Device under Test (DUT).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.ReliabilityDisk.IOCompletionCancellation</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


## Troubleshooting


 

 






