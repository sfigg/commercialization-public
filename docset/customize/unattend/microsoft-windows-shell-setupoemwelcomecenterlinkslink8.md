---
title: Link8
description: Link8
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: adbc29a8-2b78-4a7b-b5dc-a42e157fbb27
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# Link8


`Link8` specifies the path to the ninth shortcut that appears as a task in the Jump List in the OEM First Run application.

**Note**  
This setting has been deprecated in Windows 8. The information about this deprecated setting is provided for reference only. The OEM First Run application is not available in Windows 8.

 

**Note**  
We do not recommend adding the shortcut by using the environment variable: `%USERPROFILE%`. Shortcuts added by using `%USERPROFILE%` are applied only to the profile of the next user to log on to the computer. Also, if the setting is applied during the **auditUser** configuration pass, the shortcut is applied only to the temporary administrator account, which is removed after the computer exits audit mode.

 

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>path</em></p></td>
<td><p>Specifies the path to the ninth shortcut.</p>
<p><em>path</em> specifies the complete path and the file name of a shortcut file with a .lnk file name extension. The path to the shortcut file must refer to a location on the destination computer.</p>
<p>Each shortcut file must include the complete path and file name of a corresponding program file, Web page, or document.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


specialize

auditUser

oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md) | [OEMWelcomeCenterLinks](microsoft-windows-shell-setupoemwelcomecenterlinks.md) | **Link8**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set a group of First Run shortcuts in the Jump List in the OEM First Run application.

``` syntax
<OEMWelcomeCenterLinks>
   <Link0>%SystemDrive%\Fabrikam\Welcome\View license agreement.lnk</Link0>
   <Link1>%SystemDrive%\Fabrikam\Welcome\Register your new Fabrikam computer.lnk</Link1>
   <Link2>%SystemDrive%\Fabrikam\Welcome\Set up an Internet connection.lnk</Link2>
   <Link3>%SystemDrive%\Fabrikam\Welcome\Install an Antivirus program.lnk</Link3>
   <Link4>%SystemDrive%\Fabrikam\Welcome\Back up your data.lnk</Link4>
   <Link5>%SystemDrive%\Fabrikam\Welcome\Get tools from the Fabrikam Download Center.lnk</Link5>
   <Link6>%SystemDrive%\Fabrikam\Welcome\Purchase accessories for your Fabrikam computer.lnk</Link6>
   <Link7>%SystemDrive%\Fabrikam\Welcome\Extend your warranty.lnk</Link7>
   <Link8>%SystemDrive%\Fabrikam\Welcome\Learn about other Fabrikam products.lnk</Link8>
   <Link9>%SystemDrive%\Fabrikam\Welcome\Send feedback to Fabrikam.lnk</Link9>
</OEMWelcomeCenterLinks>
```

## Related topics


[OEMWelcomeCenterLinks](microsoft-windows-shell-setupoemwelcomecenterlinks.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20Link8%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





