---
author: joshbax-msft
title: Systematic Fault Injection - PNP (disable and enable) with IO Before and After
description: Systematic Fault Injection - PNP (disable and enable) with IO Before and After
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6e68fd7d-bf59-41d6-bb5e-56cd44f17663
---

# Systematic Fault Injection - PNP (disable and enable) with IO Before and After


This test verifies that the driver correctly handles out-of-memory situations when a driver is loaded. It does this by causing each memory allocation to fail once, retrying the load if it fails due to the allocation failing. This may include a restart.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Reliability.Discretional</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Device.Fundamentals Reliability Testing Prerequisites](devicefundamentals-reliability-testing-prerequisites.md).

You must have a debugger connected. Most failures in this test are bugchecks.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device Fundamentals Reliability Testing by using the Windows HCK](troubleshooting-device-fundamentals-reliability-testing-by-using-the-windows-hck.md).

If the test fails with a bugcheck, the driver has not properly dealt with a failed memory allocation, usually by failing to check that the allocation was successful before continuing. This type of bug usually is seen during the driver load. To find the problem, do the following:

1.  From the debugger, run **!analyze** to get the bugcheck information.

2.  From the debugger, run **!verifier 0x800** to get information about the last injected faults.

3.  Use the information about the last fault(s) injected along with the location of the bugcheck to find the coding error in the driver and fix it. Usually there are only a few lines between where the fault was injected and where the bugcheck occurred.

If the system hangs, the driver has not properly dealt with a failed memory allocation, usually by not correctly dealing with a reference counter. This problem is normally encountered when the driver is unloaded. To find the problem, do the following:

1.  From the debugger, run **!verifier 0x800** to get information about the last injected faults.

2.  Using the information about the last injected faults, check the cleanup in this function to make sure that any reference counters are dealt with appropriately.

    **Note**  
    The problem could be in the function that called the one where the fault was injected.

     

If the test does not resume after a reboot, you should restart the test from the controller. This is most likely to occur if the test is being run on a Server edition of Windows.

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
<td><p>OriginalInfFileName</p></td>
<td><p>The INF file associated with the driver being tested.</p></td>
</tr>
</tbody>
</table>

 

 

 






