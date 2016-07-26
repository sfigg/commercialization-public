---
author: joshbax-msft
title: RequirementDescriptionData.Description Property
description: RequirementDescriptionData.Description Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3d4c00c1-a620-4a2f-be54-18c7ced0454a
---

# RequirementDescriptionData.Description Property


This property represents the description text for this requirement.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As RequirementDescriptionData``Dim value As String``value = instance.Description``instance.Description = value`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property Description As String`

**C#**`[DataMemberAttribute]``public string Description { get; protected set; }`

## Return Value


Returns **String**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


The data can be in HTML format.

 

 






