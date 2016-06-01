---
author: joshbax-msft
title: Feature Class
description: Feature Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6692edee-462c-4b6e-8d9a-43d3cd076cdf
---

# Feature Class


This class represents a feature that a device supports. For example, USB support is an example of a feature.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Feature`

## Syntax


**Visual Basic**`<SerializableAttribute> _``Public MustInherit Class Feature`

**C#**`[SerializableAttribute]``public abstract class Feature`

## Inheritance Hierarchy


**System.Object**    **Microsoft.Windows.Kits.Hardware.ObjectModel.Feature**         

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


Features are related to Product Types and Requirements. Features can be mapped to different Product Types. Requirements can be mapped to only one Feature.

 

 






