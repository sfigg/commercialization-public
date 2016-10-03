---
title: LayoutPosition
description: LayoutPosition
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8824b9d9-d3a1-472b-9a50-c50971ad64e8
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# LayoutPosition


**Caution**  
This setting is deprecated, do not use this setting.

Gadgets are not available in Windows 8.

 

`LayoutPosition` specifies whether the default location for gadgets is on the top or side edge of the desktop.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><code>Default</code></p></td>
<td><p>Specifies that gadgets are placed on the side edge of the desktop.</p>
<ul>
<li><p>If the default reading direction is left-to-right, gadgets are placed on the right edge of the desktop.</p></li>
<li><p>If the default reading direction is right-to-left, gadgets are placed on the left edge of the desktop.</p></li>
</ul>
<p>This is the default value.</p></td>
</tr>
<tr class="even">
<td><p><code>Top</code></p></td>
<td><p>Specifies that gadgets are placed on the top of the desktop.</p></td>
</tr>
</tbody>
</table>

 

## Parent Hierarchy


[Microsoft-Windows-Sidebar](microsoft-windows-sidebar-win7-microsoft-windows-sidebar.md) | **LayoutPosition**

## Valid Configuration Passes


oobeSystem

## Applies To


For the list of the supported Windows® editions and architectures that this component supports, see [Microsoft-Windows-Sidebar](microsoft-windows-sidebar-win7-microsoft-windows-sidebar.md).

## XML Example


The following XML output shows how to set gadgets to appear on the top of the desktop.

``` syntax
<LayoutPosition>Top</LayoutPosition>
```

## Related topics


[Microsoft-Windows-Sidebar](microsoft-windows-sidebar-win7-microsoft-windows-sidebar.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20LayoutPosition%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





