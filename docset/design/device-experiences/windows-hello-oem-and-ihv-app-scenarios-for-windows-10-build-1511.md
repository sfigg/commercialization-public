---
title: Windows Hello OEM and IHV app scenarios for Windows 10 Build 1511
description: Windows Hello provides you the ability to enable facial or fingerprint recognition to log on to a Windows system or device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74515ED2-4D78-4735-BDC3-4DE311C28AD8
---

# Windows Hello OEM and IHV app scenarios for Windows 10 Build 1511

Note: this documentation is deprecated and will be removed for Windows 10 version 1703 GA.
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

 

 

 






