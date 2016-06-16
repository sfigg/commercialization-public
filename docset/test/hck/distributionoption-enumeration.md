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

 

 

 






