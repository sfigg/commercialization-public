---
author: joshbax-msft
title: PackageWriter Constructor (Project)
description: PackageWriter Constructor (Project)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 563fd1fe-94c9-400e-b9b8-ab9b6706d4a4
---

# PackageWriter Constructor (Project)


This constructor initializes a new instance of the **PackageWriter** class. This constructor is used for creating a new submission package. This constructor cannot be used to create an Update Package (for DUA).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim packagePath As Project``Dim instance As New PackageWriter(project)`

## Syntax


**Visual Basic**`Public Sub New ( _`           `project As Project _``)`

**C#**`public PackageWriter (`           `Project project``)`

## Parameters


*project*      The name of the project for which a package object is created.

 

 






