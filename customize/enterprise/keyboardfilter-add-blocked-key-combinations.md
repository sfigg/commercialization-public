---
title: Add blocked key combinations
description: Add blocked key combinations
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f51892fc-0262-4b25-b117-6e131b86fb68
author: alhopper-msft
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Add blocked key combinations

The following sample Windows PowerShell script uses the Windows Management Instrumentation (WMI) providers for Keyboard Filter to create three functions to configure Keyboard Filter so that Keyboard Filter blocks key combinations. It demonstrates several ways to use each function.

The first function, `Enable-PredefinedKeyFilter`, blocks key combinations that are predefined for Keyboard Filter.

The second function, `Enable-CustomKeyFilter`, blocks custom key combinations by using the English key names.

The third function, `Enable-ScancodeFilter`, blocks custom key combinations by using the keyboard scan code for the key.

## KeyFilter.psm1

```powershell
#
# Copyright (C) Microsoft. All rights reserved.
#

<#
.Synopsis
    This script shows how to use the built in WMI providers to enable and add 
    keyboard filter rules through Windows PowerShell on the local computer.
.Parameter ComputerName
    Optional parameter to specify a remote machine that this script should
    manage.  If not specified, the script will execute all WMI operations
    locally.
#>
param (
    [string]$ComputerName
)

$CommonParams = @{"namespace"="root\standardcimv2\embedded"}
$CommonParams += $PSBoundParameters

function Enable-PredefinedKeyFilter {
    <#
    .Synopsis
        Toggle on a Predefined Key keyboard filter Rule
    .Description
        Use Get-WMIObject to enumerate all WEKF_PredefinedKey instances,
        filter against key value "Id", and set that instance's "Enabled"
        property to 1/true.
    .Example
        Enable-PredefinedKeyFilter "Ctrl+Alt+Del"
        Enable CAD filtering
    #>
    [Alias("Enable-Predefined-Key")] # The old name
    [CmdletBinding()]
    param([string]$Id)

    $predefined = Get-WMIObject -class WEKF_PredefinedKey @CommonParams |
        Where-Object {
            $_.Id -eq $Id
        }

    if ($predefined) {
        $predefined.Enabled = 1
        $predefined.Put() | Out-Null
        Write-Host "Enabled $Id"
    } else {
        Write-Error "$Id is not a valid predefined key"
    }
}


function Enable-CustomKeyFilter {
    <#
    .Synopsis
        Toggle on a Custom Key keyboard filter Rule
    .Description
        Use Get-WMIObject to enumerate all WEKF_CustomKey instances,
        filter against key value "Id", and set that instance's "Enabled"
        property to 1/true.

        In the case that the Custom instance does not exist, add a new
        instance of WEKF_CustomKey using Set-WMIInstance.
    .Example
        Enable-CustomKeyFilter "Ctrl+V"
        Enable filtering of the Ctrl + V sequence.
    #>
    [Alias("Enable-Custom-Key")] # The old name
    [CmdletBinding()]
    param([string]$Id)

    $custom = Get-WMIObject -class WEKF_CustomKey @CommonParams |
        Where-Object {
            $_.Id -eq "$Id"
        }

    if ($custom) {
        # Rule exists.  Just enable it.
        $custom.Enabled = 1
        $custom.Put() | Out-Null
        Write-Host ("Enabled Custom Filter $Id.")
    } else {
        Set-WMIInstance `
            -class WEKF_CustomKey `
            -argument @{Id="$Id"} `
            @CommonParams | Out-Null
        Write-Host ("Added Custom Filter $Id.")
    }
}

function Enable-ScancodeFilter {
    <#
    .Synopsis
        Toggle on a Scancode keyboard filter Rule
    .Description
        Use Get-WMIObject to enumerate all WEKF_Scancode instances,
        filter against key values of "Modifiers" and "Scancode", and set
        that instance's "Enabled" property to 1/true.

        In the case that the Scancode instance does not exist, add a new
        instance of WEKF_Scancode using Set-WMIInstance.
    .Example
        Enable-ScancodeFilter "Ctrl" 0x25
        Enable filtering of the Ctrl + keyboard scancode 25 (base-16)
        sequence.
    .Example
        Enable-ScancodeFilter "Ctrl" 37
        Enable filtering of the Ctrl + keyboard scancode 37 (base-10)
        sequence.
    #>
    [Alias("Enable-Scancode")] # The old name
    [CmdletBinding()]
    param([string]$Modifiers, [int]$Code)

    $scancode =
        Get-WMIObject -class WEKF_Scancode @CommonParams |
            Where-Object {
                ($_.Modifiers -eq $Modifiers) -and ($_.Scancode -eq $Code)
            }

    if($scancode) {
        $scancode.Enabled = 1
        $scancode.Put() | Out-Null
        Write-Host ("Enabled Custom Scancode {0}+{1:X4}" -f $Modifiers, $Code)
    } else {
        Set-WMIInstance `
            -class WEKF_Scancode `
            -argument @{Modifiers="$Modifiers"; Scancode=$Code} `
            @CommonParams | Out-Null
 
        Write-Host ("Added Custom Scancode {0}+{1:X4}" -f $Modifiers, $Code)
    }
}

# Some example uses of the functions defined above.
Enable-PredefinedKeyFilter "Ctrl+Alt+Del"
Enable-PredefinedKeyFilter "Ctrl+Esc"
Enable-CustomKeyFilter "Ctrl+V"
Enable-CustomKeyFilter "Numpad0"
Enable-CustomKeyFilter "Shift+Numpad1"
Enable-CustomKeyFilter "%"
Enable-ScancodeFilter "Ctrl" 37
```

## Related topics

[Windows PowerShell script samples for keyboard filter](keyboardfilter-powershell-script-samples.md)

[Keyboard filter WMI provider reference](keyboardfilter-wmi-provider-reference.md)

[Keyboard filter](keyboardfilter.md)
