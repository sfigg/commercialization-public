---
title: FlyoutHighPerformancePowerScheme
description: FlyoutHighPerformancePowerScheme
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4bfc71d9-a1ec-42fb-8388-1a69e530e38a
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# FlyoutHighPerformancePowerScheme


`FlyoutHighPerformancePowerScheme` is the globally unique identifier (GUID) of the Battery Meter Fly-out High Performance power savings scheme.

For information on creating a customized power plan, see [How to Create a Custom Power Plan](http://go.microsoft.com/fwlink/?LinkId=206617).

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>GUID</em></p></td>
<td><p>Specifies the GUID of the power plan to display in the Battery Meter for the High Performance power configuration.</p>
<p><em>GUID</em> is a string.</p></td>
</tr>
</tbody>
</table>

 

This string type does not support empty elements. Do not create an empty value for this setting.

## Valid Configuration Passes


generalize

specialize

## Parent Hierarchy


[Microsoft-Windows-stobject](microsoft-windows-stobject-win7-microsoft-windows-stobject.md) | **FlyoutHighPerformancePowerScheme**

## Applies To


This setting is deprecated in Windows 8 and Windows® 7.

This setting is available in Windows Vista, Windows Server® 2012, Windows Server 2008 R2, and Windows Server 2008.

For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-stobject](microsoft-windows-stobject-win7-microsoft-windows-stobject.md).

## XML Example


The following XML output shows how to configure `FlyoutHighPerformancePowerScheme`.

``` syntax
<FlyoutHighPerformancePowerScheme>9c5e7fda-e8bf-4a96-9a85-a6e23a8c635c</FlyoutHighPerformancePowerScheme>
```

## Related topics


[Microsoft-Windows-stobject](microsoft-windows-stobject-win7-microsoft-windows-stobject.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20FlyoutHighPerformancePowerScheme%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





