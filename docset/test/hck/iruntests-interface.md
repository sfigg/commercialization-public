---
author: joshbax-msft
title: IRunTests Interface
description: IRunTests Interface
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6357c753-63f0-424c-b591-358dd4c08753
---

# IRunTests Interface


This class provides an interface that represents the contract that each schedulable object must implement.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IRunTests`

## Syntax


**Visual Basic**`Public Interface IRunTests`

**C#**`public interface IRunTests`

## Remarks


This is mainly used to allow scheduling of tests from various objects. Currently the following objects implement this interface:

-   Project

-   ProductInstance

-   TargetFamily

-   Test

 

 






