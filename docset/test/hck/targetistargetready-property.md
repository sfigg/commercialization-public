---
author: joshbax-msft
title: Target.IsTargetReady Property
description: Target.IsTargetReady Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b42686d1-0fb1-4c9a-927b-a779308972f1
---

# Target.IsTargetReady Property


This property represents the value indicating whether the test target is currently ready to run tests (specifically, the test computer is in the “ready” state).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target``Dim value As Boolean``value = instance.IsTargetReady`

## Syntax


**Visual Basic**`<IgnoreDataMemberAttribute> _``Public MustOverride ReadOnly Property IsTargetReady As Boolean`

**C#**`[IgnoreDataMemberAttribute]``public abstract bool IsTargetReady { get; }`

## Return Value


Returns **Boolean**.

## Remarks


Readiness is determined by the following checks.

-   The machine associated with the target is in ready state.

-   The machine associated with the target has a recent heartbeat (registered with the controller).

-   The machine associated with the target is in the correct machine pool (pool specified with the product instance).

If the returned value is false, Tests for this target cannot be scheduled.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






