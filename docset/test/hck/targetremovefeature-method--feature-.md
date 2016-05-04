---
author: joshbax-msft
title: Target.RemoveFeature Method (Feature)
description: Target.RemoveFeature Method (Feature)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 532d79cd-bc14-4958-acf7-4fe4bdcaa41f
---

# Target.RemoveFeature Method (Feature)


**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target``Dim feature As Feature``instance.RemoveFeature(feature)`

## Syntax


**Visual Basic**`Public MustOverride Sub RemoveFeature ( _`           `feature As Feature _``)`

**C#**`Public abstract void RemoveFeature (`           `Feature feature``)`

## Parameters


*feature*      The feature to remove.

## Remarks


An exception is thrown when the feature to remove was not manually added, or is not present.

Only features that are added by using the AddFeature method can be deleted.

This method is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






