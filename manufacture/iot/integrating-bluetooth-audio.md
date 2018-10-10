---
author: joslobo
Description: 'Integrating Bluetooth Audio on IoT'
title: 'Integrating Bluetooth Audio Features'
ms.author: joslobo
ms.date: 08/29/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Integrating A2DP Audio on IoT

Windows 10 Iot Core supports the Bluetooth A2DP audio profile.  When creating a custom image for your platform, you may add IOT\_BLUETOOTH\_A2DP\_SINK so your device can receive audio via Bluetooth from another device, or IOT\_BLUETOOTH\_A2DP\_SOURCE to support audio playback via Bluetooth to another device.  For example, a smart speaker device would include the IOT\_BLUETOOTH\_A2DP\_SINK feature. Likewise, a portable music player would include the IOT\_BLUETOOTH\_A2DP\_SOURCE feature.  

It is possible create dual role devices by including both IOT\_BLUETOOTH\_A2DP\_SINK and IOT\_BLUETOOTH\_A2DP\_SOURCE features within a single device.  Dual role devices will pair and function with another single role device.  However, if a dual role device pairs with another dual role device, the Windows IoT Bluetooth implementation will favor one role over the other. By default, the preferred role is A2DP-Source. So, for example, when a dual role IoT Device pairs to another dual role device, the first device will behave as if it only supports A2DP-Source.

The role preference may be switched through the IoTSettings tool.  Note that when switching roles, a reboot is required and devices will need to be re-paired.  To avoid the reboot and re-pair situation, it is recommended that dual mode devices choose a specific role preference as a [Runtime Customization](https://docs.microsoft.com/en-us/windows/iot-core/build-your-image/oscustomizations) in the oemcustomizations.cmd file.

