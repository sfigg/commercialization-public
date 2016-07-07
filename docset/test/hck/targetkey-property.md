---
author: joshbax-msft
title: Target.Key Property
description: Target.Key Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7fe8e410-5447-4ace-ac21-f8d6e1ca5c5c
---

# Target.Key Property


This property represents the string that uniquely identifies this test target. In case of a device, for example, this would be the hardware ID.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target``Dim value As String``value = instance.Key`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property Key As String`

**C#**`[DataMemberAttribute]``public string Key { get; }`

## Return Value


Returns **String**.

## Remarks


In the case of a device, for example, the key is the hardware id.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






