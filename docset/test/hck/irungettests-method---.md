---
author: joshbax-msft
title: IRun.GetTests Method ()
description: IRun.GetTests Method ()
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ea8df5db-9282-41c9-a05b-85419e3216d3
---

# IRun.GetTests Method ()


This method retrieves all tests needed for this node.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IRunTests``Dim returnValue As IList(Of Test)``returnValue = instance.GetTests`

## Syntax


**Visual Basic**`Function GetTests As IList(Of Test)`       

**C#**`IList<Test> GetTests ()`

## Return Value


Returns **IList**.

## Remarks


For backwards compatibility with HCK 2.0, returns tests that are tagged with [ConnectionType Enumeration](connectiontype-enumeration.md) content level. To get tests for other content levels, use the overloaded method that takes a collection of [ContentLevelType Enumeration](contentleveltype-enumeration.md).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






