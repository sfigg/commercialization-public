---
author: joshbax-msft
title: PackageWriter.SetProgressActionHandler Method
description: PackageWriter.SetProgressActionHandler Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7304dca6-6ede-4861-b764-3cff74dbd58b
---

# PackageWriter.SetProgressActionHandler Method


This method sets an action handler that is used to send out submission progress updates. This method can be used for both submission packages and update packages.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageWriter``Dim actionHandler As Action(Of PackageProgressInfo)``instance.SetProgressActionHandler(actionHandler)`

## Syntax


**Visual Basic**`Public Sub SetProgressActionHandler ( _`           `actionHandler As Action(Of PackageProgressInfo) _``) `

**C#**`public void SetProgressActionHandler (`           `Action<PackageProgressInfo> actionHandler``)`

## Parameters


*actionHandler*      The name of the handler to call.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






