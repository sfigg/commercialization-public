---
author: joshbax-msft
title: MachineException Class
description: MachineException Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0afcc209-943d-4e83-9f16-f3644ee9d062
---

# MachineException Class


This exception class is defined to handle machine-specific errors. Every time a non-expected occurrence happens, a MachineException is thrown to add more details related to the machine.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineException`

## Syntax


**Visual Basic**`<SerializableAttribute> _``Public Class MachineException`           `Inherits ProjectManagerException`

**C#**`[SerializableAttribute]``public class MachineException : ProjectManagerException`

## Inheritance Hierarchy


**System.Object**      **Microsoft.Windows.Kits.Hardware.ObjectModel.ProjectManagerException**           **Microsoft.Windows.Kits.Hardware.ObjectModel.MachineException**

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






