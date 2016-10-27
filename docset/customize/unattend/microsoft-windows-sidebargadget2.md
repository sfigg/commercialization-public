---
title: Gadget2
description: Gadget2
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f6e236e8-501c-4161-87d1-d1f449b1fbf3
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# Gadget2


**Caution**  
This setting has been deprecated in Windows 8. The information about this deprecated setting is provided for reference only.

Gadgets are not available in Windows 8.

 

`Gadget2` specifies the path of a gadget folder (.gadget). The gadget folder has a .gadget extension.

You can enable built-in Windows 7 gadgets in the C:\\Program Files\\Windows Sidebar\\Gadgets folder, or you can enable your own custom gadgets. We recommend that you install custom gadgets in the C:\\Program Files\\Windows Sidebar\\Shared Gadgets\\ folder.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>Path_to_gadget</em></p></td>
<td><p>Specifies the path of a gadget folder (.gadget). <em>Path_to_gadget</em> is a string.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
In Windows Vista installations, it was necessary to add a comma (**,**), and **true** or **false** for the state of the gadget. This is not required for Windows 7 installations.

 

## Parent Hierarchy


[Microsoft-Windows-Sidebar](microsoft-windows-sidebar.md) | **Gadget2**

## Valid Configuration Passes


oobeSystem

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Sidebar](microsoft-windows-sidebar.md).

## XML Example


The following XML output shows how to set three built-in Windows 7 gadgets, and two customized gadgets.

``` syntax
<Gadget1>%PROGRAMFILES%\Windows Sidebar\Gadgets\Clock.Gadget</Gadget1>
<Gadget2>%PROGRAMFILES%\Windows Sidebar\Gadgets\Weather.Gadget</Gadget2>
<Gadget3>%PROGRAMFILES%\Windows Sidebar\Gadgets\Calendar.Gadget</Gadget3>
<Gadget4>%PROGRAMFILES%\Windows Sidebar\Shared Gadgets\FabriKam1.Gadget</Gadget4>
<Gadget5>%PROGRAMFILES%\Windows Sidebar\Shared Gadgets\FabriKam2.Gadget</Gadget5>
```

## Related topics


[Microsoft-Windows-Sidebar](microsoft-windows-sidebar.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20Gadget2%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





