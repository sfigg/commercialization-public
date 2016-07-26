---
author: joshbax-msft
title: DatabaseProjectManager.Dispose Method
description: DatabaseProjectManager.Dispose Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 03a0dc36-4200-4f09-a803-4432a92ff01c
---

# DatabaseProjectManager.Dispose Method


This method implements the **IDisposable** interface.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim disposing As Boolean``Me.Dispose(disposing)`

## Syntax


**Visual Basic**`Protected Overrides Sub Dispose ( _`           `disposing As Boolean _``) `

**C#**`protected override void Dispose (`           `bool disposing``)`

## Parameters


*disposing*      A Boolean value to indicate if this is being removed.

## Remarks


An exception occurs when the *projectNameToDelete* parameter is **null** or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






