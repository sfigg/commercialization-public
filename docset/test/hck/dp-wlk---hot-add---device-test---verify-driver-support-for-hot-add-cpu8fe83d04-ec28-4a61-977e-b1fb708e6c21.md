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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DP%20WLK%20-%20Hot-Add%20-%20Device%20Test%20-%20Verify%20driver%20support%20for%20Hot-Add%20CPU%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




