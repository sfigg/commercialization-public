---
author: joshbax-msft
title: PackageWriter.Save Method (String)
description: PackageWriter.Save Method (String)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 424fba32-658c-4494-b4ac-db8b45fc1bd6
---

# PackageWriter.Save Method (String)


This method saves a submission package to disk.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageWriter``Dim packageFile As String``instance.Save(packageFile)`

## Syntax


**Visual Basic**`Public Sub Save ( _`           `packageFile As String _``) `

**C#**`public void Save (`           `string packageFile``)`

## Parameters


*packageFile*      The file name (including the path) specifying where to write the package.

## Remarks


This method throws an exception when:

-   The *packageFile* parameter is **null**.

-   The *packageFile* parameter is invalid.

-   The **PackageWriter** object has already been disposed.

-   There is an IO exception when the package is being closed.

-   The targets that are mapped to a driver are not found in the projects.

-   The package does not have at least one product instance.

-   There is a problem creating a directory and copying the package to that directory.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






