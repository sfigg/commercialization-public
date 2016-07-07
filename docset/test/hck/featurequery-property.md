---
author: joshbax-msft
title: Feature.Query Property
description: Feature.Query Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 55677cee-3dc6-4e50-9f88-9d3c30ffdee6
---

# Feature.Query Property


Represents the query used to determine the contents of a **Feature**.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Feature``Dim value As String``value = instance.Query`

## Syntax


**Visual Basic**`<DataMemberAttribute> _``Public Property Query As String`

**C#**`[DataMemberAttribute]``public string Query { get; }`

## Property Value


Returns **String**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## Remarks


The query is used for automatic detection of Features and Requirements. This query is run against all the target data for a particular machine. If there are any results, the Feature is present on the Machine.

 

 






