---
author: joshbax-msft
title: OSPlatform.Code Property
description: OSPlatform.Code Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bb5c32b4-32e9-4b23-8cfe-724bee650ff8
---

# OSPlatform.Code Property


This property represents the Portal ID for this platform.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As OSPlatform``Dim value As String``value = instance.Code``instance.Code = value`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property Code As String`

**C#**`[DataMemberAttribute]``public string Code { get; protected set; }`

## Return Value


Returns **String**.

## Remarks


Code is an identifier used by submission processing.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






