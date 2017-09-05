---
title: Microsoft-Windows-WiFiNetworkManager
description: Specifies settings that you can configure for the Wi-Fi Sense feature.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C13C9E90-E50B-4AD8-AA86-1AA10CDDD218
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-WiFiNetworkManager


Specifies settings that you can configure for the Wi-Fi Sense feature.

**This setting has been deprecated in Windows 10, version 1607**. The information about this deprecated setting is provided for reference only. The Wi-Fi Sense credential sharing feature has been removed.

Wi-Fi Sense automatically connects you to Wi-Fi so you can get online quickly in more places. It can connect you to open Wi-Fi hotspots that it knows about through crowdsourcing, or to Wi-Fi networks that your contacts have shared with you by using Wi-Fi Sense.

Wi-Fi Sense can discover your device location even when location is turned off for your user account. This is true whenever Wi-Fi Sense is turned on. Wi-Fi Sense uses your location to find suggested open Wi-Fi hotspots.

## Child elements


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
<td><p>[DefaultAutoConnectSharedState](microsoft-windows-wifinetworkmanager-defaultautoconnectsharedstate.md)</p></td>
<td><p>If enabled, the OOBE <strong>Wi-Fi Sense</strong> checkbox to share networks with contacts will be checked.</p></td>
</tr>
<tr class="even">
<td><p>[WiFiSharingFacebookInitial](microsoft-windows-wifinetworkmanager-wifisharingfacebookinitial.md)</p></td>
<td><p>Controls how Wi-Fi networks are shared with the user's Facebook contacts.</p></td>
</tr>
<tr class="odd">
<td><p>[WiFiSharingOutlookInitial](microsoft-windows-wifinetworkmanager-wifisharingoutlookinitial.md)</p></td>
<td><p>Controls how Wi-Fi networks are shared with the user's Outlook contacts.</p></td>
</tr>
<tr class="even">
<td><p>[WiFiSharingSkypeInitial](microsoft-windows-wifinetworkmanager-wifisharingskypeinitial.md)</p></td>
<td><p>Controls how Wi-Fi networks are shared with the user's Skype contacts.</p>
<p><strong>This setting has been deprecated in Windows 10, version 1607</strong>. The information about this deprecated setting is provided for reference only. The Wi-Fi Sense credential sharing feature has been removed.</p></td>
</tr>
</tbody>
</table>

 

## Applies To


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

## Related topics


[Components](components-b-unattend.md)

 

 







