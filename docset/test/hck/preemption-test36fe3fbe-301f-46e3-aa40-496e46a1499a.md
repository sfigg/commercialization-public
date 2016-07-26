---
author: joshbax-msft
title: Preemption Test
description: Preemption Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 68243580-f7d7-48e0-9b5f-4e9e7f825a7b
---

# Preemption Test


The GPU Preemption tests are designed to exercise the code paths where the driver is requested to preemption work in progress on the GPU. The tests check for compliance with the WDDM1.2 feature set and validate that when the system does preempt, the response time is in line with what is expected.

This test document is applicable to the following test jobs:

-   Preempt - Schedule reasonable workload 4 ms check

-   Preempt - Scheduler WLK PERF - Time to high priority completions (PoliceMS)

-   Preempt - Scheduler WLK PERF - Time to high priority Preemptions (PoliceMS)

-   Preempt - Scheduler WLK Validate non-zero preemption values for WDDM1.2 hardware

-   Preemption - Validate driver preemption level (single)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.Graphics.WDDM12.Render.PreemptionGranularity</p>
<p>See the [device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


Some of the test jobs described in this document require the running of multiple binaries at the same time. Because of this, script files are used and referred too below.

**Note**  
All test scripts must be run with administrator privileges from a command prompt. The test binaries generate log files that should have no failures.

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test job</th>
<th>Command script details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Preempt - Schedule reasonable workload 4 ms check</p></td>
<td><p>REM Copy these lines into a script file and run as adminSchManager.exe ListenForPreemptionTime Time:30 SyncWith:LilyFly ProcCount:4 Loop:1 windowed:true Quadrant:4 PoliceMS:truesched_basic.exe -I:3 -ProcCount:4 -SyncWith:LilyFly</p></td>
</tr>
<tr class="even">
<td><p>Preempt - Scheduler WLK PERF - Time to high priority completions (PoliceMS)</p></td>
<td><p>Preempt_Time_to_Completions.cmd</p></td>
</tr>
<tr class="odd">
<td><p>Preempt - Scheduler WLK PERF - Time to high priority Preemptions (PoliceMS)</p></td>
<td><p>Preempt_Time_to_Preemptions.cmd</p></td>
</tr>
<tr class="even">
<td><p>Preempt - Scheduler WLK Validate non-zero preemption values for WDDM1.2 hardware</p></td>
<td><p>REM Copy these lines into a script file and run as adminSchBillboard.exe Time:5 SyncWith:ABC123HiGirls ProcCount:2 Quadrant:2SchManager.exe ListenForPreemptionTime EnforcePreemptionSupport:true Time:5 SyncWith:ABC123HiGirls ProcCount:2 Loop:1 windowed:true Quadrant:4</p></td>
</tr>
<tr class="odd">
<td><p>Preemption - Validate driver preemption level (single)</p></td>
<td><p>REM Only one application to run here.Surfboard.exe GrowPrimitiveCount Time:5 ppFrame:1 Triangles:1000 ppPrimitive:10000 ShaderInstructions:2 windowed:true iterations:40</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

See the individual script files for test combination command lines.

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>SchBillboard.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\</p></td>
</tr>
<tr class="even">
<td><p>SchManager.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\</p></td>
</tr>
<tr class="odd">
<td><p>SurfBoard.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\\</p></td>
</tr>
</tbody>
</table>

 

 

 






