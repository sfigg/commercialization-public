---
author: joshbax-msft
title: Driver Memory Test
description: Driver Memory Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c14feb72-3583-474b-b3f5-fee2fce262ab
---

# Driver Memory Test


Driver non-paged memory usage constitutes a fixed cost in memory utilization for the overall lifetime of a system. Most drivers exist in memory at all times and this usage significantly contributes to the total operating system memory footprint. By optimizing driver memory, you can provide an improved user experience and better overall system responsiveness because of the greater availability of memory for user applications.

Any reduction in non-pageable driver footprint directly improves the baseline memory consumption of the operating system, and this increases system scalability. Current Windows Hardware Certification Kit (Windows HCK) tests cover driver locked allocations (MDL/Contiguous memory allocations), non-paged driver code, and non paged pool.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Memory.DriverFootprint Device.DevFund.Memory.NXPool</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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


## Troubleshooting


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description</th>
<th>Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Test failed for events lost during ETW tracing.</p></td>
<td><p>Driver memory test gets driver memory details from ETW trace. Events lost can happen during ETW tracing. Data for failed tests might be unreliable.</p></td>
<td><p>This issue is usually caused by insufficient disk bandwidth or buffer for ETW logging. Increase the amount of installed RAM to resolve this error.</p></td>
</tr>
<tr class="even">
<td><p>Couldn’t stop kernel logger (0x00000070)</p>
<p>Couldn’t stop user-mode logger (0x000070)</p></td>
<td><p>There is not enough space on the disk.</p></td>
<td><p>Free up disk space.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p><strong>TE /inproc /enablewttlogging /appendwttlogging devfund.memorytest.dll /p:DQ=[DQ] /p:WDKDeviceID=[WDKDeviceID] /p:WPTPath=[WPTPath]</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

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
<td><p>Devfund.memorytest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\OSBinRoot]\</p></td>
</tr>
<tr class="even">
<td><p>TE,exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\OSBinRoot]\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Driver%20Memory%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




