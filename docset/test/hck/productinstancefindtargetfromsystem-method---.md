---
author: joshbax-msft
title: ProductInstance.FindTargetFromSystem Method ()
description: ProductInstance.FindTargetFromSystem Method ()
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 38af5403-7b5c-48fb-bc43-b4f2da4281fb
---

# ProductInstance.FindTargetFromSystem Method ()


This method returns an appropriate target type based on information associated with &lt;paramref name="targetId"/&gt;.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim returnValue As ReadOnlyCollection(Of TargetData)``returnValue = instance.FindTargetFromSystem`

## Syntax


**Visual Basic**`Public Function FindTargetFromSystem As ReadOnlyCollection(Of TargetData)`

**C#**`public ReadOnlyCollection<TargetData> FindTargetFromSystem ()`

## Return Value


Returns **ReadOnlyCollection**, which is an instance of a system target based on the machine associated with the product instance.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






