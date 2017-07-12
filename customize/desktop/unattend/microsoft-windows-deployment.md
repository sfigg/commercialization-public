---
title: Microsoft-Windows-Deployment
description: Microsoft-Windows-Deployment
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c1fa294c-b5f8-4ffd-9dbb-4f39f6b4ee9e
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-Deployment


The Microsoft-Windows-Deployment component specifies settings related to auditing a computer.

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[AuditComputerName](microsoft-windows-deployment-auditcomputername.md)</p></td>
<td><p>Specifies the name of the computer being audited, and whether to restart the computer immediately after you specify this name.</p></td>
</tr>
<tr class="even">
<td><p>[DeviceForm](microsoft-windows-deployment-deviceform.md)</p></td>
<td><p>Specifies the device form factor running the OS.</p></td>
</tr>
<tr class="odd">
<td><p>[DuplicatorDescription](microsoft-windows-deployment-duplicatordescription.md)</p></td>
<td><p>Specifies a description of the duplication tool used, as well as any other information that an OEM or an administrator stores in the registry.</p></td>
</tr>
<tr class="even">
<td><p>[ExtendOSPartition](microsoft-windows-deployment-extendospartition.md)</p></td>
<td><p>Specifies whether to extend the partition on which you are installing Windows.</p></td>
</tr>
<tr class="odd">
<td><p>[Generalize](microsoft-windows-deployment-generalize.md)</p></td>
<td><p>Instructs Windows Setup to shut down the system after other answer-file settings are processed, and then to start the <strong>generalize</strong> configuration pass.</p></td>
</tr>
<tr class="even">
<td><p>[Reseal](microsoft-windows-deployment-reseal.md)</p></td>
<td><p>Specifies whether the computer runs in audit mode or in Out-of-Box Experience (OOBE) when it next starts.</p></td>
</tr>
<tr class="odd">
<td><p>[RunAsynchronous](microsoft-windows-deployment-runasynchronous.md)</p></td>
<td><p>Specifies one or more commands to run asynchronously on the operating system during the specified configuration pass.</p></td>
</tr>
<tr class="even">
<td><p>[RunSynchronous](microsoft-windows-deployment-runsynchronous.md)</p></td>
<td><p>Specifies one or more commands to run synchronously on the operating system during the specified configuration pass.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

## Related topics


[Components](components-b-unattend.md)

 

 







