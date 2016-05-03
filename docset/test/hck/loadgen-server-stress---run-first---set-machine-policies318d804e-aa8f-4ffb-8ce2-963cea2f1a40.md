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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20LoadGen%20Server%20Stress%20-%20Run%20First%20-%20Set%20Machine%20Policies%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




