---
title: Sleep settings
description: Settings in this subgroup control sleep, resume, and other related functionality.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 09752DA1-5873-42B6-8C20-D49B9D4698F0
author: themar-msft
ms.author: themar
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Sleep settings


Settings in this subgroup control sleep, resume, and other related functionality.

## <span id="Subgroup__GUID__aliases__and_setting_visibility"></span><span id="subgroup__guid__aliases__and_setting_visibility"></span><span id="SUBGROUP__GUID__ALIASES__AND_SETTING_VISIBILITY"></span>Subgroup, GUID, aliases, and setting visibility


-   **Subgroup:** Sleep settings

-   **GUID:** 238c9fa8-0aad-41ed-83f4-97be242c8f20

-   **Windows provisioning path:** `Common\Power\Policy\Settings\Sleep`

-   **PowerCfg alias:** `SUB_SLEEP`

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
<td><p>[Allow away mode](sleep-settings-allow-away-mode.md)</p></td>
<td><p>Specifies whether the system uses away mode. If this setting is disabled, away mode is not used even if programs request it.</p></td>
</tr>
<tr class="even">
<td><p>[Allow sleep with open remote files](sleep-settings-allow-sleep-with-open-remote-files.md)</p></td>
<td><p>Configures the network file system to prevent the computer from automatically entering sleep when remote network files are open.</p></td>
</tr>
<tr class="odd">
<td><p>[Allow sleep states](sleep-settings-allow-sleep-states.md)</p></td>
<td><p>Specifies whether the system uses low power sleep states.</p></td>
</tr>
<tr class="even">
<td><p>[Allow system required requests](sleep-settings-allow-system-required-requests.md)</p></td>
<td><p>Configures the power manager to accept or ignore application system required requests. These requests prevent the system from automatically entering sleep after a period of user inactivity.</p></td>
</tr>
<tr class="odd">
<td><p>[Automatically wake for tasks](sleep-settings-automatically-wake-for-tasks.md)</p></td>
<td><p>Specifies whether the system uses the system-wide wake-on-timer capability.</p>
<p>The system can automatically use wake-on-timer on capable hardware to perform scheduled tasks. For example, the system might wake automatically to install updates.</p></td>
</tr>
<tr class="even">
<td><p>[Hibernate idle timeout](sleep-settings-hibernate-idle-timeout.md)</p></td>
<td><p>Specifies the duration of time after sleep that the system automatically wakes and enters hibernation.</p></td>
</tr>
<tr class="odd">
<td><p>[Hybrid sleep](sleep-settings-hybrid-sleep.md)</p></td>
<td><p>Specifies whether the system can enter hybrid sleep.</p></td>
</tr>
<tr class="even">
<td><p>[Sleep idle timeout](sleep-settings-sleep-idle-timeout.md)</p></td>
<td><p>Specifies the duration of inactivity before the system automatically enters sleep.</p></td>
</tr>
<tr class="odd">
<td><p>[Sleep unattended idle timeout](sleep-settings-sleep-unattended-idle-timeout.md)</p></td>
<td><p>Specifies the duration of inactivity before the system automatically enters sleep after waking from sleep in an unattended state.</p></td>
</tr>
</tbody>
</table>
