---
author: joshbax-msft
title: Project.QueueTest Method ()
description: Project.QueueTest Method ()
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 82969a05-fb16-4e82-92a0-c853f230475c
---

# Project.QueueTest Method ()


This method schedules a test.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim returnValue As IList(Of TestResult)``returnValue = instance.QueueTest`

## Syntax


**Visual Basic**`Public Overridable Function QueueTest As IList(Of TestResult)`

**C#**`public virtual IList<TestResult> QueueTest ()`

## Return Value


Returns **IList**, which is a list of results for the tests that were scheduled.

## Remarks


This method is not supported when the project is connected to a package

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






