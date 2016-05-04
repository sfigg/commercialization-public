---
author: joshbax-msft
title: ProductInstance.QueueTest Method ()
description: ProductInstance.QueueTest Method ()
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9f614979-3868-493f-998c-5c7c0adfc945
---

# ProductInstance.QueueTest Method ()


This method schedules this object to be run.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim returnValue As IList(Of TestResult)``returnValue = instance.QueueTest`

## Syntax


**Visual Basic**`Public Overridable Function QueueTest As IList(Of TestResult)`

**C#**`public virtual IList<TestResult> QueueTest ()`

## Return Value


Returns **IList**, which is a list of results for the jobs that were scheduled.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






