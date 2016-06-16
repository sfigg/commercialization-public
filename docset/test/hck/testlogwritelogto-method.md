---
author: joshbax-msft
title: TestLog.WriteLogTo Method
description: TestLog.WriteLogTo Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5ecc3a2b-2baa-4c05-8f4e-5a8fb267cc1e
---

# TestLog.WriteLogTo Method


This method writes a log file to a specific file location on disk.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As TestLog``Dim destination As String``instance.WriteLogTo(destination)`

## Syntax


**Visual Basic**`Public MustOverride Sub WriteLogTo ( _`           `destination As String _``)`

**C#**`public abstract void WriteLogTo (`           `string destination``)`

## Parameters


*destination*     A string value that describes the destination (file path and file name) to write the log to.

## Remarks


An exception occurs if *destination* is **null** or empty.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






