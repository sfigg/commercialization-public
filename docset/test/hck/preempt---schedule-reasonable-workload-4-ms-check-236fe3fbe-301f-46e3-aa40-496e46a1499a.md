---
author: joshbax-msft
title: Preempt - Schedule reasonable workload 4 ms check 2
description: Preempt - Schedule reasonable workload 4 ms check 2
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8790c9ce-cd8e-4ff4-a2e2-36d25425603d
---

# Preempt - Schedule reasonable workload 4 ms check 2


This automated test verifies the requirements listed in the test details table.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM12.Render.PreemptionGranularity</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More information


### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Sched_basic.exe -I:3 -ProcCount:4 -SyncWith:LilyFly</strong></p></td>
<td><p>Runs the test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>SchManager.exe ListenForPreemptionTime Time:30 SyncWith:LilyFly ProcCount:4 Loop:1 windowed:true Quadrant:4 PoliceMS:true</strong></p></td>
<td><p>Runs the support application.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>Sched_basic.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\</p></td>
</tr>
<tr class="even">
<td><p>SchManager.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\</p></td>
</tr>
</tbody>
</table>

 

 

 






