---
title: StartPanelLinks
description: StartPanelLinks
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a1e656e2-c514-4437-b582-e0e49ff6abe9
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# StartPanelLinks


`StartPanelLinks` specifies shortcuts to display on the **Start** menu list of most frequently used programs. You can specify up to five shortcuts.

**Note**  
This setting has been deprecated in Windows 8. The information about this deprecated setting is provided for reference only. In Windows 8, the **Start** menu list of most frequently used programs is not available.

 

Each of the settings under `StartPanelLinks` specifies the complete path and the file name of a shortcut file with an .lnk extension. The path must refer to a location on the destination computer.

Each shortcut file must include the complete path and file name of a corresponding program file with an .exe file name extension. The path to the program file must refer to a location on the destination computer.

Shortcut files must be placed either in the **Start** menu or on the desktop. Otherwise they will not appear in the list of most frequently used items. We recommend that you add shortcut files to the All Users **Start** menu, for example: `%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Fabrikam\Application.lnk`, to enable all users to access the programs, and to keep the desktop clean for the end user.

We do not recommend adding the shortcut by using the environment variable: `%USERPROFILE%`. Shortcuts added by using `%USERPROFILE%` are applied only to the profile of the next user to log on to the computer. Also, if the setting is applied during the **auditUser** configuration pass, the shortcut is applied only to the temporary administrator account, which is removed after exiting audit mode.

When you add the OEM First Run application, we recommend that you also add it as the first shortcut in the **Start** menu list of most frequently used programs, so that users can access the application repeatedly until they have accomplished all of the specified tasks. For information, see [Link0](microsoft-windows-shell-setupstartpanellinkslink0.md).

**Note**  
Any item that is pinned to the taskbar will not appear in the **Start** menu list of frequently used programs.

 

You cannot add certain programs to the list of most frequently used programs. For a list of these programs, see the [Microsoft Help and Support website](http://go.microsoft.com/fwlink/?LinkId=70602).

This setting has no effect on Server Core installations of Windows Server® 2008, Windows Server 2008 R2, and Windows Server 2012.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Link0](microsoft-windows-shell-setupstartpanellinkslink0.md)</p></td>
<td><p>Specifies the path to the first shortcut.</p></td>
</tr>
<tr class="even">
<td><p>[Link1](microsoft-windows-shell-setupstartpanellinkslink1.md)</p></td>
<td><p>Specifies the path to the second shortcut.</p></td>
</tr>
<tr class="odd">
<td><p>[Link2](microsoft-windows-shell-setupstartpanellinkslink2.md)</p></td>
<td><p>Specifies the path to the third shortcut.</p></td>
</tr>
<tr class="even">
<td><p>[Link3](microsoft-windows-shell-setupstartpanellinkslink3.md)</p></td>
<td><p>Specifies the path to the fourth shortcut.</p></td>
</tr>
<tr class="odd">
<td><p>[Link4](microsoft-windows-shell-setupstartpanellinkslink4.md)</p></td>
<td><p>Specifies the path to the fifth shortcut.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


auditUser

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | **StartPanelLinks**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set shortcuts for an OEM First Run application and for WordPad on the **Start** menu list of most frequently used programs.

``` syntax
<StartPanelLinks>
   <Link0>%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Fabrikam\Welcome.lnk</Link0>
   <Link1>%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Accessories\Wordpad.lnk</Link1>
</StartPanelLinks>
```

## Related topics


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md)

[OEMWelcomeCenter](microsoft-windows-shell-setupoemwelcomecenter.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20StartPanelLinks%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





