---
author: joshbax-msft
title: ProductInstance.CanCreateTarget Method
description: ProductInstance.CanCreateTarget Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2cec6f28-57f7-45d7-91a7-a2b8abcfdf9d
---

# ProductInstance.CanCreateTarget Method


This method determines if a target can be created from **TargetData** object provided. The target is not added to the product instance.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim data As TargetData``Dim returnValue As Boolean``returnValue = instance.CanCreateTarget(data)`

## Syntax


**Visual Basic**`Public Function CanCreateTarget ( _`           `data As TargetData _``) As Boolean`

**C#**`public bool CanCreateTarget (`           `TargetData data``)`

## Parameters


*data*      The **TargetData** to use to create the target

## Return Value


**true** if the target can be created; otherwise, **false**.

## Remarks


This method only validates that a target can be created. To add a target use the **CreateTarget** method.

If *data* is **null** an exception is thrown.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






