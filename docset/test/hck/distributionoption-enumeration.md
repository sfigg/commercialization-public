---
author: joshbax-msft
title: DistributionOption Enumeration
description: DistributionOption Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 89facf70-bae5-4290-bec1-4464feb6d9d3
---

# DistributionOption Enumeration


This class contains an enumeration that defines the options available for scheduling a test job.

**Note**  
These enumeration values are now used as flags that can be combined and retrieved by using bitwise operations.

 

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Enumeration DistributionOption`

**C#**`public enum DistributionOption`

## Members


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Member Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>RequiresMultipleMachines</p></td>
<td><p>This value defines a test job as being required to run on multiple machines (test computers)</p></td>
</tr>
<tr class="even">
<td><p>ScheduleOnAllTargets</p></td>
<td><p>This value defines a test job as being required to be run against each and every target in a device family.</p></td>
</tr>
<tr class="odd">
<td><p>ScheduleOnAnyTarget</p></td>
<td><p>This value defines a test job as being able to be run on any target in the device family.</p></td>
</tr>
<tr class="even">
<td><p>ConsolidateScheduleAcrossTargets</p></td>
<td><p>This value defines a test job that can consolidate parameters across multiple targets across compatible tests.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20DistributionOption%20Enumeration%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




