---
author: joshbax-msft
title: ProductInstance.DeleteTarget Method (String)
description: ProductInstance.DeleteTarget Method (String)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: aac01f95-3d49-4f8e-8572-59dd6f1d4494
---

# ProductInstance.DeleteTarget Method (String)


This method deletes a targetTableEntry by name/id.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim targetIdToDelete As String``instance.DeleteTarget(targetIdToDelete)`

## Syntax


**Visual Basic**`Public Sub DeleteTarget ( _`           `targetIdToDelete As String _``)`

**C#**`public void DeleteTarget (`           `string targetIdToDelete``)`

## Parameters


*targetIdToDelete*      The name or id of the targetTableEntry to delete.

## Remarks


An exception is thrown when:

-   The *targetIdToDelete* parameter is **null** or empty.

-   The **ProductInstance** could not be found or was deleted.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






