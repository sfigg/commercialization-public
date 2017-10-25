---
title: DismImageIdentifier Enumeration
description: DismImageIdentifier Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/desktop'
ms.assetid: 964d4712-fb57-479a-a6a6-258640cf8e21
---

# DismImageIdentifier Enumeration


Specifies whether an image is identified by name or by index number.

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


``` syntax
enum DismImageIdentifier
{
    DismImageIndex = 0,
    DismImageName = 1
};
```

## <span id="Constants"></span><span id="constants"></span><span id="CONSTANTS"></span>Constants


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Constant</th>
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><em>DismImageIndex</em></p></td>
<td><p>0</p></td>
<td><p>Identify the image by index number.</p></td>
</tr>
<tr class="even">
<td><p><em>DismImageName</em></p></td>
<td><p>1</p></td>
<td><p>Identify the image by name.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Supported host platforms:</p></td>
<td><p>DISM API can be used on any operating system supported by the Windows® Assessment and Deployment Kit (Windows ADK). For more information, see the [Windows ADK Technical Reference](http://go.microsoft.com/fwlink/?LinkId=206587).</p></td>
</tr>
<tr class="even">
<td><p>Supported image platforms:</p></td>
<td><p>Windows® 7, Windows Server 2008 R2, Windows PE 3.0, Windows 8, Windows Server® 2012, Windows Preinstallation Environment (Windows PE) 4.0</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[DismMountImage Function](dismmountimage-function.md)

 

 




