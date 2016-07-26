---
author: joshbax-msft
title: Machine.GetTestTargets Method ()
description: Machine.GetTestTargets Method ()
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6d0b36a8-af0b-4bd4-96ee-d2c11ea5f07f
---

# Machine.GetTestTargets Method ()


This method retrieves a read-only list of test targets associated with this machine.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim returnValue As ReadOnlyCollection(Of TargetData)``returnValue = instance.GetTestTargets`

## Syntax


**Visual Basic**`Public MustOverride Function GetTestTargets As ReadOnlyCollection(Of TargetData)`

**C#**`public abstract ReadOnlyCollection<TargetData> GetTestTargets ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection to test targets.

## Remarks


All test targets associated with this machine are returned; the collection does not filter out targets based on any loaded projects.

In order to identify targets as a part of a loaded project, look at the ProductInstance.Targets property from the Project object.

This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






