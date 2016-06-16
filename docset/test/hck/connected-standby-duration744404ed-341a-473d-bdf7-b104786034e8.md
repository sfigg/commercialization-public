---
author: joshbax-msft
title: Connected Standby Duration
description: Connected Standby Duration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7c49de8a-8a67-4db3-9833-a4f0f41743c1
---

# Connected Standby Duration


This test verifies that the Connected Standby power profile is supported by battery-powered systems.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.PowerManagement.CS.ConnectedStandbyDuration</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~300 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

**Note**  
To run the test on a system that has a mobile broadband device, you must turn the mobile broadband radio off (by using the settings on the Wireless menu). The system must be connected to a wireless router. The test will only run with the system under test connected to WiFi only.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## More information


### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>DamKey</p></td>
<td><p>The registry key that contains the DAM that is used to determine whether a process should be exempted.</p>
<p>Default value: HKLM\System\CurrentControlSet\Control\Session Manager</p></td>
</tr>
<tr class="even">
<td><p>DamValue</p></td>
<td><p>The registry value the DAM inspects to determine whether a process should be exempted from suspension.</p>
<p>Default value: DamExempted</p></td>
</tr>
<tr class="odd">
<td><p>EnableDebug</p></td>
<td><p>Configure debug logging. 1 to enable debug logging.</p>
<p>Default value: 0</p></td>
</tr>
</tbody>
</table>

 

 

 






