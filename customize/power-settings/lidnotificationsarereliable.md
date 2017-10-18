---
title: LidNotificationsAreReliable
description: Use to notify the OS whether the platform guarantees that lid notifications are sent whenever the lid is opened or closed.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: B96E275A-C2F6-4471-8077-93C829505006
ms.author: alhopper
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# LidNotificationsAreReliable

Use to notify the OS whether the platform guarantees that lid notifications are sent whenever the lid is opened or closed.

## <span id="Aliases_and_setting_visibility"></span><span id="aliases_and_setting_visibility"></span><span id="ALIASES_AND_SETTING_VISIBILITY"></span>Aliases and setting visibility

* **Windows Provisioning:** `LidNotificationsAreReliable`
* **Hidden setting:** Yes

## <span id="Values"></span><span id="values"></span><span id="VALUES"></span>Values

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
<td><p>True</p></td>
<td><p>The platform guarantees that lid notifications will be sent every time the device lid is opened or closed.</p>
<p>The OS suppresses Windows Hello when the device lid is closed to ensure further input is not processed and to save battery life.</p>
<p>OEMs must reliably report lid open and lid close events to opt-in to this setting. If there are scenarios where a lid open event is not reliably reported to the OS, Windows Hello may not work for the user.</p>
</td>
</tr>
<tr class="even">
<td><p>False</p></td>
<td><p>The platform does not guarantee that lid notifications are sent every time the device lid is opened or closed.</p></td>
</tr>
</tbody>
</table>

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks

Depending on your platform scenarios, you may also want to set the `LidOpenWake` setting ([Lid open wake action](lid-open-wake-action.md)). For example:

* If you want to implement a platform that does nothing when the lid is opened, but you want to suppress Windows Hello when the lid is closed, you'll want to set `LidOpenWake`=0 and `LidNotificationsAreReliable`=True.
* If you have a device that has a rigid keyboard and the risk of the lid opening and causing the device to turn on is low, you may want to implement a platform that turns on the display when the lid is opened, but you want to suppress Windows Hello when the lid is closed, you'll want to set `LidOpenWake`=1 and `LidNotificationsAreReliable`=True.

## <span id="Applies_to"></span><span id="applies_to"></span><span id="APPLIES_TO"></span>Applies to

Available in Windows 10, version 1607 and later versions of Windows.