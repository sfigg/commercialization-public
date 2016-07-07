---
author: joshbax-msft
title: RequirementDescriptionData.Scenarios Property
description: RequirementDescriptionData.Scenarios Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3624b014-2ee6-43f0-910e-2acfbcd26f40
---

# RequirementDescriptionData.Scenarios Property


This property represents the scenarios text for this requirement.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As RequirementDescriptionData``Dim value As String``value = instance.Scenarios``instance.Scenarios = value`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property Scenarios As String`

**C#**`[DataMemberAttribute]``public string Scenarios { get; protected set; }`

## Return Value


Returns **String**.

## Remarks


The data can be in HTML format.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






