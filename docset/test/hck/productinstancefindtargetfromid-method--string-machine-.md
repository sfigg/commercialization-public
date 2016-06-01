---
author: joshbax-msft
title: ProductInstance.FindTargetFromId Method (String, Machine)
description: ProductInstance.FindTargetFromId Method (String, Machine)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8b967dd5-406f-4a21-a08d-a5b9b48407f2
---

# ProductInstance.FindTargetFromId Method (String, Machine)


This method returns an appropriate target type based on information associated with &lt;paramref name="targetId"/&gt;.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim targetId As String``Dim machine As Machine``Dim returnValue As ReadOnlyCollection(Of TargetData)``returnValue = instance.FindTargetFromId(targetId, machine)`

## Syntax


**Visual Basic**`Public Function FindTargetFromId ( _`           `targetId As String, _`           `machine As Machine _``) As ReadOnlyCollection(Of TargetData)`

**C#**`public ReadOnlyCollection<TargetData> FindTargetFromId (`           `string targetId`           `Machine machine``)`

## Parameters


*targetId*      The ID that identifies the target. This can be found in the SysParse data.

*machine*      The test computer to look for the ID value on.

## Return Value


Returns **ReadOnlyCollection**. If &lt;paramref name="targetId"/&gt; is not found on the machine (test computer) associated with the product instance, **null** is returned. Otherwise, an instance of the test target is returned.

## Remarks


An exception is thrown when the *targetIdToDelete* parameter is **null** or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






