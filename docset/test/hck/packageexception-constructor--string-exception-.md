---
author: joshbax-msft
title: PackageException Constructor (String, Exception)
description: PackageException Constructor (String, Exception)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 33a8266e-2392-47d0-931d-85a7d2bde3f6
---

# PackageException Constructor (String, Exception)


This constructor initializes a new instance of the **PackageException** class.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim message As String``Dim inner As Exception``Dim instance As New PackageException(message, inner)`

## Syntax


**Visual Basic**`Public Sub New ( _`           `message As String, _`           `inner As Exception _``)`

**C#**`public PackageException (`           `string message,`           `Exception inner``)`

## Parameters


*message*      The exception message.

*inner*      The inner exception.

 

 






