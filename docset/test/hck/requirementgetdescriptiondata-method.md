---
author: joshbax-msft
title: Requirement.GetDescriptionData Method
description: Requirement.GetDescriptionData Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2f710af2-a064-437c-9a80-ff72cefbaf0d
---

# Requirement.GetDescriptionData Method


This method returns a description of the requirementTableEntry given the specified language.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Requirement``Dim language As String``Dim returnValue As RequirementDescriptionData``returnValue = instance.GetDescriptionData(language)`

## Syntax


**Visual Basic**`Public MustOverride Function GetDescriptionData ( _`           `language As String _``) As RequirementDescriptionData`

**C#**`public abstract RequirementDescriptionData GetDescriptionData (`           `string language``)`

## Parameters


*language*      The language for the description data requested.

## Return Value


Returns [RequirementDescriptionData Class](requirementdescriptiondata-class.md), which is a DescriptionData class in the supplied language.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






