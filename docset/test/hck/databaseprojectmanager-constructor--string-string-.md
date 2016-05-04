---
author: joshbax-msft
title: DatabaseProjectManager Constructor (String, String)
description: DatabaseProjectManager Constructor (String, String)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6f4d16a5-3f80-4976-9573-3742354d0d09
---

# DatabaseProjectManager Constructor (String, String)


This constructor initializes a new instance of the **DatabaseProjectManager** class. You should cast this back to the **ILogoManager** interface, this will prevent issues later when porting to a different implementation of this interface. The DataStore name is the NetBIOS name of the server parameter.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim server As String``Dim database As String``Dim instance As New DatabaseProjectManager(server, database)`

## Syntax


**Visual Basic**`Public Sub New ( _`           `server As String _`           `database As String _``)`

**C#**`public DatabaseProjectManager (`           `string server`           `string database``)`

## Parameters


*server*      The name of the server to connect to.

*database*      The name of the database to connect to.

## Remarks


An exception is thrown if *server* is **null** or empty, or if the database connection fails (for example, if the controller is unavailable).

 

 






