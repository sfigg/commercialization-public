---
author: joshbax-msft
title: ITargetInformation.XmlData Property
description: ITargetInformation.XmlData Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 36b4b216-dba5-4ef4-8111-e55dd63d7d18
---

# ITargetInformation.XmlData Property


This property gets the target information in the raw XML format.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ITargetInformation``Dim value As String``value = instance.XmlData`

## Syntax


**Visual Basic**`ReadOnly Property XmlData As String`           

**C#**`string XmlData { get; }`

## Return Value


Returns **String**.

## Remarks


The XML data is collected using sysparse and is collected on the client machine. The data is gathered from many sources by the Client software and returned to the controller (stored in XML format).

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






