---
author: joshbax-msft
title: PackageManager.ExtractSupplementalFiles Method
description: PackageManager.ExtractSupplementalFiles Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6ef8d106-9635-4cbb-804a-7b0f321a9d41
---

# PackageManager.ExtractSupplementalFiles Method


This method extracts all the "supplemental files" linked with a submission package.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim path As String``instance.ExtractSupplementalFiles(path)`

## Syntax


**Visual Basic**`Public Sub ExtractSupplementalFiles ( _`           `path As String _``) `

**C#**`public void ExtractSupplementalFiles (`           `string path``)`

## Parameters


*path*      The path under which the supplemental files are to be extracted.

## Remarks


An exception is thrown if *path* is **null** or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






