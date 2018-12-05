---
title: ALRCurveVersion 
description: ALRCurveVersion sets the ALR algorithm version (1 or 2) against which the ALR curve data should be interpreted.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: kenpacq
author: kenpacq
ms.date: 10/02/2018
ms.topic: article
ms.prod: windows - hardware
ms.technology: windows - oem
ms.custom: RS5
---

# ALRCurveVersion

ALRCurveVersion sets the ALR algorithm version (1 or 2) against which the ALR curve data should be interpreted. For new systems, the recommended value is 2. This setting only applies to percentage based systems, it is ignored on nits-based systems.

## Values

| Value                   | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| 1                       | Uses ALR Algorithm version 1 to interpret the ALR curve data. |
| 2                       | Uses ALR Algorithm version 2 to interpret the ALR curve data. Recommended for new systems. |

## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MobilePC-Sensors-API-AdaptiveBrightness](microsoft-windows-mobilepc-sensors-api-adaptivebrightness.md) | **ALRCurveVersion**

## Applies To

To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/wsim/configure-components-and-settings-in-an-answer-file).

## XML Example

```XML
<ALRCurveVersion>2</ALRCurveVersion>
<ALRPoints>000000000a0000000a00000028000000280000005000000044</ALRPoints>
<DisplayResponseInterval>60000</DisplayResponseInterval>
<IlluminanceChangeSensitivity>20</IlluminanceChangeSensitivity>
```

## Related Topics

[ALRPoints](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-alrpoints.md)

[DisplayResponseInterval](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-displayresponseinterval.md)

[IlluminanceChangeSensitivity](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-illuminancechangesensitivity.md)

