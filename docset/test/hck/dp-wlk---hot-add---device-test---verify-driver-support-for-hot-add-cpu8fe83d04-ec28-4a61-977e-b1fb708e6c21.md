---
author: joshbax-msft
title: DP WLK - Hot-Add - Device Test - Verify driver support for Hot-Add CPU
description: DP WLK - Hot-Add - Device Test - Verify driver support for Hot-Add CPU
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f72f2b65-3730-41e7-a5ad-c6389b69a5ed
---

# DP WLK - Hot-Add - Device Test - Verify driver support for Hot-Add CPU


This test hot adds processors to the running system, avoiding the need to actually hot add an I/O adapter to the system in order to test the rebalance functionality of the device and driver. Hot add of processors forces the system to rebalance the resources The CPU Hot Add simulator starts the system under test with one processor and starts the remaining processors later during system runtime. Drivers that are aware of the number of CPUs must behave appropriately. Drivers that are not aware of the number of CPUs and do not have per processor data or try to utilize processor affinity should be unaffected.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Reliability.Interrupts.BasicReliabilityAndPerformance Device.DevFund.Reliability.PnPIRPs Device.DevFund.Reliability.S3S4SleepStates</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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


A multiprocessor or multi-core machine having at least 4 cores and 1 GB of memory is required for these tests. Run the automated test jobs on such a multiprocessor machine. Additionally, the system must be an x64-based system (AMD64 or Intel64).

For testing your device or driver to obtain a certification for Windows Server, the test system must support the minimum requirements defined above. You do not need a system that actually supports Dynamic Partitioning capabilities to test your device.

If a pool of systems is used to test devices, at least one system in the pool must support the minimum requirements defined above. Additionally, that system must contain the device and driver being tested. As long as the driver is the same on all systems in the pool, the schedule will be created to run against all systems.

For those tests that do not include a driver to test, such as testing a hard drive, the HCK will constrain the test to run on the default system. The default system is the first one listed. You should ensure that this first system meets these minimum hardware requirements.

## Troubleshooting


Any device that has a driver that indicates that it cannot be power managed to the operating system causes the Simulator Test to fail. Specifically, if any driver in the system specifies that it is CM\_DEVCAP\_NONDYNAMIC, the Simulator test fails. The failure might include error information that states, "The PnPReplacePartitionUnit() failed with 0x57, ERROR\_INVALID\_PARAMETER" or error information that shows "0x80004005, Unspecified error".

To isolate the problem, execute the Simulator test without the adapter and driver that are being tested in the system. If the test still fails, the system might contain a driver that is non-dynamic. Remove or disable devices until the test passes. If you cannot make the test pass on the system that is failing, use a different model or vendor system for device testing.

 

 






