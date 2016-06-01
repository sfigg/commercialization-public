---
author: joshbax-msft
title: ProductInstance.GetTargets Method
description: ProductInstance.GetTargets Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 748a93cc-e7b3-4323-bed2-9b42cd526119
---

# ProductInstance.GetTargets Method


This method retrieves an enumerable list of targets that expose the product to the system.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim returnValue As ReadOnlyCollection(Of Target)``returnValue = instance.GetTargets`

## Syntax


**Visual Basic**`Public Function GetTargets As ReadOnlyCollection(Of Target)`

**C#**`public ReadOnlyCollection<Target> GetTargets ()`

## Return Value


Returns **ReadOnlyCollection**, which is a collection of test targets.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






