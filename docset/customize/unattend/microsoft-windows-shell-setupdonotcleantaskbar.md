---
title: DoNotCleanTaskBar
description: DoNotCleanTaskBar
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5efb9512-d091-4851-853a-4e75283e2cec
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# DoNotCleanTaskBar


`DoNotCleanTaskBar` specifies whether Sysprep removes deskbands. A deskband is a customized toolbar that can be added to the taskbar. Deskbands contain shortcuts to frequently performed tasks.

This setting has been deprecated in Windows 8. The information about this deprecated setting is provided for reference only. In Windows 8, we do not recommend using deskbands to the desktop taskbar.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>true</strong></p></td>
<td><p>Specifies that deskbands are not removed.</p></td>
</tr>
<tr class="even">
<td><p><strong>false</strong></p></td>
<td><p>Specifies that deskbands are removed. This is the default value.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


auditSystem

generalize

offlineServicing

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md) | **DoNotCleanTaskBar**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md).

## XML Example


The following XML output specifies that deskbands are not removed.

``` syntax
<DoNotCleanTaskBar>true</DoNotCleanTaskBar>
```

## Related topics


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20DoNotCleanTaskBar%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





