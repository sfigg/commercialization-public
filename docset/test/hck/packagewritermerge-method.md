---
author: joshbax-msft
title: PackageWriter.Merge Method
description: PackageWriter.Merge Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cf307433-b86f-498e-835d-d8c091340f99
---

# PackageWriter.Merge Method


This method merges a project into an existing package. This method can only be used for existing submission packages.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageWriter``project As Project``Dim errors As StringCollection``Dim returnValue As Boolean``returnValue = instance.Merge(project, errors)`

## Syntax


**Visual Basic**`Public Function Merge ( _`           `project As Project, _`           `<OutAttribute> ByRef errors As StringCollection _``) As Boolean`

**C#**`public bool Merge (`           `Project project,`           `out StringCollection errors``)`

## Parameters


*project*      The project to merge into the submission package being created.

*errors*      Reference to a string collection that returns error messages for merging a project.

## Return Value


**true** if the project was successfully merged into the package; otherwise, **false**.

## Remarks


An exception is thrown when:

-   The **PackageWriter** object has already been disposed.

-   The *project* parameter is **null**.

-   The connection type of the project is not a submission package.

-   There are problems with merging the project or if the **PackageWriter** object is for a DUA package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






