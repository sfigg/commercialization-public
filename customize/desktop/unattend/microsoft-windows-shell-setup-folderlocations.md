---
title: FolderLocations
description: FolderLocations
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f5b30062-eba6-4a3f-b635-4f33828b1107
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# FolderLocations


The `FolderLocations` setting specifies the location of the user-profile and program-data folders.

 

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[ProfilesDirectory](microsoft-windows-shell-setup-folderlocations-profilesdirectory.md)</p></td>
<td><p>Specifies the path to the user profile folder.</p></td>
</tr>
<tr class="even">
<td><p>[ProgramData](microsoft-windows-shell-setup-folderlocations-programdata.md)</p></td>
<td><p>Specifies the path to the program-data folder.</p>
<div class="alert">
<strong>Warning</strong>  
<p>Use this setting only in a test environment. If you change the default location of the program-data folders to a volume other than the system volume, you cannot service your image. Any updates, fixes, or service packs may not be applied to the installation.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | **FolderLocations**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML example shows how to set the paths to folder locations.

``` syntax
<FolderLocations>
   <ProfilesDirectory>%SYSTEMDRIVE%\Profiles</ProfilesDirectory>
</FolderLocations>
```

## Related topics


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md)

 

 







