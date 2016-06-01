---
author: joshbax-msft
title: PackageManager.GetProjectNames Method
description: PackageManager.GetProjectNames Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f75116bf-8a13-4877-8162-a113b7237021
---

# PackageManager.GetProjectNames Method


This method retrieves a list of names for projects stored in this package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim returnValue As ReadOnlyCollection(Of String)``returnValue = instance.GetProjectNames`

## Syntax


**Visual Basic**`Public Overrides Function GetProjectNames As ReadOnlyCollection(Of String)`

**C#**`public override ReadOnlyCollection<string> GetProjectNames ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






