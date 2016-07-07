---
author: joshbax-msft
title: ProductInstance.CreateTarget Method
description: ProductInstance.CreateTarget Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 76fb13f7-76d4-4f66-a9db-5619d80a7c45
---

# ProductInstance.CreateTarget Method


This method creates a target from **TargetData**, and adds it to this product instance.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim data As TargetData``Dim returnValue As Target``returnValue = instance.CreateTarget(data)`

## Syntax


**Visual Basic**`Public Function CreateTarget ( _`           `data As TargetData _``) As Target`

**C#**`public Target CreateTarget (`           `TargetData data``)`

## Parameters


*data*      The **TargetData** to use to create the target.

## Return Value


The new **Target**.

## Remarks


This method attempts to create a **TargetFamily** object for this target data. If one already exists, and matches, this target data is added to it.

If *data* is **null** or if adding a target would result in a mixture of system/non-system targets, an exception is thrown.

**Caution**  
This method allows a test target to be created and added multiple times to a **ProductInstance**. Each newly created test target represents the same test target on the same test computer. However, each test target is created under its own target family, which includes a distinct list of tests that you must run.

 

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






