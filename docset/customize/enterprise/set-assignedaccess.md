---
title: Set-AssignedAccess
description: Set-AssignedAccess
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a76d45b1-3a25-41b2-92b8-29a7f3db2562
---

# Set-AssignedAccess


Configures a user to only launch one application.

## Syntax


``` syntax
<AutoBlockSyntax>Set-AssignedAccess -AppUserModelId <string> -UserName <string> [<CommonParameters>]
Set-AssignedAccess -AppName <string> -UserName <string> [<CommonParameters>]
Set-AssignedAccess -AppUserModelId <string> -UserSID <string> [<CommonParameters>]
Set-AssignedAccess -AppName <string> -UserSID <string> [<CommonParameters>]</AutoBlockSyntax>
```

## Description


&lt;AutoBlockDescription&gt;

The Set-AssignedAccess cmdlet configures assigned access so that a specific user can use only one app. The user cannot exit the app or access system settings. If the user is signed in, you must sign off to apply the changes. To sign out of assigned access, press CTRL+ALT+DELETE.

&lt;/AutoBlockDescription&gt;

## Parameters


&lt;AutoBlockParameters&gt;

<a href="" id="-appname--string-"></a>*-AppName &lt;string&gt;*  
&lt;AutoSectionDefinition&gt;

Specifies the name of the installed Windows app to use for assigned access. Wildcard characters are accepted.

You can use *AppName* for any app that is returned in the Name field by *Get-AppxPackage*.

For example, in the following example of the return value of Get-AppxPackage for Windows Calculator, the Name field value is "Microsoft.WindowsCalculator".

**Note**  Querying on the -AppName parameter isn't as robust as querying on the –AppUserModelId. Whenever possible, use the –AppUserModelId.

 

```
Name              : Microsoft.WindowsCalculator
Publisher         : CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US
Architecture      : X64
ResourceId        :
Version           : 10.1604.51020.0
PackageFullName   : Microsoft.WindowsCalculator_10.1604.51020.0_x64__8wekyb3d8bbwe
InstallLocation   : C:\Program Files\WindowsApps\Microsoft.WindowsCalculator_10.1604.51020.0_x64__8wekyb3d8bbwe
IsFramework       : False
PackageFamilyName : Microsoft.WindowsCalculator_8wekyb3d8bbwe
PublisherId       : 8wekyb3d8bbwe
IsResourcePackage : False
IsBundle          : False
IsDevelopmentMode : False
Dependencies      : {Microsoft.VCLibs.140.00_14.0.23816.0_x64__8wekyb3d8bbwe, Microsoft.WindowsCalculator_10.1604.51020.0_neutral_split.scale-100_8wekyb3d8bbwe,
                    Microsoft.WindowsCalculator_10.1604.51020.0_neutral_split.scale-125_8wekyb3d8bbwe, Microsoft.WindowsCalculator_10.1604.51020.0_neutral_split.scale-150_8wekyb3d8bbwe...}
```

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Required?</p></td>
<td><p>true</p></td>
</tr>
<tr class="even">
<td><p>Accept Wildcard Characters?</p></td>
<td><p>true</p></td>
</tr>
</tbody>
</table>

 

&lt;/AutoSectionDefinition&gt;

<a href="" id="-appusermodelid--string-"></a>*-AppUserModelId &lt;string&gt;*  
&lt;AutoSectionDefinition&gt;

Specifies the Application User Model ID (AppUserModelID) for the installed Windows app to use for assigned access.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Required?</p></td>
<td><p>true</p></td>
</tr>
<tr class="even">
<td><p>Accept Wildcard Characters?</p></td>
<td><p>false</p></td>
</tr>
</tbody>
</table>

 

&lt;/AutoSectionDefinition&gt;

<a href="" id="-username--string-"></a>*-UserName &lt;string&gt;*  
&lt;AutoSectionDefinition&gt;

Specifies the user account name to use for assigned access.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Required?</p></td>
<td><p>true</p></td>
</tr>
<tr class="even">
<td><p>Accept Wildcard Characters?</p></td>
<td><p>false</p></td>
</tr>
</tbody>
</table>

 

&lt;/AutoSectionDefinition&gt;

<a href="" id="-usersid--string-"></a>*-UserSID &lt;string&gt;*  
&lt;AutoSectionDefinition&gt;

Specifies the security identifier (SID) for the account to use for assigned access.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Required?</p></td>
<td><p>true</p></td>
</tr>
<tr class="even">
<td><p>Accept Wildcard Characters?</p></td>
<td><p>false</p></td>
</tr>
</tbody>
</table>

 

&lt;/AutoSectionDefinition&gt;

<a href="" id="-commonparameters-"></a>*&lt;CommonParameters&gt;*  
&lt;AutoSectionDefinition&gt;

This command supports the following common parameters that are implemented by Windows PowerShell: *Verbose*, *Debug*, *ErrorAction*, *ErrorVariable*, *OutBuffer*, *OutVariable*, *WarningAction*, and *WarningVariable*. For more information, see [about\_CommonParameters](http://go.microsoft.com/fwlink/p/?linkid=294664) on MSDN.

&lt;/AutoSectionDefinition&gt;

&lt;/AutoBlockParameters&gt;

## Remarks


&lt;AutoBlockRemarks&gt;

To get a list of all the applications installed for a user account, use the Get-AppxPackage cmdlet as follows: (Get-AppxPackage -User username ). For more information, type "Get-Help Set-AssignedAccess -detailed". For technical information, type "Get-Help Set-AssignedAccess -full".

&lt;/AutoBlockRemarks&gt;

## Examples


&lt;AutoBlockExamples&gt;

<a href="" id="example-1"></a>EXAMPLE 1  
&lt;AutoSectionDefinition&gt;

``` syntax
Set-AssignedAccess -UserSID S-1-5-21-523423449-2432423479-234123443-1004 -AppName CustomApp
```

-----------

Description

-----------

This example shows how to configure assigned access by using the user SID and the app name.

&lt;/AutoSectionDefinition&gt;

<a href="" id="example-2"></a>EXAMPLE 2  
&lt;AutoSectionDefinition&gt;

``` syntax
Set-AssignedAccess -UserName UserName -AppUserModelId microsoft.windows.photos_8wekyb3d8bbwe!app
```

-----------

Description

-----------

This example shows how to configure assigned access by using the user name and AppUserModelID.

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

[Get-AssignedAccess](get-assignedaccess.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_enterprise_customizations\p_enterprise_customizations%5D:%20Set-AssignedAccess%20%20RELEASE:%20%2810/17/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")





