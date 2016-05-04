---
author: joshbax-msft
title: ProjectFilterResultsDictionary Constructor (IEqualityComparer)
description: ProjectFilterResultsDictionary Constructor (IEqualityComparer)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e6de341f-3540-487a-85b7-59792eb2beaa
---

# ProjectFilterResultsDictionary Constructor (IEqualityComparer)


This constructor initializes a new instance of the **ProjectFilterResultsDictionary** class.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim comparer As IEqualityComparer(Of TestResult)``Dim instance As New ProjectFilterResultsDictionary(comparer)`

## Syntax


**Visual Basic**`Public Sub New ( _`           `comparer As IEqualityComparer(Of TestResult) _``)`

**C#**`public ProjectFilterResultsDictionary (`           `IEqualityComparer<TestResult> comparer``)`

## Parameters


*comparer*      The **System.Collections.Generic.IEqualityComparer** implementation to use when comparing keys, or **null** to use the default EqualityComparer for the type of the key.

 

 






