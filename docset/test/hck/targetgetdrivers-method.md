---
author: joshbax-msft
title: Target.GetDrivers Method
description: Target.GetDrivers Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cfe883ca-e2aa-4ea2-86ea-e24ae7de1dc8
---

# Target.GetDrivers Method


This method retrieves features associated with a test target. This method must be overridden by the child classes. Its purpose is to provide a method where each child class has its own detection method for the features.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target``Dim returnValue As ReadOnlyCollection(Of Feature)``returnValue = instance.GetFeatures`

## Syntax


**Visual Basic**`Public Overridable Function GetFeatures As ReadOnlyCollection(Of Feature)`

**C#**`public virtual ReadOnlyCollection<Feature> GetFeatures ()`

## Return Value


Returns **ReadOnlyCollection**, which is a list of features associated with the test target.

## Remarks


This function will return drivers only when connected to a package. If not connected to a package, an empty list is returned.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






