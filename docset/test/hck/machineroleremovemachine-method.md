---
author: joshbax-msft
title: MachineRole.RemoveMachine Method
description: MachineRole.RemoveMachine Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 19e22048-7eeb-4dde-9c9c-e44322bb98a8
---

# MachineRole.RemoveMachine Method


This method removes a machine (test computer) from the machine role.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As MachineRole``Dim machineToRemove As Machine``instance.RemoveMachine(machineToRemove)`

## Syntax


**Visual Basic**

``` syntax
Public Sub RemoveMachine(ByVal machineToRemove As Machine)
    If (machineToRemove <> Nothing) Then
        If (Me.machines.Contains(machineToRemove)) Then
            Me.machines.Remove(machineToRemove)
            Return
        Else
            Throw ScheduleException.BuildException("MachineRole::RemoveMachine() - Instance of Machine does not exist in the machine list.")
        End If
    Else
        Throw New ArgumentNullException("machineToRemove")
    End If
End Sub
```

**C#**

``` syntax
public void RemoveMachine(Machine machineToRemove)
{
    if (machineToRemove != null)
    {
        if (this.machines.Contains(machineToRemove))
        {
            this.machines.Remove(machineToRemove);
            return;
        }
        else
        {
            throw ScheduleException.BuildException("MachineRole::RemoveMachine() - Instance of Machine does not exist in the machine list.");
        }
    }
    else
    {
        throw new ArgumentNullException("machineToRemove");
    }
}
```

## Parameters


*machineToRemove*      The machine (test computer) to remove.

## Remarks


An exception is thrown if

-   The *machineToRemove* parameter is null.

-   The *machineToRemove* does not exist in the current machine list.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






