---
author: joshbax-msft
title: PackageWriter.Save Method (String, X509Certificate)
description: PackageWriter.Save Method (String, X509Certificate)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7d27c385-8cad-4dfe-9f6c-eb54826ef942
---

# PackageWriter.Save Method (String, X509Certificate)


This method saves a package and digitally signs it using an X509-compliant certificate. This method can be used for both submission packages and update submission packages.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageWriter``Dim packageFile As String``Dim certificate As X509Certificate``instance.Save(packageFile, certificate)`

## Syntax


**Visual Basic**`Public Sub Save ( _`           `packageFile As String, _`           `certificate As X509Certificate``) `

**C#**`public void Save (`           `string packageFile,`           `X509Certificate certificate``)`

## Parameters


*packageFile*      The full file name specifying where to write the signed package.

*certificate*      The certificate to use for signing the package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






