---
author: joshbax-msft
title: ProjectSummary.Equals Method
description: ProjectSummary.Equals Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d5ce8641-e542-4304-a583-b346b2bfe698
---

# ProjectSummary.Equals Method


This method compares two **ProjectSummary** instances.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProjectSummary``Dim otherProjectSummary As ProjectSummary``Dim returnValue As Boolean``returnValue = instance.Equals(otherProjectSummary)`

## Syntax


**Visual Basic**`Public Function Equals ( _`           `otherProjectSummary As ProjectSummary _``) As Boolean`

**C#**`public bool Equals (`           `ProjectSummary otherProjectSummary``)`

## Parameters


*otherProjectSummary*      The **ProjectSummary** object to compare against this **ProjectSummary** object.

## Return Value


Returns **Boolean**, which has a value of **true** if the two objects are equal, or a value of **false** if they are different.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






