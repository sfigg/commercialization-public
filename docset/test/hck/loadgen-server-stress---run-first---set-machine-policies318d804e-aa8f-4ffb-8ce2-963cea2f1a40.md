---
author: joshbax-msft
title: LoadGen Server Stress - Run First - Set Machine Policies
description: LoadGen Server Stress - Run First - Set Machine Policies
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 84d8fb1f-fc29-4e49-b309-c27ffdd82e6f
---

# LoadGen Server Stress - Run First - Set Machine Policies


This automated test sets the machine policies required by the test on the test computers in the machine pool. In addition, the test job configures auto-logon to Local Logical User Domain Admin Local Admin (LLU\_DALA) on the master client and then reboots the computer.

**Warning**  
This test **must** be run first before running any other server test.

 

This test initiates the following actions:

1.  RunJob - Set the policies on the system under test (SUT)

2.  Enable AutoLogon on SUT

3.  Setup LLU\_DALA on SUT

4.  RunJob - Machine Config on SUT

5.  Reboot SUT

6.  Enable AutoLogon on MC

7.  Setup LLU\_DALA on MC

8.  RunJob - Set the policies on MC

9.  RunJob - Machine Config on MC

10. Reboot MC

11. Record SCs to dimension on MC

12. RunJob - Machine Config on SC

13. Reboot SC

    1.  Check if domain name required parameter value is provided

    2.  Check if user name required parameter value is provided

    3.  Check if password required parameter value is provided

14. Enable NT Boot Log on SUT

15. Disable Processor Group Awareness on SUT

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


Before you run the test, complete the test setup as described in the test requirements: [System Server Testing Prerequisites](system-server-testing-prerequisites.md) and [Test Server Configuration](test-server-configuration.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Server Testing](troubleshooting-system-server-testing.md).

 

 






