---
author: joshbax-msft
title: OSPlatform.MajorVersion Property
description: OSPlatform.MajorVersion Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3485ecfc-4cd4-4dcc-a5e7-e24297315364
---

# OSPlatform.MajorVersion Property


This property represents the major version of this platform.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As OSPlatform``Dim value As Integer``value = instance.MajorVersion``instance.MajorVersion = value`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property MajorVersion As Integer`

**C#**`[DataMemberAttribute]``public int MajorVersion { get; protected set; }`

## Return Value


Returns **Int32**.

## Remarks


See OSVERSIONINFOEX.dwMajorVersion in Win32 documentation.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






