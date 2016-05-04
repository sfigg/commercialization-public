---
author: joshbax-msft
title: DatabaseProjectManager.GetFeatures Method
description: DatabaseProjectManager.GetFeatures Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 777832c5-168a-45aa-ac2a-cb57ef28033b
---

# DatabaseProjectManager.GetFeatures Method


This method returns all of the features stored in the Windows HCK.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim returnValue As ReadOnlyCollection(Of Feature)``returnValue = instance.GetFeatures`

## Syntax


**Visual Basic**`Public Overrides Function GetFeatures As ReadOnlyCollection(Of Feature)`

**C#**`public override ReadOnlyCollection<Feature> GetFeatures ()`

## Return Value


Returns **ReadOnlyCollection**, which is a list of known features.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






