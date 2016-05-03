---
title: Results for the Edge Security Software Impact assessment
description: Results for the Edge Security Software Impact assessment
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 47dd67f5-e980-4bb0-a17b-2e4aa241b752
---

# Results for the Edge Security Software Impact assessment


Applies To: Windows 10

The Edge Security Software Impact assessment measure aspects of Microsoft Edge that are typically impacted by antimalware. The assessment measures the impact on the launch and navigate times of Microsoft Edge.

This topic helps you interpret the results produced by the Edge Security Software Impact assessment.

In this topic:

-   [Metrics](#metrics)

-   [Issues](#issues)

## Metrics


The following metrics are reported by the Edge Security Software Impact assessment.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Metric</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Edge Launch and Navigate</p></td>
<td><p>Time in milliseconds for the Microsoft Edge application to launch and have the requested URL available.</p></td>
</tr>
<tr class="even">
<td><p>App Activate</p></td>
<td><p>Time in milliseconds for the Microsoft Edge application to activate.</p></td>
</tr>
<tr class="odd">
<td><p>Tab Create</p></td>
<td><p>Time in milliseconds for the tab to create in Microsoft Edge.</p></td>
</tr>
<tr class="even">
<td><p>Page Available</p></td>
<td><p>Time in milliseconds for the page to be visible to the user.</p></td>
</tr>
<tr class="odd">
<td><p>After Page Available Completion of Page Load</p></td>
<td><p>Time in milliseconds for the page to be completely loaded after the page was visible. Only present if the page was available before it was completely loaded.</p></td>
</tr>
</tbody>
</table>

 

## Issues


A recommended approach to identifying the sources of performance issues is to follow the model documented in Windows Assessment Toolkit Usage and best practices that involves collecting results from a "baseline" system with a retail Windows image and comparing to results collected from a ‘test’ system with a customized Windows image that contains the relevant extensions and add-on software.

The assessment results for the two configurations can be compared side by side in the Windows Assessment Console (WAC) to identify the metrics with the largest differences. Clicking on the links to the ETW traces displayed in WAC will display the corresponding performance trace in Windows Performance Analyzer (WPA). WPA can be used to drill down into the CPU and disk utilization of each configuration and similarly comparing the two configurations side by side will help identify the processes that are showing the largest deltas in their use of the CPU and disk.

## Related topics


[Edge Security Software Impact](edge-security-software-impact.md)

[Windows Assessment Toolkit Technical Reference](windows-assessment-toolkit-technical-reference.md)

[Assessments](assessments.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Results%20for%20the%20Edge%20Security%20Software%20Impact%20assessment%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





