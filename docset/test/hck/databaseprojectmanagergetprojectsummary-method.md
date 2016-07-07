---
author: joshbax-msft
title: DatabaseProjectManager.GetProjectSummary Method
description: DatabaseProjectManager.GetProjectSummary Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 36856e34-8b8a-4b6b-99a1-a79357d50ba7
---

# DatabaseProjectManager.GetProjectSummary Method


This method retrieves the list of requirements in the Windows HCK.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim instance As DatabaseProjectManager``Dim returnValue As ReadOnlyCollection(Of Requirement)``returnValue = instance.GetRequirements`

## Syntax


**Visual Basic**`Public Overrides Function GetRequirements As ReadOnlyCollection(Of Requirement)`

**C#**`public override ReadOnlyCollection<Requirement> GetRequirements ()`

## Return Value


Returns **ReadOnlyCollection**, which is a list a of known requirements.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






