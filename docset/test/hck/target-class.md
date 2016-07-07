---
author: joshbax-msft
title: Target Class
description: Target Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4f83368d-26a9-4b97-b6af-8ae7d676a1c6
---

# Target Class


This class represents a single test target that can be detected on a system (a piece of hardware, a driver, and so on).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Target`

## Syntax


**Visual Basic**`<DataContractAttribute> _``Public MustInherit Class Target`           `Implements ITargetInformation`

**C#**`[DataContractAttribute]``public abstract class Target : ITargetInformation`

## Remarks


A Target contains information that is in XML format. Features have an XPATH query that can return specific nodes from the XML data. All Feature objects in the system are detected for the Target. Since a Feature object is associated with Requirement objects which are associated with Test objects, you can generate a test list.

## Inheritance Hierarchy


**System.Object**      **Microsoft.Windows.Kits.Hardware.ObjectModel.Target**           **Microsoft.Windows.Kits.Hardware.ObjectModel.Submission.PackageTarget**

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






