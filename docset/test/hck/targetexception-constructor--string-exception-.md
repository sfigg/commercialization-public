---
author: joshbax-msft
title: TargetException Constructor (String, Exception)
description: TargetException Constructor (String, Exception)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7efe43ec-0be3-41c6-9fe9-8a57daf58762
---

# TargetException Constructor (String, Exception)


This constructor initializes a new instance of the **TargetException** class.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim message As String``Dim except As Exception`

`Dim instance As New TargetException (message, except)`

## Syntax


**Visual Basic**`Public Sub New ( _`           `message As String, _`           `except As Exception _``)`

**C#**`public TargetException (`           `string message,`           `Exception except``)`

## Parameters


*message*     A string that represents the message for the exception.

*except*     An **Exception** object.

 

 






