---
author: joshbax-msft
title: Requirement.HasTheName Method
description: Requirement.HasTheName Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 54041b5f-1bb3-40f2-9361-36bc0f4c0a4d
---

# Requirement.HasTheName Method


This method checks if this requirement has a given name.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Requirement``Dim name As String``Dim returnValue As Boolean``returnValue = instance.HasTheName(name)`

## Syntax


**Visual Basic**`Public Function HasTheName ( _`           `name As String _``) As Boolean`

**C#**`public bool HasTheName (`           `string name``)`

## Parameters


*name*      Name to check this requirement for.

## Return Value


**true** if the specified name matches this requirement’s name; otherwise, **false**.

## Remarks


The string comparison is not case sensitive.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






