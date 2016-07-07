---
author: joshbax-msft
title: ProductInstanceException Class
description: ProductInstanceException Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bd8a0402-4b94-4566-8c09-2e1516f42278
---

# ProductInstanceException Class


This exception class is defined to handle target-specific errors. Every time a non-expected occurrence happens, a **ProductInstanceException** is thrown to add more details related to the target.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstanceException`

## Syntax


**Visual Basic**`<SerializableAttribute> _``Public Class ProductInstanceException`           `Inherits ProjectManagerException`

**C#**`[SerializableAttribute]``public class ProductInstanceException : ProjectManagerException`

## Inheritance Hierarchy


**System.Object**      **System.Exception**           **Microsoft.Windows.Kits.Hardware.ObjectModel.ProjectManagerException**                     **Microsoft.Windows.Kits.Hardware.ObjectModel.ProductInstanceException**

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






