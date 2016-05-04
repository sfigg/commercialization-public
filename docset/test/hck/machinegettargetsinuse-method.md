---
author: joshbax-msft
title: Machine.GetTargetsInUse Method
description: Machine.GetTargetsInUse Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 479a3a6f-7abf-4f32-84df-aa7d88a3fc45
---

# Machine.GetTargetsInUse Method


This method retrieves a summary of all of the targets from all of the projects which are still in use by this machine.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public Overridable Function GetTargetsInUse() As ReadOnlyCollection(Of InUseTargetData)`

**C#**`public virtual ReadOnlyCollection<InUseTargetData> GetTargetsInUse()`

## Return Value


This method returns a list of all targets that need to be deleted.

## Remarks


Before deleting this machine, all targets returned by this method must first be deleted.

This method returns a structure that indicates targets by name, but it does not open each project and load each target to get this information.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






