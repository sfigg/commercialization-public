---
title: Microsoft-Windows-WPD-BusEnumService
description: Microsoft-Windows-WPD-BusEnumService
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d3336b02-03e0-47ff-90a0-42ba6b8fcda0
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-WPD-BusEnumService


The `Microsoft-Windows-WPD-BusEnumService` component contains settings used to manage how the system searches for devices that use Media Transfer Protocol over Bluetooth (MTP/BT).

MTP/BT enables the computer to synchronize and transfer data between the computer and portable devices. For example, the computer may synchronize Windows Media Player music and playlists to a portable music device.

## In This Section


This component includes two settings:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[BTSearchIntervalOnAC](microsoft-windows-wpd-busenumservice-btsearchintervalonac.md)</p></td>
<td><p>Specifies how often the computer will search for portable devices using MTP/BT while plugged in to AC power.</p></td>
</tr>
<tr class="even">
<td><p>[BTSearchIntervalOnDC](microsoft-windows-wpd-busenumservice-btsearchintervalondc.md)</p></td>
<td><p>Specifies how often the computer will search for portable devices using MTP/BT while on battery power.</p></td>
</tr>
<tr class="odd">
<td><p>[RegCacheUpdated](microsoft-windows-wpd-busenumservice-regcacheupdated.md)</p></td>
<td><p>For Microsoft internal use only.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

## Related topics


[Components](components-b-unattend.md)

 

 







