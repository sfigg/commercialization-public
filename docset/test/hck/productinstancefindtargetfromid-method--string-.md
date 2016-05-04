---
author: joshbax-msft
title: ProductInstance.FindTargetFromId Method (String)
description: ProductInstance.FindTargetFromId Method (String)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7ff9682c-14bc-4f15-b4e1-72aaa4e58cbb
---

# ProductInstance.FindTargetFromId Method (String)


This method returns an appropriate target type based on information associated with &lt;paramref name="targetId"/&gt;.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim targetId As String``Dim returnValue As ReadOnlyCollection(Of TargetData)``returnValue = instance.FindTargetFromId(targetId)`

## Syntax


**Visual Basic**`Public Function FindTargetFromId ( _`           `targetId As String _``) As ReadOnlyCollection(Of TargetData)`

**C#**`public ReadOnlyCollection<TargetData> FindTargetFromId (`           `string targetId``)`

## Parameters


*targetId*      The ID value that identifies the test target. This can be found in the SysParse data.

## Return Value


Returns **ReadOnlyCollection**. If &lt;paramref name="targetId"/&gt; is not found on the machine (test computer) associated with the product instance, **null** is returned. Otherwise, an instance of the test target is returned.

## Remarks


An exception occurs if *targetId* is null or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






