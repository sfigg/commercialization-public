---
author: joshbax-msft
title: Machine Class
description: Machine Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6f4d126c-e0ce-40a0-8063-e7819d969976
---

# Machine Class


This class represents an abstract resource that a logo test can be scheduled to run against. Each machine (test computer) belongs to one and only one machine pool.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine`

## Syntax


**Visual Basic**`<DataContractAttribute> _``Public MustInherit Class Machine`

**C#**`[DataContractAttribute]``public abstract class Machine`

## Inheritance Hierarchy


**System.Object**      **Microsoft.Windows.Kits.Hardware.ObjectModel.Machine**

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


When the client software is originally installed on a machine, a Machine object is created and automatically appears in the default pool. Machine objects that are newly created are in a ‘Not Ready’ state, they need to be set to ‘Ready’ state before tests can be scheduled.

Any Machine in the reserved &lt;seealso cref="T:Microsoft.Windows.Kits.Hardware.ObjectModel.MachinePool"/&gt; cannot run tests. These machines will need to be moved into a MachinePool that is not a reserved pool.

 

 






