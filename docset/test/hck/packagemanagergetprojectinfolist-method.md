---
author: joshbax-msft
title: PackageManager.GetProjectInfoList Method
description: PackageManager.GetProjectInfoList Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 298eefce-334e-4c4e-bf7d-4b04f4d1040d
---

# PackageManager.GetProjectInfoList Method


This method retrieves a list containing one [ProjectInfo Class](projectinfo-class.md) object per Project found in the submission package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim returnValue As ReadOnlyCollection(Of ProjectInfo)``returnValue = instance.GetProjectInfoList`

## Syntax


**Visual Basic**`Public Overrides Function GetProjectInfoList As ReadOnlyCollection(Of ProjectInfo)`

**C#**`public override ReadOnlyCollection<ProjectInfo> GetProjectInfoList ()`

## Return Value


Returns **ReadOnlyCollection**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






