---
title: CellularSettings CSP
description: CellularSettings CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ce8b6f16-37ca-4aaf-98b0-306d12e326df
---

# CellularSettings CSP


<div style="color:red">[Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</div>


The CellularSettings configuration service provider is used to configure cellular settings on a mobile device.

Starting in the next major update to Windows 10, the CellularSettings CSP is supported in Windows 10 Home, Pro, Enterprise, and Education editions.

The following image shows the CellularSettings CSP in tree format as used by Open Mobile Alliance Client Provisioning (OMA CP). The OMA DM protocol is not supported with this configuration service provider.

![provisioning\-csp\-cellularsettings](images/provisioning-csp-cellularsettings.png)

<a href="" id="dataroam"></a>**DataRoam**  
Optional. Integer. Specifies the default roaming value. Valid values are:

<table>
<colgroup>
<col width="20%" />
<col width="80%" />
</colgroup>
<thead>
<tr class="header">
<th>Value</th>
<th>Setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>Don’t roam</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>Don’t roam (or Domestic roaming if applicable)</p></td>
</tr>
<tr class="odd">
<td><p>2</p></td>
<td><p>Roam</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






