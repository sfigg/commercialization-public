---
author: joshbax-msft
title: MachinePool Class
description: MachinePool Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 78e644a1-82d1-4198-a7fc-776b5a84f5a8
---

# MachinePool Class


This class represents an abstract pool of machines that are grouped together based on a user intention. It exposes functionality that enables machines to be regrouped among different machine pools and manage the resource pool hierarchy.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachinePool`

## Syntax


**Visual Basic**`Public MustInherit Class MachinePool`

**C#**`public abstract class MachinePool`

## Inheritance Hierarchy


**System.Object**      **Microsoft.Windows.Kits.Hardware.ObjectModel.MachinePool**

## Remarks


There are certain reserved or special Machine Pools that have specific purposes:

1.  Default Pool - any machine that has the Client side software installed initially appears in this pool. Tests cannot be executed on any machine in this pool.

2.  $ (Root Pool) - is the root machine pool. The root pool can be accessed through the ProjectManager object. Machines cannot be added or moved to this pool.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






