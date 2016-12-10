---
title: Get-AssignedAccess
description: Get-AssignedAccess
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b958ceca-c888-4f71-b089-b915ec2a03b9
---

# Get-AssignedAccess


Retrieves the current configuration for assigned access.

## Syntax


``` syntax
<AutoBlockSyntax>Get-AssignedAccess [<CommonParameters>]</AutoBlockSyntax>
```

## Description


&lt;AutoBlockDescription&gt;

The Get-AssignedAccess cmdlet retrieves the current configuration for assigned access, including the user name, user SID, app friendly name, and app ID.

&lt;/AutoBlockDescription&gt;

## Parameters


&lt;AutoBlockParameters&gt;

<a href="" id="-commonparameters-"></a>*&lt;CommonParameters&gt;*  
&lt;AutoSectionDefinition&gt;

This command supports the following common parameters that are implemented by Windows PowerShell: Verbose, Debug, ErrorAction, ErrorVariable, OutBuffer, OutVariable, WarningAction, and WarningVariable. For more information, see [about\_CommonParameters](http://go.microsoft.com/fwlink/p/?linkid=294664) on MSDN.

&lt;/AutoSectionDefinition&gt;

&lt;/AutoBlockParameters&gt;

## Remarks


&lt;AutoBlockRemarks&gt;

For more information, type "Get-Help Get-AssignedAccess -detailed". For technical information, type "Get-Help Get-AssignedAccess -full".

&lt;/AutoBlockRemarks&gt;

## Examples


&lt;AutoBlockExamples&gt;

<a href="" id="example-1"></a>EXAMPLE 1  
&lt;AutoSectionDefinition&gt;

``` syntax
C:\PS>Get-AssignedAccess
```

-----------

Output

-----------

User Name: MYPC\\UserNameUser SID: S-1-5-21-594534509-2542345234-234523453-1004AppUserModelId: Microsoft.Media.PlayReadyClient\_2.3.1678.0\_x64\_\_8wekyb3d8bbweApp Name: Microsoft.Media.PlayReadyClient

-----------

Description

-----------

This example shows how to retrieve the current configuration for assigned access.

&lt;/AutoSectionDefinition&gt;

&lt;/AutoBlockExamples&gt;

## Requirements


|                       |           |
|-----------------------|-----------|
| Windows Edition       | Supported |
| Windows 10 Home       | No        |
| Windows 10 Pro        | Yes       |
| Windows 10 Enterprise | Yes       |
| Windows 10 Education  | Yes       |

 

## Related topics


[Clear-AssignedAccess](clear-assignedaccess.md)

[Set-AssignedAccess](set-assignedaccess.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_enterprise_customizations\p_enterprise_customizations%5D:%20Get-AssignedAccess%20%20RELEASE:%20%2810/17/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")





