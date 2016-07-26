---
author: joshbax-msft
title: Preempt - Scheduler WLK Validate non-zero preemption values for WDDM1.2 hardware
description: Preempt - Scheduler WLK Validate non-zero preemption values for WDDM1.2 hardware
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fd5555cb-7bc8-4d8d-933e-16a0a5110d92
---

# Preempt - Scheduler WLK Validate non-zero preemption values for WDDM1.2 hardware


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
<td><p><strong>SchBillboard.exe Time:5 SyncWith:ABC123HiGirls ProcCount:2 Quadrant:2</strong></p></td>
<td><p>Runs the test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>SchManager.exe ListenForPreemptionTime EnforcePreemptionSupport:true Time:5 SyncWith:ABC123HiGirls ProcCount:2 Loop:1 windowed:true Quadrant:4</strong></p></td>
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

 

 

 






