---
title: Microsoft-Windows-Printing-Spooler-Core
description: Microsoft-Windows-Printing-Spooler-Core
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 863542e6-f206-4421-b26a-b326d0d13954
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-Printing-Spooler-Core


The Microsoft-Windows-Print-Spooler-Core is used to configure actions that the print spooler service performs when the computer starts. The print spooler actions will occur whenever the print spooler service is restarted. This includes system restart, user login, and manual restart of the print spooler service.

This setting has no effect on Server Core installations of Windows Server 2008, Windows Server 2008 R2, and Windows Server 2012.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[RemoveMPDW](microsoft-windows-printing-spooler-core-removempdw.md)</p></td>
<td><p>Specifies whether to remove the Microsoft Print to PDF print queue and driver package from a Windows installation.</p></td>
</tr>
<tr class="even">
<td><p>[RemoveMXDW](microsoft-windows-printing-spooler-core-removemxdw.md)</p></td>
<td><p>Specifies whether to remove the Microsoft XPS Document Writer (MXDW) print queue and driver package from a Windows installation.</p></td>
</tr>
<tr class="odd">
<td><p>[Start](microsoft-windows-printing-spooler-core-start.md)</p></td>
<td><p>Indicates whether the spooler autologger will start by default when the system boots.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

## Related topics


[Components](components-b-unattend.md)

 

 







