---
author: joshbax-msft
title: Project Class
description: Project Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 27b3e1a7-ba2c-4fc9-82a2-686bb8d97149
---

# Project Class


This class represents a **Project** object which is created in the database for each project the user initiates. It is effectively handles a set of product instances that users will be running logo tests for. In addition to that, there is metadata stored along with each **Project** object.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Project`

## Syntax


**Visual Basic**`<DataContractAttribute> _``Public MustInherit Class Project`           `Implements IRunTests`

**C#**`[DataContractAttribute]``public abstract class Project : IRunTests`

## Inheritance Hierarchy


**System.Object**      **Microsoft.Windows.Kits.Hardware.ObjectModel.NotificationBase**           **Microsoft.Windows.Kits.Hardware.ObjectModel.Project**

## Remarks


Projects are the highest level objects in the hierarchy of data and objects used to represent certification. There are a number of layers of objects between the project and the test results and logs.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






