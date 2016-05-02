---
author: joshbax-msft
title: Machine.GetTestTargets Method (TargetType)
description: Machine.GetTestTargets Method (TargetType)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: def113a7-1d08-4b1e-88b9-ada336a575cf
---

# Machine.GetTestTargets Method (TargetType)


Retrieves a read-only list of test targets associated with a machine (test computer).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim type As TargetType``Dim returnValue As ReadOnlyCollection(Of TargetData)``returnValue = instance.GetTestTargets(type)`

## Syntax


**Visual Basic**`Public MustOverride Function GetTestTargets ( _`           `type As TargetType _``) As ReadOnlyCollection(Of TargetData)`

**C#**`public abstract ReadOnlyCollection<TargetData> GetTestTargets (`           `TargetType type``)`

## Parameters


*type*      The type of test target to search for.

## Return Value


Returns **ReadOnlyCollection**, which is a collection to test targets.

## Remarks


All test targets associated with this machine and match the type provided are returned; the collection does not filter out targets based on any loaded projects.

In order to identify targets as a part of a loaded project, look at the ProductInstance.Targets property from the Project object.

This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Machine.GetTestTargets%20Method%20%28TargetType%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




