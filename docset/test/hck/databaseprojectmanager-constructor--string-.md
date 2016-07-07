---
author: joshbax-msft
title: DatabaseProjectManager Constructor (String)
description: DatabaseProjectManager Constructor (String)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 40f56e50-0f9f-4210-ae41-03bd82fac268
---

# DatabaseProjectManager Constructor (String)


This constructor initializes a new instance of the **DatabaseProjectManager** class. You should cast this back to the **ILogoManager** interface, this will prevent issues later when porting to a different implementation of this interface. The DataStore name is the NetBIOS name of the server parameter.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection (in Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection)

## Usage


**Visual Basic**`Dim server As String``Dim instance As New DatabaseProjectManager(server)`

## Syntax


**Visual Basic**`Public Sub New ( _`           `server As String _``)`

**C#**`public DatabaseProjectManager (`           `string server``)`

## Parameters


*server*      The name of the server to connect to.

## Remarks


An exception is thrown if *server* is **null** or empty, or if the database connection fails (for example, if the controller is unavailable).

 

 






