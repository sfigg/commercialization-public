---
title: Static configuration options for heterogeneous power scheduling
description: You can use the static configuration options documented in this section to tune the core parking engine on heterogeneous systems.Note  These settings are only valid for class 1 cores and replace CP\_CONCURRENCY, PARK\_DISTRIBUTION\_THRESHOLD and CP\_HEADROOM.  .
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2CE6A0EA-C069-4162-B087-C39264FBD8BF
---

# Static configuration options for heterogeneous power scheduling


You can use the static configuration options documented in this section to tune the core parking engine on heterogeneous systems.

**Note**  These settings are only valid for class 1 cores and replace CP\_CONCURRENCY, PARK\_DISTRIBUTION\_THRESHOLD and CP\_HEADROOM.

 

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
<td><p>[HeteroIncreaseThreshold](configuration-for-hetero-power-scheduling-heteroincreasethreshold.md)</p></td>
<td><p><code>HeteroIncreaseThreshold</code> specifies the threshold value to cross above, which is required to unpark the Nth efficiency class 1 core. There is a separate value for each core index. The threshold is relative to efficiency class 0 performance.</p></td>
</tr>
<tr class="even">
<td><p>[HeteroDecreaseThreshold](configuration-for-hetero-power-scheduling-heterodecreasethreshold.md)</p></td>
<td><p><code>HeteroDecreaseThreshold</code> specifies a threshold to cross below, which is required to park the Nth efficiency class 1 core. There is a separate value for each core index. The threshold is relative to efficiency class 0 performance.</p></td>
</tr>
<tr class="odd">
<td><p>[HeteroIncreaseTime](configuration-for-hetero-power-scheduling-heteroincreasetime.md)</p></td>
<td><p><code>HeteroIncreaseTime</code> specifies the minimum amount of time that must elapse before additional efficiency class 1 logical processors can be transitioned form the parked state to the unparked state. The time is specified in processor performance time check intervals.</p></td>
</tr>
<tr class="even">
<td><p>[HeteroDecreaseTime](configuration-for-hetero-power-scheduling-heterodecreasetime.md)</p></td>
<td><p><code>HeteroDecreaseTime</code> specifies the minimum amount of time that must elapse before additional efficiency class 1 logical processors can be transitioned from the unparked state to the parked state. The time is specified in performance time check intervals.</p></td>
</tr>
<tr class="odd">
<td><p>[HeteroClass1InitialPerf](configuration-for-hetero-power-scheduling-heteroclass1initialperf.md)</p></td>
<td><p><code>HeteroClass1InitialPerf</code> specifies the initial performance percentage of the efficiency class 1 core when this core is unparked.</p></td>
</tr>
<tr class="even">
<td><p>[HeteroClass0FloorPerf](configuration-for-hetero-power-scheduling-heteroclass0floorperf.md)</p></td>
<td><p><code>HeteroClass0FloorPerf</code> specifies the performance level floor, in percentage, to use for efficiency class 0 processors if there is at least one unparked efficiency class 1 processor.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_customize_converged\p_customize_converged%5D:%20Static%20configuration%20options%20for%20heterogeneous%20power%20scheduling%20%20RELEASE:%20%2810/4/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




