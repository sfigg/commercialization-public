---
title: Static configuration options for core parking
description: You can use the static configuration options documented in this section to tune the behavior of the core parking engine.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: E5A91698-3978-4BDB-8EB9-F8CA5382789D
---

# Static configuration options for core parking


You can use the static configuration options documented in this section to tune the behavior of the core parking engine.

## <span id="in_this_section"></span>In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[CPMinCores](options-for-core-parking-cpmincores.md)</p></td>
<td><p><code>CPMinCores</code> specifies the minimum percentage of logical processors (in terms of all logical processors that are enabled on the system within each NUMA node) that can be placed in the un-parked state at any given time.</p></td>
</tr>
<tr class="even">
<td><p>[CPMaxCores](options-for-core-parking-cpmaxcores.md)</p></td>
<td><p><code>CPMaxCores</code> specifies the maximum percentage of logical processors (in terms of logical processors within each NUMA node) that can be in the un-parked state at any given time.</p></td>
</tr>
<tr class="odd">
<td><p>[CPIncreaseTime](options-for-core-parking-cpincreasetime.md)</p></td>
<td><p><code>CPIncreaseTime</code> specifies the minimum amount of time that must elapse before additional logical processors can be transitioned from the parked state to the unparked state. The time is specified in units of the number of processor performance time check intervals.</p></td>
</tr>
<tr class="even">
<td><p>[CPDecreaseTime](options-for-core-parking-cpdecreasetime.md)</p></td>
<td><p><code>CPDecreaseTime</code> specifies the minimum amount of time that must elapse before additional logical processors can be transitioned from the unparked state to the parked state. The time is specified in units of the number of processor performance time check intervals.</p></td>
</tr>
<tr class="odd">
<td><p>[CPConcurrency](options-for-core-parking-cpconcurrency.md)</p></td>
<td><p><code>CPConcurrency</code> specifies the threshold for determining concurrency of the node.</p></td>
</tr>
<tr class="even">
<td><p>[CPDistribution](options-for-core-parking-cpdistribution.md)</p></td>
<td><p><code>CPDistribution</code> specifies the utilization, in percentage, to use in the concurrency distribution to select the number of logical processors to distribute utility to.</p></td>
</tr>
<tr class="odd">
<td><p>[CPHeadroom](options-for-core-parking-cpheadroom.md)</p></td>
<td><p><code>CPHeadroom</code> specifies the value of utilization that would cause the core parking engine to unpark an additional logical processor if the least utilized processor out of the unparked set of processors had more utilization. This enables increases in concurrency to be detected.</p></td>
</tr>
<tr class="even">
<td><p>[CpLatencyHintUnpark](options-for-core-parking-cplatencyhintunpark.md)</p></td>
<td><p><code>CPLatencyHintUnpark</code> specifies the minimum number of unparked cores when a system low latency hint is detected.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_customize_converged\p_customize_converged%5D:%20Static%20configuration%20options%20for%20core%20parking%20%20RELEASE:%20%2810/4/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




