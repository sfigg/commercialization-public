---
author: joshbax-msft
title: PackageManager Constructor (String)
description: PackageManager Constructor (String)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 506a1e46-fab4-4f48-945e-6f1660575c18
---

# PackageManager Constructor (String)


This constructor initializes a new instance of the **PackageManager** class.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim packagePath As String``Dim instance As New PackageManager(packagePath)`

## Syntax


**Visual Basic**`Public Sub New ( _`           `packagePath As String _``)`

**C#**`public PackageException (`           `string packagePath``)`

## Parameters


*packagePath*      The path to the package file that this instance manages.

## Remarks


An exception is thrown if *packagePath* is null or invalid, or if there is more than one relationship.

 

 






