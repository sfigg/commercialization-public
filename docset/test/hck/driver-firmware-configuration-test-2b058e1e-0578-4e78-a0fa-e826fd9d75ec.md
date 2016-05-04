---
author: joshbax-msft
title: Driver Firmware Configuration Test
description: Driver Firmware Configuration Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c9c88f26-b5d3-4eb5-9fbb-6d92733840e2
---

# Driver Firmware Configuration Test


This test evaluates the devices and drivers on a system. After completion, the test outputs a log of devices and drivers that exist on the system.

The follow things must happen for the test to complete successfully:

-   The following SMBIOS fields must be populated: Manufacturer, Family, Product Name, BIOS Vendor, BIOS Version, System BIOS Major Release, System BIOS Minor Release, and Enclosure Type.

-   The INF fields for the drivers on the system must contain the basic required information (Hardware IDs, Manufacturer, Description, etc.)

-   BitLocker must be enabled.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.smbios.Discretional</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[System.Client Tests](systemclient-tests.md)

 

 







