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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20ProductInstance.CanCreateTarget%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




