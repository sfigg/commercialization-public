---
author: joshbax-msft
title: Feature.Description Property
description: Feature.Description Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 792ce08e-0314-49e1-9913-cbf338de81ef
---

# Feature.Description Property


This property represents the description of a **Feature**.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Feature``Dim value As String``value = instance.Description`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property Description As String`

**C#**`[DataMemberAttribute]``public string Description { get; }`

## Property Value


Returns **String**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


The data can be in HTML format.

 

 






