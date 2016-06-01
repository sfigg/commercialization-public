---
author: joshbax-msft
title: OSPlatform.Architecture Property
description: OSPlatform.Architecture Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c76add31-d60a-4d11-8b28-8a9652025080
---

# OSPlatform.Architecture Property


This property represents the CPU architecture (for example, x86, x64, or ARM).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As OSPlatform``Dim value As CpuArchitecture``value = instance.Architecture``instance.Architecture = value`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property Architecture As CpuArchitecture`

**C#**`[DataMemberAttribute]``public CpuArchitecture Architecture { get; protected set; }`

## Return Value


Returns **CpuArchitecture**.

## Remarks


See SYSTEM\_INFO.wProcessorArchitecture in Win32 documentation.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






