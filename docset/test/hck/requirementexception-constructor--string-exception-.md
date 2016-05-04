---
author: joshbax-msft
title: RequirementException Constructor (String, Exception)
description: RequirementException Constructor (String, Exception)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c0309aea-27f5-4214-9e7a-7e123f3929a9
---

# RequirementException Constructor (String, Exception)


This constructor initializes a new instance of the **RequirementException** class.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim message As String``Dim except As Exception``Dim instance As New RequirementException(message, except)`

## Syntax


**Visual Basic**`Public Sub New`           `message As String _`           `except As Exception _``)`

**C#**`Public RequirementException (`           `string message`           `Exception except``)`

## Parameters


*message*      A string that represents the message for the exception.

*except*      An exception object.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






