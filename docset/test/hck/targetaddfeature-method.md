---
author: joshbax-msft
title: Target.AddFeature Method
description: Target.AddFeature Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74deb9d9-0be4-4fbb-9d16-4c9ea1cee6e0
---

# Target.AddFeature Method


This method manually adds a RMS Feature to a test target.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target``Dim feature As Feature``instance.AddFeature(feature)`

## Syntax


**Visual Basic**`Public MustOverride Sub AddFeature ( _`           `feature As Feature _``) `

**C#**`public abstract void AddFeature (`           `Feature feature``)`

## Parameters


*feature*      The feature to add to the test target.

## Remarks


Features that are added by using this method are not automatically detected. Using this method introduces all tests for the target that are associated with the feature. Those tests need to run successfully. As the feature was not automatically detected, the added tests might fail.

This method is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






