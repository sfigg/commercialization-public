---
title: Power policy configuration
description: Describes the modern standby power policy configuration.
MS-HAID:
- 'cstandby.power\_policy\_configuration'
- 'p\_weg\_hardware.power\_policy\_configuration'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 55D22F22-6E6A-4616-8D1A-01BF2EB0DC17
---

# Power policy configuration


Windows can leave the System on a Chip (SoC) in the active power state during standby while app background tasks are executing or critical system tasks are executing. Windows components that are allowed to leave the SoC in the active power state are called activators because they are registered with the power manager as capable of blocking the transition back to the idle power mode.

The most common activator is called Background Infrastructure (BI). BI is the system component that is responsible for managing and executing background tasks for Windows Store apps. BI enables its activator reference whenever a background task is executing during standby. As soon as all background tasks have stopped executing, or they are forced to stop executing, BI will release or clear its activator reference and the SoC can go back to the idle power mode.

Whenever an activator has an outstanding reference, the SoC will remain in the active power mode and will not enter the idle (DRIPS) power mode. There are a number of activators in Windows. The following activators are the most common.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Activator name</th>
<th>Activator description</th>
<th>Reference enabled when...</th>
<th>Reference cleared when...</th>
<th>Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>BI</p></td>
<td><p>Background Infrastructure. This activator manages background tasks for Windows Store apps.</p></td>
<td><p>Any background task for a Windows Store app is running.</p></td>
<td><p>When all background tasks for Windows Store apps have completed.</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>WU</p></td>
<td><p>Windows Update. This activator is part of the built-in Windows Update service.</p></td>
<td><p>Windows Update is scanning for critical downloads or installing critical updates.</p></td>
<td><p>Windows Update is not performing any activity.</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>WNS</p></td>
<td><p>Windows Notification Service. This activator manages the system connection to the WNS service in the cloud.</p></td>
<td><p>Windows is connecting to WNS. When the system needs to deliver a push notification to a Windows component or Windows Store app.</p></td>
<td><p>When there is no WNS activity or active push notifications.</p></td>
<td><p>This component is shared with the Image Download Manager. WNS supports delivery of notifications to many built-in Windows system services.</p></td>
</tr>
<tr class="even">
<td><p>PLM</p></td>
<td><p>Process Lifetime Manager. This activator manages the execution and scheduling of Windows Store apps.</p></td>
<td><p>The PLM is waiting for a Windows Store app to suspend.</p></td>
<td><p>All Windows Store apps are suspended.</p></td>
<td><p>The longest typical duration is five seconds. The PLM reference will be enabled when a Windows Store app is playing music with the screen off.</p></td>
</tr>
<tr class="odd">
<td><p>NCSI</p></td>
<td><p>The Network Connectivity Status Indicator activator manages system-wide Internet availability.</p></td>
<td><p>Underlying network connectivity has changed. For example, the reference will be briefly enabled after Wi-Fi loses connectivity to an access point.</p></td>
<td><p>No network state changes are occurring.</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Group policy</p></td>
<td><p>This activator manages application of group policy settings configured by the IT administrator.</p></td>
<td><p>When group policy settings are being applied.</p></td>
<td><p>When there are no group policy settings to apply.</p></td>
<td><p>This activator will only be enabled if the system administrator or IT administrator has applied new group policy settings to this system.</p></td>
</tr>
</tbody>
</table>

 

Activators are system components and their runtime and behaviors cannot be changed by system hardware designers.

Activator references and their durations are displayed in the built-in [SleepStudy](modern-standby-sleepstudy.md) diagnostic utility. Individual references may be observed through instrumentation and tracing using the [Windows Performance Analyzer](using-windows-performance-analyzer-to-analyze-modern-standby-issues.md) (WPA).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Power%20policy%20configuration%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




