---
author: joshbax-msft
title: ProductInstance.DeleteTarget Method (String, Machine)
description: ProductInstance.DeleteTarget Method (String, Machine)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fe3128b9-0250-43ec-813f-fb4a9d24189c
---

# ProductInstance.DeleteTarget Method (String, Machine)


This method deletes a targetTableEntry by name/id.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim targetIdToDelete As String``Dim machine As Machine``instance.DeleteTarget(targetIdToDelete, machine)`

## Syntax


**Visual Basic**`Public Sub DeleteTarget ( _`           `targetIdToDelete As String _`           `machine As Machine _``)`

**C#**`public void DeleteTarget (`           `string targetIdToDelete`           `Machine machine``)`

## Parameters


*targetIdToDelete*      The name or id of the targetTableEntry to delete.

*machine*      The machine which contains this test target.

## Remarks


An exception is thrown when:

-   The *targetIdToDelete* parameter is **null** or empty.

-   The **ProductInstance** could not be found or was deleted.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20ProductInstance.DeleteTarget%20Method%20%28String,%20Machine%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




