---
author: joshbax-msft
title: ProductInstance.GetTests Method ()
description: ProductInstance.GetTests Method ()
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 72d9673d-d406-4fdb-996b-1940325c541d
---

# ProductInstance.GetTests Method ()


This method retrieves all tests where *ContentLevelType* equals **certification**.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim returnValue As IList(Of Test)``returnValue = instance.GetTests`

## Syntax


**Visual Basic**`Public Overridable Function GetTests As IList(Of Test)`

**C#**`public virtual IList<Test> GetTests ()`

## Return Value


Returns **IList**, which is a test collection of tests needed.

## Remarks


For backwards compatibility with HCK 2.0, returns tests that are tagged with **Certification** content level. To get tests for other content levels, use the overloaded method that takes a collection of *ContentLevelType*.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






