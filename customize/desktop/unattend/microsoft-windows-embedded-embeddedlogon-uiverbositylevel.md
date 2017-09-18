---
title: UIVerbosityLevel
description: Disables the Windows status messages during device startup, sign-in, and shut down.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: F866DD34-2A01-46BF-82B1-BFD5E43B2DFE
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# UIVerbosityLevel


Disables the Windows status messages during device startup, sign-in, and shut down.

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
<td><p>Do not suppress the Windows status messages during device startup, sign-in, and shut down.</p>
<p>This is the default value.</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Suppress the Windows status messages during device startup, sign-in, and shut down.</p></td>
</tr>
</tbody>
</table>

 

## Parent Hierarchy


[Microsoft-Windows-Embedded-EmbeddedLogon](microsoft-windows-embedded-embeddedlogon.md) | **UIVerbosityLevel**

## Valid Configuration Passes


offlineServicing

specialize

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Embedded-EmbeddedLogon](microsoft-windows-embedded-embeddedlogon.md).

## XML example


```
<settings pass="specialize">
    <component name="Microsoft-Windows-Embedded-EmbeddedLogon" processorArchitecture="x86" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
      <UIVerbosityLever>1</UIVerbosityLevel>
    </component>
</settings>
```

 

 






