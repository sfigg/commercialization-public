---
title: Display settings
description: Settings in this subgroup control the power management of the display.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: E5D0D98D-00F9-4461-9289-8D15245AFD75
author: alhopper-msft
ms.author: alhopper
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Display settings


Settings in this subgroup control the power management of the display.

## <span id="Subgroup__GUID__aliases__and_setting_visibility"></span><span id="subgroup__guid__aliases__and_setting_visibility"></span><span id="SUBGROUP__GUID__ALIASES__AND_SETTING_VISIBILITY"></span>Subgroup, GUID, aliases, and setting visibility


-   **Subgroup:** Display settings

-   **GUID:** 7516b95f-f776-4464-8c53-06167f40cc99

-   **Windows provisioning path:** `Common\Power\Policy\Settings\Display`

-   **PowerCfg alias:** `SUB_VIDEO`

-   **Hidden setting:** Yes

## <span id="in_this_section"></span>In this section


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
<td><p>[Adaptive display idle timeout](display-settings-adaptive-display-idle-timeout.md)</p></td>
<td><p>Specifies whether the OS automatically scales the display idle time-out based on user activity.</p>
<p>If the user provides input to the system shortly after the display idle timeout is reached, Windows automatically extends the display idle time-out to deliver a better user experience.</p></td>
</tr>
<tr class="even">
<td><p>[Allow display required policy](display-settings-allow-display-required-policy.md)</p></td>
<td><p>Specifies whether Windows allows applications to temporarily prevent the display from automatically reducing brightness or turning off to save power.</p></td>
</tr>
<tr class="odd">
<td><p>[Dim annoyance timeout](display-settings-dim-annoyance-timeout.md)</p></td>
<td><p>This setting denotes the user annoyance detection threshold. It specifies the duration between automatic display brightness level reduction and user input to consider the automatic display brightness level reduction as an annoyance to the user.</p></td>
</tr>
<tr class="even">
<td><p>[Dim display brightness](display-settings-dim-display-brightness.md)</p></td>
<td><p>Denotes the reduced display brightness level after the dim idle timeout has been reached.</p></td>
</tr>
<tr class="odd">
<td><p>[Display brightness level](display-settings-display-brightness-level.md)</p></td>
<td><p>Specifies the default display brightness level.</p></td>
</tr>
<tr class="even">
<td><p>[Display idle timeout](display-settings-display-idle-timeout.md)</p></td>
<td><p>Specifies the period of inactivity before the display is automatically turned off.</p></td>
</tr>
</tbody>
</table>
