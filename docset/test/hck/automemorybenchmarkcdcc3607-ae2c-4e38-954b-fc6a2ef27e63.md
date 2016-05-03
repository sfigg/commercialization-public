---
author: joshbax-msft
title: AutoMemoryBenchmark
description: AutoMemoryBenchmark
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9d9bb86d-0d32-495c-81bc-80e7da13b4db
---

# AutoMemoryBenchmark


This test consists of multiple scenarios where a driver is evaluated for memory being consumed in the scenario. The benchmark aggregates results from different memory metrics to arrive to a final score for the scenario. This score is the key metric developer should optimize and the metric which is evaluated for Windows Hardware certification.

The memory benchmark is currently comprised of the following six scenarios:

-   Idle

-   Present

-   Textures

-   Buffers

-   Surfaces

-   Upload

For each of the rendering scenarios (all scenarios except Idle), the goals for the scenario are established such that:

-   2MB allowed for OS overhead.

-   +2MB allowed for driver overhead per GPU in a link for x86 and x64 systems, +1MB per GPU in a link allowed for ARM systems. The number of linked GPUs on a system is determined and multiplied by the system-determined size per GPU to give the total driver overhead allowed.

-   +Size of surfaces explicitly created by application + 7.5% for alignment/padding in the case of non-power of 2 surfaces.

-   +4KB overhead per surface created on 32-bit systems, +8KB overhead per surface on 64-bit systems.

-   Except for the Present scenario, the rendering scenario targets are rounded to the next half-megabyte boundary.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.Graphics.DisplayRender.Performance</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Known issues


With the current build of the tool, aperture pages that are marked non-CPU visible by the graphics driver will not be matched to the process that generated the workload for the driver. Instead, it will be found in the DWM process, which attaches to the originating process to perform its work on the surfaces. Because of this lack of matching, they will not be found in the UserModeReferenceSetAdjustment metric, and those aperture pages will be counted twice by the tool. To fix this, the pages referenced while attached should be assigned to the process that is attached to, since it is the virtual address space that is affected, which has been addressed but has not made to the release branch. When this fix reaches WinMain, IHVs with access to that version build or later will see the double counting disappear. As a workaround, IHVs can set their pages to CPU-visible when running the benchmark to understand where they are at.

## Troubleshooting


A stack that does not go all the way to thread creation indicates that ETW is having a problem walking the stack when the event is fired. ETW will log a maximum of 96 stack frame, but that limit is rarely hit. Typically the problem is a driver compiled with FPO optimization causing the stack walk to end abruptly.

If you do not have a stack, ensure that you are running the benchmark with the –details option.

For additional troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

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
<td><p><strong>AutoShell.exe Memorywlk.xml</strong></p></td>
<td><p>Runs the test for WHCK</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type /h.

 

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
<td><p><em>AutoShell.exe</em></p></td>
<td><p><em>[WTT\TestBinRoot]\nttest\windowstest\graphics\perfx2\</em></p></td>
</tr>
<tr class="even">
<td><p><em>Memorywlk.xml</em></p></td>
<td><p><em>[WTT\TestBinRoot]\nttest\windowstest\graphics\perfx2\</em></p></td>
</tr>
<tr class="odd">
<td><p><em>Perl.exe</em></p></td>
<td><p><em>[WTT\OSBinRoot]\Perl\perl.exe</em></p></td>
</tr>
<tr class="even">
<td><p><em>TestX.man</em></p></td>
<td><p><em>[WTT\TestBinRoot]\nttest\windowstest\graphics\perfx2\</em></p></td>
</tr>
<tr class="odd">
<td><p><em>setup.pl</em></p></td>
<td><p><em>[WTT\TestBinRoot]\nttest\windowstest\graphics\perfx2\MemoryBenchmark</em></p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20AutoMemoryBenchmark%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




