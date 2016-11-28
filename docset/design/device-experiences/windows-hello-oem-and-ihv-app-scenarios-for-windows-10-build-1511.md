---
title: Windows Hello OEM and IHV app scenarios for Windows 10 Build 1511
description: Windows Hello provides you the ability to enable facial or fingerprint recognition to log on to a Windows system or device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74515ED2-4D78-4735-BDC3-4DE311C28AD8
---

# Windows Hello OEM and IHV app scenarios for Windows 10 Build 1511


Windows Hello provides you the ability to enable facial or fingerprint recognition to log on to a Windows system or device.

The Providers APIs allow IHVs and OEMs to expose depth, infrared, and color cameras (and related metadata) for computer vision into UWP, and to designate a camera as participating in Windows Hello face authentication. The [**Windows.Devices.Perception**](https://msdn.microsoft.com/library/windows/hardware/mt187676) namespace contains the client APIs that allow a UWP application to access the color, depth, or infrared data of computer vision cameras.

Microsoft Windows Hello OEM and IHV app scenarios are currently focused on enabling a generic infrared camera to work with Windows Hello. This section contains a topic that describe how to enable a generic IR camera, as well as an accompanying sample and verification tool.

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Enable Windows Hello for a infrared camera for Windows 10 Build 1511](enable-windows-hello-for-a-infrared-camera-for-windows-10-build-1511.md)</p></td>
<td><p>Windows Hello provides you the ability to enable facial or fingerprint recognition to log on to a Windows 10 system or device. This topic discusses how to enable Windows Hello for an infrared video camera and is meant for original equipment manufacturers (OEMs) and independent hardware vendors (IHVs) who want to provide this log on functionality in their devices. Specifically, IHVs who are producing calibrated color, IR or depth sensors for use by the app-facing Perception APIs, and OEMs who are assembling and calibrating across sensors from various IHVs to produce a final device.</p></td>
</tr>
<tr class="even">
<td><p>[Windows Hello infrared camera sample for Windows 10 Build 1511](windows-hello-infrared-camera-sample-for-windows-10-build-1511.md)</p></td>
<td><p>This sample demonstrates a basic implementation of the [Windows.Devices.Perception.Provider](https://msdn.microsoft.com/library/windows/apps/windows.devices.perception.provider.aspx) interfaces to enable Windows Hello for a infrared video camera.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Windows%20Hello%20OEM%20and%20IHV%20app%20scenarios%20for%20Windows%2010%20Build%201511%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




