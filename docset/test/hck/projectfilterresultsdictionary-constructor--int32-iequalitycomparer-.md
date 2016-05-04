---
author: joshbax-msft
title: ProjectFilterResultsDictionary Constructor (Int32, IEqualityComparer)
description: ProjectFilterResultsDictionary Constructor (Int32, IEqualityComparer)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e54f792d-4a06-4401-a729-fb263b718dfd
---

# ProjectFilterResultsDictionary Constructor (Int32, IEqualityComparer)


This constructor initializes a new instance of the **ProjectFilterResultsDictionary** class.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim capacity As Integer``Dim comparer As IEqualityComparer(Of TestResult)`

`Dim instance As New ProjectFilterResultsDictionary(capacity, comparer)`

## Syntax


**Visual Basic**`Public Sub New ( _`           `capacity As Integer, _`           `comparer As IEqualityComparer(Of TestResult) _``)`

**C#**`public ProjectFilterResultsDictionary (`           `int capacity,`           `IEqualityComparer<TestResult> comparer``)`

## Parameters


*capacity*     The initial number of elements that the dictionary can contain.

*comparer*     The **System.Collections.Generic.IEqualityComparer** implementation to use when comparing keys, or **null** to use the default EqualityComparer for the type of the key.

 

 






