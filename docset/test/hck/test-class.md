---
author: joshbax-msft
title: Test Class
description: Test Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e7d7e776-bf5a-46dc-8e9d-5cf85e95cbc4
---

# Test Class


This abstract class represents a certification test. It defines the common behavior and properties every certification test is expected to expose.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Test`

## Syntax


**Visual Basic**`<DataContractAttribute> _``Public MustInherit Class Test`           `Implements IRunTests`

**C#**`[DataContractAttribute]``public abstract class Test : IRunTests`

## Remarks


Some tests require additional information to run. These tests are called parameters. You can set default values for parameters as well as specific values for individual runs. APIs to set these parameters are also available.

## Inheritance Hierarchy


**System.Object**      **Microsoft.Windows.Kits.Hardware.ObjectModel.Test**

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






