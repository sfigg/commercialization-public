---
title: Xperf Actions
description: Xperf Actions
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 14ea91eb-eb7b-4dd7-a09d-da4743dc3805
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Xperf Actions


Xperf actions are trace processing components that collate event information to produce text reports. Actions produce summarized reports that are specific to a set of events such as registry accesses, context switches, file accesses, or system configuration.

All actions are invoked using the following command-line pattern:

``` syntax
xperf -i input.etl -o output.txt -a <action_name> [action_parameters]
```

Where *input.etl* is the name of the trace file, *output.txt* is the name of the report file, and *&lt;action\_name&gt;* is the name of the action. The action name is always preceded by the `-a` command-line switch. The action name can be followed by one or more action-specific parameters.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Action</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[boot](boot.md)</p></td>
<td><p>Shows boot and shut down statistics.</p></td>
</tr>
<tr class="even">
<td><p>[bootprefetch](bootprefetch.md)</p></td>
<td><p>Shows boot pre-fetching events.</p></td>
</tr>
<tr class="odd">
<td><p>[cpudisk](cpudisk.md)</p></td>
<td><p>Shows CPU/disk activity.</p></td>
</tr>
<tr class="even">
<td><p>[cswitch](cswitch.md)</p></td>
<td><p>Shows context switch data.</p></td>
</tr>
<tr class="odd">
<td><p>[diskio](diskio.md)</p></td>
<td><p>Shows disk I/O statistics.</p></td>
</tr>
<tr class="even">
<td><p>[diskidlehistogram](diskidlehistogram.md)</p></td>
<td><p>Shows a histogram of disk activity and idle times.</p></td>
</tr>
<tr class="odd">
<td><p>[dpcisr](dpcisr.md)</p></td>
<td><p>Shows deferred procedure call and interrupt service routine statistics.</p></td>
</tr>
<tr class="even">
<td><p>[drvdelay](drvdelay.md)</p></td>
<td><p>Shows driver delays.</p></td>
</tr>
<tr class="odd">
<td><p>[dumper](dumper.md)</p></td>
<td><p>Dumps events in text form.</p></td>
</tr>
<tr class="even">
<td><p>[filename](filename-wpa.md)</p></td>
<td><p>Shows file names.</p></td>
</tr>
<tr class="odd">
<td><p>[focuschange](focuschange.md)</p></td>
<td><p>Shows the Windows thread focus change events.</p></td>
</tr>
<tr class="even">
<td><p>[hardfault](hardfault.md)</p></td>
<td><p>Shows hard fault statistics by process and file.</p></td>
</tr>
<tr class="odd">
<td><p>[heap](heap.md)</p></td>
<td><p>Shows process heap information.</p></td>
</tr>
<tr class="even">
<td><p>[marks](marks.md)</p></td>
<td><p>Shows marks information.</p></td>
</tr>
<tr class="odd">
<td><p>[pagefault](pagefault.md)</p></td>
<td><p>Shows page fault information.</p></td>
</tr>
<tr class="even">
<td><p>[perfctrs](perfctrs.md)</p></td>
<td><p>Shows process performance counters.</p></td>
</tr>
<tr class="odd">
<td><p>[pnp](pnp.md)</p></td>
<td><p>Shows Plug and Play events.</p></td>
</tr>
<tr class="even">
<td><p>[prefetch](prefetch.md)</p></td>
<td><p>Shows prefetch information.</p></td>
</tr>
<tr class="odd">
<td><p>[process](process.md)</p></td>
<td><p>Shows process, thread, and image information.</p></td>
</tr>
<tr class="even">
<td><p>[profile](profile-wta.md)</p></td>
<td><p>Shows sampled profiler data.</p></td>
</tr>
<tr class="odd">
<td><p>[registry](registry.md)</p></td>
<td><p>Shows registry access statistics.</p></td>
</tr>
<tr class="even">
<td><p>[services](services.md)</p></td>
<td><p>Shows service status information.</p></td>
</tr>
<tr class="odd">
<td><p>[shutdown](shutdown.md)</p></td>
<td><p>Shows shutdown statistics.</p></td>
</tr>
<tr class="even">
<td><p>[spinlock](spinlock.md)</p></td>
<td><p>Shows spinlock information.</p></td>
</tr>
<tr class="odd">
<td><p>[stack](stack.md)</p></td>
<td><p>Shows stack information.</p></td>
</tr>
<tr class="even">
<td><p>[suspend](suspend.md)</p></td>
<td><p>Shows suspend transition information.</p></td>
</tr>
<tr class="odd">
<td><p>[sysconfig](sysconfig.md)</p></td>
<td><p>Shows system configuration information.</p></td>
</tr>
<tr class="even">
<td><p>[tracestats](tracestats.md)</p></td>
<td><p>Shows trace statistics.</p></td>
</tr>
<tr class="odd">
<td><p>[winlogon](winlogon.md)</p></td>
<td><p>Shows Winlogon events.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Xperf Command-Line Reference](xperf-command-line-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Xperf%20Actions%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





