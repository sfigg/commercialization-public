---
author: joshbax-msft
title: ProjectFilterResultsDictionary Class
description: ProjectFilterResultsDictionary Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f3609284-4b82-460e-9a6c-24607de6eb68
---

# ProjectFilterResultsDictionary Class


This class represents a collection of filter results for the test results in a project.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectFilterResultsDictionary`

## Syntax


**Visual Basic**`<SerializableAttribute> _``Public Class ProjectFilterResultsDictionaryPublic Class ProjectFilterResultsDictionary`           `Inherits Dictionary(Of TestResult, ReadOnlyCollection(Of IFilterResult))`

**C#**`[SerializableAttribute]``public class ProjectFilterResultsDictionary : Dictionary<TestResult,ReadOnlyCollection<IFilterResult>>`

## Inheritance Hierarchy


**System.Object**      **System.Collections.Generic.Dictionary**           **Microsoft.Windows.Kits.Hardware.ObjectModel.ProjectFilterResultsDictionary**

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






