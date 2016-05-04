---
author: joshbax-msft
title: LoadGen Server Stress - Run Last - Reset Machine Policies
description: LoadGen Server Stress - Run Last - Reset Machine Policies
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 90480937-20a2-477d-927c-c92f6eda9493
---

# LoadGen Server Stress - Run Last - Reset Machine Policies


This automated test resets the machine policies that are used by the test on the test computers in the machine pool.

**Note**  
This test should be run after all other tests are finished.

 

This test job completes the following actions:

1.  RunJob - ReSet the policies on SUT

2.  Reset AutoLogon on SUT

3.  Reboot SUT

4.  Reset AutoLogon on MC

5.  RunJob - ReSet the policies on MC

6.  Reboot MC

7.  Remove stressclients dimension on MC

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Server.FaultTolerant.Core System.Server.SVVP.SVVP System.Server.SystemStress.ServerStress</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Server Testing Prerequisites](system-server-testing-prerequisites.md) and [Test Server Configuration](test-server-configuration.md). This test should be run after all other tests are finished.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Server Testing](troubleshooting-system-server-testing.md).

 

 






