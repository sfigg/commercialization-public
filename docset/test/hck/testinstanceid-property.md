---
author: joshbax-msft
title: Test.InstanceId Property
description: Test.InstanceId Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a5fb805a-2587-452a-9594-a2f41b5c4672
---

# Test.InstanceId Property


This property represents the instance ID for this certification test. A job may be needed for every test target in a target family. This instance ID allows the caller to know which unique test this is, even if many tests use the same job.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Test``Dim value As String``value = instance.InstanceId`

## Syntax


**Visual Basic**`Public MustOverride ReadOnly Property InstanceId As String`

**C#**`public abstract string InstanceId { get; }`

## Property Value


Returns **String**.

## Remarks


The instance ID is unique across all instances of tests that might be applied to many targets. This Id distinguishes between targets that use the same test.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






