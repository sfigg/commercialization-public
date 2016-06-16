---
author: joshbax-msft
title: TargetFamily.CreateTarget Method (IEnumerable)
description: TargetFamily.CreateTarget Method (IEnumerable)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5beeb6fe-eec0-4db8-b96a-4e5de89a25a4
---

# TargetFamily.CreateTarget Method (IEnumerable)


This method creates a target from a **TargetData** object, and adds it to a target family.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TargetFamily``Dim targets As IEnumerable(Of TargetData)``instance.CreateTarget(targets)`

## Syntax


**Visual Basic**`Public Sub CreateTarget ( _`           `targets As IEnumerable(Of TargetData) _``) `

**C#**`public void CreateTarget (`           `IEnumerable<TargetData> targets``)`

## Parameters


*targets*      The list of test targets to which to add the contents of the [TargetData Class](targetdata-class.md) object.

## Remarks


This is not an atomic operation. If an exception is thrown while adding the targets, it is possible that only a subset of the targets was added.

Targets are added in the order provided in the collection.

This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






