---
author: joshbax-msft
title: Multiple processor group device test
description: Multiple processor group device test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6a1aff7d-a697-490a-a9af-38d87a018d7d
---

# Multiple processor group device test


This test validates that the test machine has been configured into multiple processor groups.

This requirement applies to all Device Categories that can be certified for Windows Server. This test requires configuration of the system into multiple processor groups and a reboot, prior to running Windows Server 2008 R2 and later versions of the Windows Server operating system tests.

The processor group concept was introduced in Windows 7 and Windows Server 2008 R2 to support more than 64 logical processors. Any machine with more than 64 logical processors has more than one processor group by necessity. Drivers are expected to run properly in the multi-group context in anticipation of servers increasingly having more than 64 logical processors. This test limits the maximum group size to a small value, thereby forcing multiple groups on a machine that would normally have only one group. This test requires at least 2 logical processors to run, but because Windows Server 2008 R2 and later testing in general requires 4 logical processors, that is the minimum that the systems being used for testing must contain. The test requires IA64 or AMD64 architectures; X86 does not apply. The test requires Windows Server 2008 R2 or later versions of the Windows Server operating system.

The Multiple Processor Group test will not execute when Hyper-V is enabled, because Hyper-V limits the number of processor groups to 1. You must uninstall Hyper-V before you run this test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Server.MultipleProcessorGroups</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
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


This test requires at least four active logical processors as reported by Task Manager.

**Note**  
Windows 7 and Windows Server 2008 R2 and later support a minimum of four processor groups. If a system is configured with a small processor group size, some of the logical processors may not be used.

 

The test does not directly perform any specific validation of the device or driver being tested. Rather, it ensures the BCD settings are correct for Windows Server 2008 R2 and later. Device category-specific and driver fundamentals tests run in this multiple processor group configuration and environment.

The **bcdedit** command prompt utility was enhanced for Windows 7 and Windows Server 2008 R2 to include the *groupsize* setting. This setting specifies the maximum number of logical processors per processor group in the system. The default maximum number of logical processors per processor group is 64. The test makes use of these settings to configure processor groups.

You are encouraged to configure a system similar to what is required by the Hardware Certification Kit to do their own testing in a multiple processor group configuration as detailed above. You should test your drivers on systems that are configured to have multiple processor groups whether or not they call the group-aware Ex versions of device driver interfaces newly added for Windows Server 2008 R2. The processor group size must be a power of 2 between 1 and 64, inclusive.

By default, a system that has 64 or fewer active logical processors has one processor group. One must set the processor group size to forcibly configure such a system to have multiple processor groups. (Note that the group size setting is for testing and one should not configure shipping systems with this setting.) This setting allows one to test group-aware code on a system that has fewer than 64 logical processors. It also allows one to test legacy non-group-aware code.

We do not recommended that the processor group size be set to one, because this can limit concurrency of non-group-aware code. A processor group size of two avoids this problem while still allowing multiple processor groups on a system that has as few as four logical processors. Windows 7 and Windows Server 2008 R2 and later versions of the operating system support a minimum of four processor groups. If a system is configured with a small processor group size, some of the logical processors may not be used.

Setting the processor group size can have ramifications. If the processor group size is set to a value that is less than the number of logical processors in a non- uniform memory access (NUMA) node or if the system is non-NUMA, this setting redefines the NUMA node size to be the same as the processor group size. In other words, NUMA nodes are split into multiple NUMA nodes that fit within the new group size and a non-NUMA system becomes a NUMA system. To reset the maximum size of processor groups to the default value of 64, run **bcdedit** in an elevated Command Prompt window by using the /deletevalue option.

For example: `bcdedit.exe /deletevalue groupsize`

This removes the groupsize setting. By default, the groupsize setting is not set.

**Examples**

Consider a non-NUMA system that has one processor package (socket) that contains four processor cores and has Hyper Threading enabled, for a total of eight logical processors. If you run the following command to set the processor group size to two and then restart the system, the system will be configured to have four processor groups where each group has two logical processors, one core, and one NUMA node. GetLogicalProcessorInformationEx reports 8 logical processors, four processor packages, 4 nodes, and 4 groups. Each group contains one node, one package, and 2 logical processors.

bcdedit.exe /set groupsize 2

If you run the following command to set the processor group size to one and then restart the system, the system will be configured to have four processor groups where each group has one logical processor, one core, one package, and one NUMA node. GetLogicalProcessorInformationEx reports 4 logical processors, four processor packages, 4 nodes, and 4 groups. Each group contains one node , one package, and one logical processor.

bcdedit.exe /set groupsize 1

In this situation, four of the logical processors in the system are started while the other four are not. (Four processor groups maximum) \* (groupsize of one) = a maximum of four active logical processors in the system.

In the above examples, Windows splits NUMA nodes and packages so as not to span group boundaries. Nodes can never span group boundaries. A non-NUMA machine becomes a NUMA machine to Windows when its single node is split into two or more nodes. Packages can span group boundaries one situation. If a system defines multiple NUMA nodes within a package, Windows may assign the nodes to different groups, in which case the package then spans group boundaries. This is an important corner case for software taking advantage of future multi-chip module (MCM) processor packages that contain multiple die, where each die has its own memory controller. Testing software in this scenario requires the system's Static Resource Affinity Table (SRAT) to define NUMA nodes to be subsets of processor packages.

If your drivers are expected to run on any system running Windows Server 2008 R2 and later, you should validate that the drivers in a multiple group environment with the groupaware BCD setting enabled. Backward compatibility is not seamless for all non-group-aware device driver interfaces (DDIs) running on Windows Server 2008 R2 and later in the context of multiple processor groups. Both the multiple group configuration and the groupaware BCD setting help expose driver bugs that are probable and only manifest themselves on larger server class systems, which are expected to increase over time. The groupaware setting causes several now legacy (non-group-aware) DDIs to behave incorrectly all the time when running in a multiple group configuration. This helps expose driver bugs that may otherwise be difficult to find. Non-group-aware DDIs like KeGetCurrentProcessorNumber and KeSetTargetProcessorDpc are not designed to run in a multiple group configuration because they do not accommodate the processor group number now required to fully qualify a processor number. This is also true for other now-legacy DDIs. They behave correctly on all single group machines, and perhaps sometimes on multi-group machines. Some legacy processor-related DDIs operate on group 0. The two APIs mentioned above use the group associated with the affinity of the calling thread. The driver does not control the affinity of all threads calling into it. Determining whether a thread is running on processor 1 and affinitizing a DPC to processor 0x4 are ambiguous operations without the proper group qualification, because the particular processors involved could be in any group.

Some bugs exposed via the groupaware BCD setting might otherwise only be exposed on a platform that chooses to associate a device with a particular NUMA node. A platform designer can choose to associate a device with a node by adding the optional \_PXM (proximity domain) object to the ACPI namespace of the device or its parent. Several driver entry points, StartDevice for example, run on processors of the NUMA node where the device resides. Other driver entry points are not constrained and may run in a different group. This has the potential to interfere with legacy non-group-aware driver code, because the driver does not realize DPCs are affinitized to processors in one group, while other code may run in any group. The solution is to port the driver to be group-aware by replacing calls to legacy interfaces, such as **KeGetCurrentProcessorNumber** and **KeSetTargetProcessorDpc**, to their new group-aware counterparts (**KeGetCurrentProcessorNumberEx** to **KeSetTargetProcessorDpcEx**, respectively). Drivers calling the new group-aware DDIs can opt into being able to run downlevel by including procgrp.h and linking against procgrp.lib included with the Server 2008 R2 or later DDK. A runtime check determines the actual DDIs called. Because downlevel operating systems by definition have exactly one group, the new group-aware DDI calls are routed to an alternate implementation that leverages the legacy non-group-aware DDIs.

## Troubleshooting


The multi-group configuration this test imposes may cause a driver to function improperly, or the machine may fail to boot. Follow these steps until your problem is resolved:

1.  Disable the groupaware BCD setting by using **bcdedit.exe /set groupaware off**

2.  Restart the device

3.  Disable the groupsize BCD setting by using **bcdedit.exe /deletevalue groupsize**

4.  Restart the device

## More information


### Command Syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>bcdedit.exe</p></td>
<td><p>Must be run with Administrator privileges.</p></td>
</tr>
<tr class="even">
<td><p>/set</p></td>
<td><p>Sets the value that immediately follows.</p></td>
</tr>
<tr class="odd">
<td><p>/deletevalue</p></td>
<td><p>Deletes the value that immediately follows.</p></td>
</tr>
<tr class="even">
<td><p>groupsize</p></td>
<td><p>Any number that is a power of 2, between 1 and 64, inclusive.</p></td>
</tr>
<tr class="odd">
<td><p>groupaware</p></td>
<td><p>Changes the behavior of several now-legacy APIs to make multiple processor group testing more effective in finding code errors.</p></td>
</tr>
</tbody>
</table>

 

 

 






