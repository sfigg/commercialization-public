---
author: joshbax-msft
title: Project.GetProperties Method
description: Project.GetProperties Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3b567c86-e98c-4ab4-9fc5-0ff4fb824f2b
---

# Project.GetProperties Method


This method retrieves a **Dictionary** object with all of the project properties

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim returnValue As Dictionary(Of String, String)``returnValue = instance.GetProperties`

## Syntax


**Visual Basic**`Public MustOverride Function GetProperties As Dictionary(Of String, String)`

**C#**`public abstract Dictionary<string,string> GetProperties ()`

## Return Value


Returns a **Dictionary** object of project properties.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






