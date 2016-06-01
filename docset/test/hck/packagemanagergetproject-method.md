---
author: joshbax-msft
title: PackageManager.GetProject Method
description: PackageManager.GetProject Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74dcaa2c-1495-41a4-bfdc-b98cf6aa7a9b
---

# PackageManager.GetProject Method


This method retrieves a Submission from the package that matches projectName.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim projectName As String``Dim returnValue As Project``returnValue = instance.GetProject(projectName)`

## Syntax


**Visual Basic**`Public Overrides Function GetProject ( _`           `projectName As String _``) As Project`

**C#**`public override Project GetProject (`           `string projectName``) `

## Parameters


*projectName*      The name to uniquely identify the submission.

## Return Value


Returns [Project Class](project-class.md).

## Remarks


An exception occurs if projectName is **null** or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






