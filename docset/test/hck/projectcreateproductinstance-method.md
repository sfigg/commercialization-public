---
author: joshbax-msft
title: Project.CreateProductInstance Method
description: Project.CreateProductInstance Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 833d571c-fadf-45b4-8b7b-d4c8c37f236a
---

# Project.CreateProductInstance Method


This method creates a child **ProductInstance** object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project``Dim productInstanceName As String``Dim pool As MachinePool``Dim platform As OSPlatform``Dim returnValue As ProductInstance``returnValue = instance.CreateProductInstance(productInstanceName, pool, platform)`

## Syntax


**Visual Basic**`Public MustOverride Function CreateProductInstance ( _`           `productInstanceName As String, _`           `pool As MachinePool, _`           `platform As OSPlatform _``) As ProductInstance `

**C#**`public abstract ProductInstance CreateProductInstance (`           `string productInstanceName,`           `MachinePool pool,`           `OSPlatform platform``)`

## Parameters


*productInstanceName*      The name of the **ProductInstance** object.

*pool*      The machine pool to use for this **ProductInstance**.

*platform*      The operating system platform (operating system architecture plus the product SKU) to use for this platform instance.

## Return Value


Returns a new **ProductInstance** object.

## Remarks


An error occurs if *productInstanceName* is **null** or empty.

This method is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






