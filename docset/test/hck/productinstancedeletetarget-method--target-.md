---
author: joshbax-msft
title: ProductInstance.DeleteTarget Method (Target)
description: ProductInstance.DeleteTarget Method (Target)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 83fab95f-f60f-401b-aa44-6e294786ddaa
---

# ProductInstance.DeleteTarget Method (Target)


This method enables the removal of a test target from this product instance.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim target As Target``instance.DeleteTarget(target)`

## Syntax


**Visual Basic**`Public Sub DeleteTarget ( _`           `target As Target _``)`

**C#**`public void DeleteTarget (`           `Target target``)`

## Parameters


*target*      The ID value of the test target to be removed from this product instance.

## Remarks


An exception is thrown if *target* is **null**:

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






