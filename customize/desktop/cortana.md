---
title: “Hey Cortana” feature
description: Include the “Hey Cortana” feature
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
author: themar-msft
ms.author: themar
ms.date: 10/05/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# “Hey Cortana” feature

The “Hey Cortana” feature enables users to more easily engage Cortana on their Windows 10 device by speaking the phrase “Hey Cortana”. 

For devices that meet hardware requirements, users have the option of enabling "Hey Cortana" during the OOBE flow, on the screen which asks the user if they’d like to make Cortana their personal assistant. The option is unchecked by default.

 After OOBE, users can also enable "Hey Cortana" from **Cortana & Search Settings**. By default, "Hey Cortana" is not enabled.

## Configure Hey Cortana 

To optimize battery life, by default, Windows only asks users if they want to enable "Hey Cortana" on desktop devices with a microphone

For Windows 10, version 1709 and later, you an also include this option during OOBE if your device meets the policy requirement of including a [hardware-offloaded key spotter (HW KWS)](https://docs.microsoft.com/windows-hardware/drivers/audio/voice-activation).

For devices that meet this requirement, set the registry key: `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Speech_OneCore\AudioPolicy\VoiceActivationIsBatteryCertified` to 1.

To learn more, see [Voice Activation](https://docs.microsoft.com/windows-hardware/drivers/audio/voice-activation).
