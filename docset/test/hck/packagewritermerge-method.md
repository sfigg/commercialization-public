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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20PackageWriter.Merge%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




