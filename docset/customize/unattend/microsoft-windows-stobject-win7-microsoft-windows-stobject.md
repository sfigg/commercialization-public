---
title: Microsoft-Windows-stobject
description: Microsoft-Windows-stobject
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1b95d74a-0b7e-4ec6-bbc3-29b178b6d13a
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# Microsoft-Windows-stobject


The Microsoft-Windows-stobject component enables you to customize the power-management applications provided to end users. These power-management applications are displayed in the **Power Options** item in Control Panel and the battery meter located in the notification area.

You can display customized power plans and also add links to additional power-management software by using the settings in this component.

For more information about power-management, see [Battery Life Technical Reference](http://go.microsoft.com/fwlink/?LinkId=206664) in the Windows® Assessment and Deployment Kit (Windows ADK) Technical Reference.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[FlyoutAutoPowerScheme](flyoutautopowerscheme-win7-microsoft-windows-stobjectflyoutautopowerscheme.md)</p></td>
<td><p>Specifies the globally unique identifier (GUID) of the Battery Meter Fly-out Balanced power plan.</p></td>
</tr>
<tr class="even">
<td><p>[FlyoutHighPerformancePowerScheme](flyouthighperformancepowerscheme--win7-microsoft-windows-stobjectflyouthighperformancepowerscheme.md)</p></td>
<td><p>Specifies the GUID of the Battery Meter Fly-out High Performance power plan.</p>
<div class="alert">
<strong>Important</strong>  
<p>This setting is deprecated in Windows 8 and Windows® 7.</p>
<p>This setting is available in Windows Vista, Windows Server® 2012, Windows Server 2008 R2, and Windows Server 2008.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p>[FlyoutPowerSaverPowerScheme](flyoutpowersaverpowerscheme-win7-microsoft-windows-stobjectflyoutpowersaverpowerscheme.md)</p></td>
<td><p>Specifies the GUID of the Battery Meter Fly-out Power Saver power plan.</p></td>
</tr>
<tr class="even">
<td><p>[CustomPowerApplication1](custompowerapplication1-win7-microsoft-windows-stobjectcustompowerapplication1.md)</p></td>
<td><p>Specifies the first Battery Meter custom context-menu item.</p></td>
</tr>
<tr class="odd">
<td><p>[CustomPowerApplication2](custompowerapplication2-win7-microsoft-windows-stobjectcustompowerapplication2.md)</p></td>
<td><p>Specifies the second Battery Meter custom context-menu item.</p></td>
</tr>
<tr class="even">
<td><p>[CustomPowerApplication3](custompowerapplication3-win7-microsoft-windows-stobjectcustompowerapplication3.md)</p></td>
<td><p>Specifies the third Battery Meter custom context-menu item.</p></td>
</tr>
<tr class="odd">
<td><p>[CustomPowerApplication4](custompowerapplication4-win7-microsoft-windows-stobjectcustompowerapplication4.md)</p></td>
<td><p>Specifies the fourth Battery Meter custom context-menu item.</p></td>
</tr>
<tr class="even">
<td><p>[CustomPowerApplication5](custompowerapplication5-win7-microsoft-windows-stobjectcustompowerapplication5.md)</p></td>
<td><p>Specifies the fifth Battery Meter custom context-menu item.</p></td>
</tr>
<tr class="odd">
<td><p>[CustomPowerApplication6](custompowerapplication6-win7-microsoft-windows-stobjectcustompowerapplication6.md)</p></td>
<td><p>Specifies the sixth Battery Meter custom context-menu item.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

## Related topics


[Microsoft-Windows-powercpl](microsoft-windows-powercpl-win7-microsoft-windows-powercpl.md)

[Components](components-b-unattend.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20Microsoft-Windows-stobject%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





