---
author: joshbax-msft
title: ScheduleException Constructor (String, Exception)
description: ScheduleException Constructor (String, Exception)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cf496648-6125-411c-982d-e19405c39e10
---

# ScheduleException Constructor (String, Exception)


This constructor initializes a new instance of the **ScheduleException** class.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim message As String``Dim except As Exception``Dim instance As New ScheduleException(message, except)`

## Syntax


**Visual Basic**`Public Sub New`           `message As String _`           `except As Exception _``)`

**C#**`Public ScheduleException (`           `string message`           `Exception except``)`

## Parameters


*message*      A string that represents the message for the exception.

*except*      An exception object.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






