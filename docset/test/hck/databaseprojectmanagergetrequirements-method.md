---
author: joshbax-msft
title: DatabaseProjectManager.GetRequirements Method
description: DatabaseProjectManager.GetRequirements Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d5973794-c62c-420b-8516-b9a52291f166
---

# DatabaseProjectManager.GetRequirements Method


This method retrieves the list of requirements in the Windows HCK.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim returnValue As ReadOnlyCollection(Of Requirement)``returnValue = instance.GetRequirements`

## Syntax


**Visual Basic**`Public Overrides Function GetRequirements As ReadOnlyCollection(Of Requirement)`

**C#**`public override ReadOnlyCollection<Requirement> GetRequirements ()`

## Return Value


Returns **ReadOnlyCollection**, which is a list of known requirements.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






