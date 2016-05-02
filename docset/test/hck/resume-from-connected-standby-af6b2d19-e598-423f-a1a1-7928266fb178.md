---
author: joshbax-msft
title: Resume From Connected Standby
description: Resume From Connected Standby
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 262a94d0-9053-4e6f-ae2d-782f88cfa4e6
---

# Resume From Connected Standby


\[This content isn't available yet.\]

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.PowerManagement.CS.ResumeFromConnectedStandby</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

## More information


### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>DamKey</p></td>
<td><p>The registry key that contains the DAM, which is used to determine whether a process should be exempted.</p>
<p>Default value: HKLM\System\CurrentControlSet\Control\Session Manager</p></td>
</tr>
<tr class="even">
<td><p>DamValue</p></td>
<td><p>The setting the DAM inspects to determine whether a process should be exempted from suspension.</p>
<p>Default value: DamExempted</p></td>
</tr>
<tr class="odd">
<td><p>EnableDebug</p></td>
<td><p>Enable debug logging.</p>
<p>Default value: 0</p></td>
</tr>
</tbody>
</table>

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CSLogoAnalyzer.exe</p></td>
<td><p><em>[TestBinRoot]</em>\cstools\</p></td>
</tr>
<tr class="even">
<td><p>CSTransitionTool.exe</p></td>
<td><p><em>[TestBinRoot]</em>\cstools\</p></td>
</tr>
<tr class="odd">
<td><p>cs-exit-latency-trace-collect.cmd</p></td>
<td><p><em>[TestBinRoot]</em>\cstools\</p></td>
</tr>
<tr class="even">
<td><p>set-button-and-idle-timeout-power-policy.cmd</p></td>
<td><p><em>[TestBinRoot]</em>\cstools\</p></td>
</tr>
<tr class="odd">
<td><p>switch-powerpolicy.cmd</p></td>
<td><p><em>[TestBinRoot]</em>\cstools\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Resume%20From%20Connected%20Standby%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




