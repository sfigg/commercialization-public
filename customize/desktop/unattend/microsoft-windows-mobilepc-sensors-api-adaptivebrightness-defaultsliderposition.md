---
title: DefaultSliderPosition
description: DefaultSliderPosition sets the system default for screen brightness.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: kenpacq
author: kenpacq
ms.date: 10/02/2018
ms.topic: article
ms.prod: windows - hardware
ms.technology: windows - oem
---

# DefaultSliderPosition

DefaultSliderPosition sets the system default for screen brightness.

This setting is only used when [IsAutobrightnessEnabledByDefault](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-isautobrightnessenabledbydefault.md) is set to false.

This setting only applies to nits based systems. It is ignored on percentage based systems.

## Values

| Value                   | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| default_brightness      | Sets the default slider position for manual brightness. Valid values are between 0-100. | 

## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MobilePC-Sensors-API-AdaptiveBrightness](microsoft-windows-mobilepc-sensors-api-adaptivebrightness.md) | **DefaultSliderPosition**

## Applies To

To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/wsim/configure-components-and-settings-in-an-answer-file).

## XML Example

```XML
<IsAutobrightnessEnabledByDefault>false</IsAutobrightnessEnabledByDefault>
<DefaultSliderPercentage>75</DefaultSliderPercentage>
```

## Related Topics

[Microsoft-Windows-MobilePC-Sensors-API-AdaptiveBrightness](microsoft-windows-mobilepc-sensors-api-adaptivebrightness.md)
