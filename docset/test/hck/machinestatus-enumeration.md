---
author: joshbax-msft
title: MachineStatus Enumeration
description: MachineStatus Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3aa2a556-4e1c-4f1a-b340-6a393dc94d16
---

# MachineStatus Enumeration


This enumeration represents the states that a machine can be in at any point in time.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineStatus`

## Syntax


**Visual Basic**`Public Enumeration MachineStatus`

**C#**`public enum MachineStatus`

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
<td><p>Initializing</p></td>
<td><p>This enum value describes the state of the test computer as initializing.</p></td>
</tr>
<tr class="even">
<td><p>NotReady</p></td>
<td><p>This enum value describes the state of the test computer as “not ready”. You cannot run tests on a test computer that is in this state.</p></td>
</tr>
<tr class="odd">
<td><p>Ready</p></td>
<td><p>This enum value describes the state of the test computer as “ready”.</p></td>
</tr>
<tr class="even">
<td><p>Running</p></td>
<td><p>This enum value describes the state of the test computer as “in the running state” (that is, a test is running).</p></td>
</tr>
</tbody>
</table>

 

 

 






