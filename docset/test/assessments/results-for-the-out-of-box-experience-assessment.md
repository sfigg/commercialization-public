---
title: Results for the Out Of Box Experience assessment
description: Results for the Out Of Box Experience assessment
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: CE1CE800-D2DB-41DD-B98E-650E5D676C28
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: msdn
---

# Results for the Out Of Box Experience assessment


Applies To: Windows 8.1, Windows 10

This assessment measures the duration of key aspects of the first startup experience (OOBE) that are typically impacted by image customizations and software add-ons applied to the Windows retail image. The measurements are obtained from performance traces collected using Event Tracing for Windows (ETW) during a Windows 10 system’s first startup. The assessment measures the duration of First Logon as well as specific aspects such as Active Setup and Provisioned App Install.

This topic helps you interpret the results produced by the OOBE Performance assessment. It also provides guidance on how to use the results to identify and resolve issues that impact the OOBE experience.

## Metrics


The following metrics are reported by the OOBE Performance assessment.

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
<td><p>First Logon Time</p></td>
<td><p>Measures the time in seconds to logon. This is the time from the user providing the last input prior to the logon movie beginning playback until the desktop is launched after the logon movie playback is complete.</p></td>
</tr>
<tr class="even">
<td><p>Shell Logon Framework</p></td>
<td><p>Measures the time in seconds of portion of login where the shell’s framework is initializing.</p></td>
</tr>
<tr class="odd">
<td><p>Active Setup</p></td>
<td><p>Measures the time in seconds of Active Setup.</p></td>
</tr>
<tr class="even">
<td><p>Provisioned App Install Time</p></td>
<td><p>Measures the time in seconds for provisioned applications to install.</p></td>
</tr>
<tr class="odd">
<td><p>Run Once First Logon Commands</p></td>
<td><p>Measures the time in seconds to complete execution of the run once first logon commands.</p></td>
</tr>
</tbody>
</table>

 

## Issues


The performance of the Out Of the Box Experience can be significantly impacted by additional CPU and Disk IO activity consumed by drivers, services, and applications that are executing during the scenario.

A recommended approach to identifying the sources of performance issues in OOBE is to follow the model documented in Windows Assessment Toolkit Usage and best practices that involves collecting results from a ‘baseline’ system with a retail Windows image and comparing to results collected from a ‘test’ system with a customized Windows image that contains the relevant extensions and add-on software. The assessment results for the two configurations can be compared side by side in the Windows Assessment Console (WAC) to identify the metrics with the largest differences. Clicking on the links to the ETW traces displayed in WAC will display the corresponding performance trace in Windows Performance Analyzer (WPA). WPA can be used to drill down into the CPU and disk utilization of each configuration and similarly comparing the two configurations side by side will help identify the processes that are showing the largest deltas in their use of the CPU and disk.

## Related topics


[Assessments](assessments.md)

[Out of Box Experience](out-of-box-experience.md)

[Windows Assessment Toolkit](index.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Results%20for%20the%20Out%20Of%20Box%20Experience%20assessment%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





