---
title: Capture and view a WPA trace for modern standby diagnostics
description: Describes how to capture and view a WPA trace for modern standby diagnostics.
MS-HAID:
- 'cstandby.capture\_and\_view\_a\_wpa\_trace\_for\_connected\_standby\_diagnostics'
- 'p\_weg\_hardware.capture\_and\_view\_a\_wpa\_trace\_for\_modern\_standby\_diagnostics'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: EBDC1B93-F046-4215-BD95-7DA935F2A31A
---

# Capture and view a WPA trace for modern standby diagnostics


Trace capture is the key diagnostic method that is used to debug issues that are observed during modern standby through SleepStudy or other tools. A trace contains detailed information about system platform states, device states, software activity, CPU utilization, memory utilization, and other system events. By viewing the events that are captured in a trace, you can observe exactly what happened during modern standby and any problems that resulted.

## Capture a WPA trace


We recommend that you capture a trace of at least one hour of modern standby to observe trends and averages.

You can use the following method to capture a trace:

**Use the Windows Performance Recorder (WPR)**

1.  Install the Windows Performance Toolkit on the system.
2.  Copy PowerManagement\_Profile.wprp to the system.
3.  To start WPR, run Wprui.exe with administrative privileges from the WPT install location.
4.  Expand More options and select the Power Management profile under Custom Measurements in the list of profiles. If the profile does not exist, click Add Profiles and open PowerManagement\_Profile.wprp (that you copied in step 2).
5.  Press or click Start to begin recording the trace.
6.  While recording, put the system into modern standby.
7.  Wait for at least one hour and then wake up the system.
8.  Press or click Save to stop recording.
9.  Choose a file name in the displayed dialog.
10. Enter at least one letter into the description field and press or click Save.
11. Wait for the progress bar to complete and then press or click OK.
12. If WPR is still recording, press or click Cancel.
13. Retrieve the saved trace file for analysis.

## View a WPA trace


You can use the WPA tool to view and analyze modern standby traces. Download the WPA tool, install it on a computer, and follow these instructions to open the trace file:

1.  Run Wpa.exe. Note that Wpa.exe is available for x86 and x64 only.
2.  In the WPA menu, click File, click Open, and select a trace file.
3.  If you can want to apply a profile, click Profiles\\Apply to open a separate Analysis tab.
4.  Click Browse and select the applicable profile to apply.
5.  You can add other graphs to the current analysis view from Graph Explorer by following these steps:
    1.  Expand a graph category in Graph Explorer.
    2.  Select the graph to add and drag it to the Analysis View pane.

To correlate data from a SleepStudy report to the WPA trace, use the mapping shown in the following table.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>SleepStudy</th>
<th>WPA trace</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Activators</p></td>
<td><p>The <strong>PDC Resiliency Activity</strong> graph shows a list of activators that were active during the modern standby session.</p></td>
</tr>
<tr class="even">
<td><p>Processors</p></td>
<td><p>The <strong>CPU Idle States</strong> graph shows a list of the CPUs in the system and their respective states.</p></td>
</tr>
<tr class="odd">
<td><p>Fx devices</p></td>
<td><p>The <strong>Device Dstate</strong> graph shows the list of Windows power framework (PoFx) devices that were active during the modern standby session.</p></td>
</tr>
<tr class="even">
<td><p>PDC phases</p></td>
<td><p>The <strong>PDC Notification Phase</strong> graph shows the details of all the PDC phases.</p></td>
</tr>
<tr class="odd">
<td><p>Networking</p></td>
<td><p>Several graphs show networking activities. The <strong>PDC Resiliency Activity</strong> graph shows activators such as the broker infrastructure (BI) or Windows Push Notification Services (WNS) that can trigger network activities. The <strong>Device Dstate</strong> graph shows information about the activity of the Wi-Fi device. The <strong>Generic Events</strong> graph can show events that are triggered by networking components such as WCM, DHCP, and TCPIP.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Capture%20and%20view%20a%20WPA%20trace%20for%20modern%20standby%20diagnostics%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




