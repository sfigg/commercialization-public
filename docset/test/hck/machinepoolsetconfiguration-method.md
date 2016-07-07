---
author: joshbax-msft
title: MachinePool.SetConfiguration Method
description: MachinePool.SetConfiguration Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ab44c3ad-052f-4a41-8435-f289271d6fb1
---

# MachinePool.SetConfiguration Method


Sets the configuration for all machines in the machine pool. It also sets the configuration for all machines in the child pools.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Syntax


**Visual Basic**`Public MustOverride Sub SetConfiguration(ByVal configurationSetting As MachinePoolConfigurationSetting)`           **C#**`public abstract void SetConfiguration(MachinePoolConfigurationSetting configurationSetting);`

## Parameters


*configurationsetting*           Configuration setting

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






