---
author: joshbax-msft
title: Target.RemoveFeature Method (String)
description: Target.RemoveFeature Method (String)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 08efec71-6df4-4f87-85c3-fa1ad85bd269
---

# Target.RemoveFeature Method (String)


This method removes a manually added RMS feature from a test target.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target``Dim featureName As Feature``instance.RemoveFeature(featureName)`

## Syntax


**Visual Basic**`Public MustOverride Sub RemoveFeature ( _`           `featureName As String _``)`

**C#**`Public abstract void RemoveFeature (`           `string featureName``)`

## Parameters


*featureName*      The name of the feature to remove.

## Remarks


An exception is thrown when the feature to remove was not manually added, or is not present.

Only features that are added by using the AddFeature method can be deleted.

This method is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






