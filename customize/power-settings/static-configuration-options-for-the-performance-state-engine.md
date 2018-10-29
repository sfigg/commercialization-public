---
title: Static configuration options for the performance state engine
description: You can use the static configuration options documented in this section to tune the behavior of the performance state selection algorithms.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 161ABA7F-066A-41AD-B15C-355789213126
author: themar-msft
ms.author: themar
ms.date: 10/05/2017
ms.topic: article


---

# Static configuration options for the performance state engine


You can use the static configuration options documented in this section to tune the behavior of the performance state selection algorithms.

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
<td><p>[MaxPerformance](options-for-perf-state-engine-maxperformance.md)</p></td>
<td><p><code>MaxPerformance</code> specifies the maximum processor performance state, which is specified as a percentage of maximum processor performance.</p></td>
</tr>
<tr class="even">
<td><p>[MinPerformance](options-for-perf-state-engine-minperformance.md)</p></td>
<td><p><code>MinPerformance</code> specifies the minimum processor performance state, which is specified as a percentage of maximum processor performance.</p></td>
</tr>
<tr class="odd">
<td><p>[PerfIncreaseThreshold](options-for-perf-state-engine-perfincreasethreshold.md)</p></td>
<td><p><code>PerfIncreaseThreshold</code> specifies the percentage of processor utilization, in terms of the maximum processor utilization, that is required to increase the processor to a higher performance state.</p></td>
</tr>
<tr class="even">
<td><p>[PerfIncreaseTime](options-for-perf-state-engine-perfincreasetime.md)</p></td>
<td><p><code>PerfIncreaseTime</code> specifies minimum amount of time that must elapse between subsequent increases in the processor performance state. The time is specified in units of the number of processor performance time check intervals.</p></td>
</tr>
<tr class="odd">
<td><p>[PerfDecreaseThreshold](options-for-perf-state-engine-perfdecreasethreshold.md)</p></td>
<td><p><code>PerfDecreaseThreshold</code> specifies the percentage of processor utilization, in terms of the maximum processor utilization, that is required to reduce the processor to a lower performance state.</p></td>
</tr>
<tr class="even">
<td><p>[PerfDecreaseTime](options-for-perf-state-engine-perfdecreasetime.md)</p></td>
<td><p><code>PerfDecreaseTime</code> specifies minimum amount of time that must elapse between subsequent reductions in the processor performance state. The time is specified in units of the number of processor performance time check intervals.</p></td>
</tr>
<tr class="odd">
<td><p>[PerfLatencyHint](options-for-perf-state-engine-perflatencyhint.md)</p></td>
<td><p><code>PerfLatencyHint</code> specifies the processor performance in response to latency sensitivity hints. Such hints are generated when an event preceding an expected latency-sensitive operation is detected. Examples include mouse button up events (for all mouse buttons), touch gesture start and gesture stop (finger down and finger up), and keyboard enter key down.</p></td>
</tr>
<tr class="even">
<td><p>[PerfAutonomousMode](options-for-perf-state-engine-perfautonomousmode.md)</p></td>
<td><p><code>PerfAutonomousMode</code> controls whether autonomous mode is enabled on systems that implement version 2 of the CPPC interface, and determines whether desired performance requests should be provided to the platform. On systems with other performance state interfaces, this setting has no effect.</p></td>
</tr>
<tr class="odd">
<td><p>[PerfEnergyPreference](options-for-perf-state-engine-perfenergypreference.md)</p></td>
<td><p><code>PerfEnergyPreference</code> specifies the value to program in the energy performance preference register on systems that implement version 2 of the CPPC interface.</p></td>
</tr>
<tr class="even">
<td><p>[PerfAutonomousWindow](options-for-perf-state-engine-perfautonomouswindow.md)</p></td>
<td><p><code>PerfAutonomousWindow</code> specifies the value to program in the autonomous activity window register on systems that implement version 2 of the CPPC interface and have autonomous mode enabled. Longer values indicate to the platform that it should be less sensitive to short duration spikes/dips in processor utilization.</p></td>
</tr>
<tr class="odd">
<td><p>[DutyCycling](options-for-perf-state-engine-dutycycling.md)</p></td>
<td><p><code>DutyCycling</code> enables or disables the duty cycling capability on systems that support processor duty cycling.</p></td>
</tr>
</tbody>
</table>
