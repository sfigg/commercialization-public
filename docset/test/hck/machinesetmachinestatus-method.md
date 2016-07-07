---
author: joshbax-msft
title: Machine.SetMachineStatus Method
description: Machine.SetMachineStatus Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 119aec7b-40a9-489f-86a0-aaf52ecabdb1
---

# Machine.SetMachineStatus Method


This method sets the machine status. This is a blocking call and will wait until the machine status is set or the timeout has elapsed. A good default value is 10 min (600000 milliseconds).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As Machine``Dim status As MachineStatus``Dim millisecondsTimeout As Long``Dim returnValue As Boolean``returnValue = instance.SetMachineStatus(status, millisecondsTimeout)`

## Syntax


**Visual Basic**`Public MustOverride Function SetMachineStatus ( _`           `status As MachineStatus, _`           `millisecondsTimeout As Long _``) As Boolean`

**C#**`public abstract bool SetMachineStatus (`           `MachineStatus status,`           `long millisecondsTimeout``)`

## Parameters


*status*      The machine status to be set.

*millisecondsTimeout*      The number of milliseconds to wait before this method returns. This value can be -1 (indicating an infinite wait time) or a positive number.

## Return Value


**true** if the machine value is set,or **false** if the timeout value was reached.

## Remarks


An exception occurs if:

-   *status* is not valid.

-   The value of *millisecondsTimeout* is less than -1.

    This is a blocking call and will wait until the machine status is set or the timeout has elapsed. A good default value is 10 min (600000 milliseconds). To specify infinite time, set the timeout to -1.

    This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






