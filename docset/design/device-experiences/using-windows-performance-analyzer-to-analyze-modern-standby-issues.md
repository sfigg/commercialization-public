---
title: Using Windows Performance Analyzer to analyze modern standby issues
description: The Windows Performance Analyzer (WPA) lets you view traces of system activity displayed in a graphical format.
MS-HAID:
- 'cstandby.using\_windows\_performance\_analyzer\_to\_analyze\_connected\_standby\_issues'
- 'p\_weg\_hardware.using\_windows\_performance\_analyzer\_to\_analyze\_modern\_standby\_issues'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: CE7038EE-7578-48FD-8A1B-25DC5E121E92
---

# Using Windows Performance Analyzer to analyze modern standby issues


The Windows Performance Analyzer (WPA) lets you view traces of system activity displayed in a graphical format. WPA is used for many Windows performance and debugging scenarios, and is the second-level triage tool for modern standby issues that cannot be resolved by using SleepStudy. WPA presents a graphical format of a trace file that contains events collected during a modern standby session.

For more information about the Platform Idle State graph, see [Common WPA graphs for connected standby power management](common-wpa-graphs-for-modern-standby-power-management.md). For more information about the PDC Resiliency Activity graph and Device Dstate graph, see [View a WPA trace](capture-and-view-a-wpa-trace-for-modern-standby-diagnostics.md#view-a-wpa-trace).

WPA is available in the Windows Assessment and Deployment Kit (Windows ADK) download package and includes scripts and documentation for modern standby analysis.

The remainder of this section refers to the documents and scripts that are provided in this download.

## In this section


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
<td><p>[Capture and view a WPA trace for modern standby diagnostics](capture-and-view-a-wpa-trace-for-modern-standby-diagnostics.md)</p></td>
<td><p>Describes how to capture and view a WPA trace for modern standby diagnostics.</p></td>
</tr>
<tr class="even">
<td><p>[Common WPA graphs for modern standby power management](common-wpa-graphs-for-modern-standby-power-management.md)</p></td>
<td><p>Describes the two common WPA graphs (<strong>Platform Idle State</strong> and <strong>DRIPS</strong>) for modern standby power management.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Using%20Windows%20Performance%20Analyzer%20to%20analyze%20modern%20standby%20issues%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




