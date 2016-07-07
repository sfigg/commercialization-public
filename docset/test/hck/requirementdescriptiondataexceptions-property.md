---
author: joshbax-msft
title: RequirementDescriptionData.Exceptions Property
description: RequirementDescriptionData.Exceptions Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f1218608-9bf5-4a87-a936-6f3bf1d3ff0f
---

# RequirementDescriptionData.Exceptions Property


This property represents the exceptions text for this requirement.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As RequirementDescriptionData``Dim value As String``value = instance.Exceptions``instance.Exceptions = value`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property Exceptions As String`

**C#**`[DataMemberAttribute]``public string Exceptions { get; protected set; }`

## Return Value


Returns **String**.

## Remarks


The data can be in HTML format.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






