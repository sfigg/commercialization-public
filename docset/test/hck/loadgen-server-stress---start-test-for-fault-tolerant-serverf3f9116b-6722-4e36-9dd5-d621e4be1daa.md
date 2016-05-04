---
author: joshbax-msft
title: LoadGen Server Stress - Start Test for Fault Tolerant Server
description: LoadGen Server Stress - Start Test for Fault Tolerant Server
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 28e43f1f-f791-4748-9a50-3c92f9026152
---

# LoadGen Server Stress - Start Test for Fault Tolerant Server


This automated test measures the stress load on a fault tolerant server. This test does the following:

1.  Copies test files to the Master Client.

2.  Runs the test on the Master Client.

3.  Copies the test logs after the test finishes.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Server.FaultTolerant.Core</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1440 minutes</p></td>
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


Before you run the test:

1.  Verify the test setup as described in the test requirements: [System Server Testing Prerequisites](system-server-testing-prerequisites.md) and [Test Server Configuration](test-server-configuration.md).

2.  Run [LoadGen Server Stress - Run First - Set Machine Policies](loadgen-server-stress---run-first---set-machine-policies318d804e-aa8f-4ffb-8ce2-963cea2f1a40.md) first, to setup the correct machine policy settings.

3.  From HCK Studio, select and run test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Server Testing](troubleshooting-system-server-testing.md).

 

 






