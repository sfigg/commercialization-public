---
author: joshbax-msft
title: PackageManager.ExtractDriverPackages Method
description: PackageManager.ExtractDriverPackages Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9d021a53-9a9d-4493-8793-aacd69b1fce5
---

# PackageManager.ExtractDriverPackages Method


This method extracts all the driver packages linked with a submission package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim path As String``instance.ExtractDriverPackages(path)`

## Syntax


**Visual Basic**`Public Sub ExtractDriverPackages ( _`           `path As String, _``) `

**C#**`public void ExtractDriverPackages (`           `string path``)`

## Parameters


*path*      The path under which the driver packages are to be extracted.

## Remarks


An exception is thrown if *path* is **null** or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






