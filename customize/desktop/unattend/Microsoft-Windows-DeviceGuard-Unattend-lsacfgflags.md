---
title: LsaCfgFlags
description: Use to enable the Credential Guard, which uses virtualization-based security to isolate secrets so that only privileged system software can access them when they are stored on disk or in memory. For more information, see Credential Guard.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ECD984A7-A66C-4A9D-9003-7D5340D3B6E5
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# LsaCfgFlags


Use to enable the Credential Guard, which uses virtualization-based security to isolate secrets so that only privileged system software can access them when they are stored on disk or in memory. For more information, see [Credential Guard]( http://go.microsoft.com/fwlink/p/?LinkId=623856).

**Important**  You must first use DISM to add the virtualization-based security features before you apply this Unattend setting. For more information, see *Add the virtualization-based security features by using DISM* in [Credential Guard]( http://go.microsoft.com/fwlink/p/?LinkId=623856).

 

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>Disables Credential Guard.</p>
<p>This is the default OS value.</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Enables Credential Guard.</p></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Enables Credential Guard without making it persist to the UEFI.</p></td>
</tr>
</tbody>
</table>

 

## Parent Hierarchy


[Microsoft-Windows-DeviceGuard-Unattend](microsoft-windows-deviceguard-unattend.md) | **LsaCfgFlags**

## Valid Configuration Passes


offlineServicing

## Applies To


Windows 10 Enterprise

Windows Server 2016

For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-DeviceGuard-Unattend](microsoft-windows-deviceguard-unattend.md).

 

 






