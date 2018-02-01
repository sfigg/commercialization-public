---
title: EnableInputSuppression
description: Use to enable input suppression on a modern standby device with a clamshell form factor when the lid is closed, there is no external monitor connected, and the device is on DC power.
+MSHAttr: 
- 'PreferredSiteName:MSDN' 
- 'PreferredLib:/library/windows/hardware' 
ms.assetid: B96E275A-C2F6-4471-8077-93C829505006 
ms.author: alhopper
ms.date: 4/10/2018 
ms.topic: article 
ms.prod: windows-hardware 
ms.technology: windows-oem 
---
# EnableInputSuppression

Use to enable input suppression on a modern standby device with a clamshell form factor when the lid is closed, there is no external monitor connected, and the device is on DC power.

When the conditions above are met, it is expected that the device will stay in a low power state to preserve battery life. However, some input devices can wake the system from standby even if the user is not using them. For example, a Bluetooth mouse paired with the device may be stored inside a laptop bag with the device, and the motion of the mouse causes the device to wake. Enabling input suppression prevents this behavior.

## Aliases and setting visibility

* **Windows Provisioning:** `EnableInputSuppression`
* **Hidden setting:** Yes

## Values

| Value                 | Description                                    |
|:----------------------|:-----------------------------------------------|
| 1                     | Enable input suppression. |
| 0                     | Disable input suppression (default). |

## Applies to

Available in Windows 10, version 1803 and later versions of Windows.