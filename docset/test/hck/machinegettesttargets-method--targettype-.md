---
author: joshbax-msft
title: Machine.GetTestTargets Method (TargetType)
description: Machine.GetTestTargets Method (TargetType)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: def113a7-1d08-4b1e-88b9-ada336a575cf
---

# Machine.GetTestTargets Method (TargetType)


Retrieves a read-only list of test targets associated with a machine (test computer).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim type As TargetType``Dim returnValue As ReadOnlyCollection(Of TargetData)``returnValue = instance.GetTestTargets(type)`

## Syntax


**Visual Basic**`Public MustOverride Function GetTestTargets ( _`           `type As TargetType _``) As ReadOnlyCollection(Of TargetData)`

**C#**`public abstract ReadOnlyCollection<TargetData> GetTestTargets (`           `TargetType type``)`

## Parameters


*type*      The type of test target to search for.

## Return Value


Returns **ReadOnlyCollection**, which is a collection to test targets.

## Remarks


All test targets associated with this machine and match the type provided are returned; the collection does not filter out targets based on any loaded projects.

In order to identify targets as a part of a loaded project, look at the ProductInstance.Targets property from the Project object.

This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






