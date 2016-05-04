---
author: joshbax-msft
title: RequirementDescriptionData.BusinessJustification Property
description: RequirementDescriptionData.BusinessJustification Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f63059f2-d9d2-4f2b-9afb-9bb3cae86bf0
---

# RequirementDescriptionData.BusinessJustification Property


This property represents the Business justification text for this requirement.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As RequirementDescriptionData``Dim value As String``value = instance.BusinessJustification``instance.BusinessJustification = value`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property BusinessJustification As String`

**C#**`[DataMemberAttribute]``public string BusinessJustification { get; protected set; }`

## Property Value


Returns **String**.

## Remarks


The data can be in HTML format.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






