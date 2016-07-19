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

 

 






