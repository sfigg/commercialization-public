---
title: Microsoft-Windows-PnpSysprep
description: Microsoft-Windows-PnpSysprep
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1be14a5d-3fc1-4424-bfd0-fa5664ceb92c
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-PnpSysprep


The Microsoft-Windows-PnpSysprep component specifies whether all Plug and Play information persists during the generalize configuration pass and the specialize configuration pass.

Typically, during the **generalize** configuration pass, all device information is removed from the reference computer.

During the **specialize** configuration pass, any Plug and Play devices that are detected on the destination computer are re-initialized. Any Plug and Play devices that are not detected are removed from the computer.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[DoNotCleanUpNonPresentDevices](microsoft-windows-pnpsysprep-donotcleanupnonpresentdevices.md)</p></td>
<td><p>Specifies whether Plug and Play information persists on the destination computer during the following specialize configuration pass.</p></td>
</tr>
<tr class="even">
<td><p>[PersistAllDeviceInstalls](microsoft-windows-pnpsysprep-persistalldeviceinstalls.md)</p></td>
<td><p>Specifies whether all Plug and Play information persists on the destination computer during the generalize configuration pass.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

## Related topics


[Components](components-b-unattend.md)

 

 







