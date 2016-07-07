---
author: joshbax-msft
title: OSPlatform.MinorVersion Property
description: OSPlatform.MinorVersion Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 82a05c9b-ba3e-41bb-8c77-19a8896f3e2a
---

# OSPlatform.MinorVersion Property


This property represents the minor version of this platform.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As OSPlatform``Dim value As Integer``value = instance.MinorVersion``instance.MinorVersion= value`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property MinorVersion As Integer`

**C#**`[DataMemberAttribute]``public int MinorVersion { get; protected set; }`

## Return Value


Returns **Int32**.

## Remarks


See OSVERSIONINFOEX.dwMinorVersion in Win32 documentation.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






