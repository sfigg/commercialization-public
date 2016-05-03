---
title: Time and Timestamp Formats
description: Time and Timestamp Formats
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4ef3a58b-da6e-46cb-9655-9c81abce7b71
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Time and Timestamp Formats


Displays time and timespan formats on the command line.

``` syntax
xperf -help format
```

## Remarks


Various Xperf actions support options that take time and timespan parameters.

Time parameters are usually taken by `-range` options. Time can be read in one of the formats described in the following table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>1234[s|ms|us|ns]</p></td>
<td><p>1234 [seconds|milliseconds|microseconds|nanoseconds] since start of the trace file.</p>
<p>The default unit is microseconds.</p></td>
</tr>
<tr class="even">
<td><p>2004/12/04:20:05:20.1234[+UTC] physical clock time.</p></td>
<td><p>All date and time components are mandatory except for the time zone. If no time zone is specified, time is assumed to be in the local time zone. (This is also the time format used by <code>-a tracestats</code>.)</p></td>
</tr>
</tbody>
</table>

 

**Note**  
Only local time zone and UTC are currently supported.

 

Timespan parameters are usually taken by options accepting resolutions. Timespans can be read in one of the formats described in the following table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>1234[s|ms|us|ns]</p></td>
<td><p>1234 [seconds|milliseconds|microseconds|nanoseconds]</p></td>
</tr>
<tr class="even">
<td><p>20:05:20.1234</p></td>
<td><p>20 hours 5 minutes 20 seconds 123.4 milliseconds. All time components are mandatory.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
Event timestamps in the Xperf trace dump are always presented in milliseconds.

 

## Related topics


[Xperf Command-Line Reference](xperf-command-line-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Time%20and%20Timestamp%20Formats%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





