<<<<<<< HEAD
---
title: AdaptiveBrightness
description: AdaptiveBrightness
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c60042e8-652f-4f9f-9cc0-2e93c17022a6
ms.mktglfcycl: deploy
ms.sitesec: msdn
author: alhopper-msft
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# AdaptiveBrightness

`AdaptiveBrightness` contains settings related to adaptive brightness.

Adaptive brightness changes the brightness of a monitor or display based on the ambient light.

## Child Elements

| Setting                 | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| [ALRCurveVersion](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-alrcurveversion.md)    | ALRCurveVersion sets the ALR algorithm version (1 or 2) against which the ALR curve data should be interpreted.    |
| [ALRPoints](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-alrpoints.md) | Specifies the ambient light response (ALR) curve data. |
| [AutobrightnessLuxToNitsCurve](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-autobrightnessluxtonitscurve.md)    | This setting is not supported. Do not use.    |
| [DefaultSliderPosition](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-defaultsliderposition.md)    | Sets the system default for screen brightness. It's only used when Autobrightness is not the default.  |
| [DisplayResponseInterval](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-displayresponseinterval.md) | Specifies the minimum time, in milliseconds, between changes in display brightness due to lighting conditions. |
| [IlluminanceChangeSensitivity](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-illuminancechangesensitivity.md) | Specifies the percentage change in illuminance (lux) required to cause a change in display brightness. Specified in percentage change since the last change in display brightness. |
| [IsAutobrightnessEnabledByDefault](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-isautobrightnessenabledbydefault.md)    | Specifies whether autobrightness is enabled by default.     |

## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MobilePC-Sensors-API](microsoft-windows-mobilepc-sensors-api.md) | **AdaptiveBrightness**

## Applies To

For the list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-mobilepc-sensors-api-](microsoft-windows-mobilepc-sensors-api.md).

## XML Example

The following sample XML output shows how to set adaptive brightness:

```XML
<ALRPoints>000000000a0000000a00000028000000280000005000000044</ALRPoints>
<DisplayResponseInterval>60000</DisplayResponseInterval>
<IlluminanceChangeSensitivity>20</IlluminanceChangeSensitivity>
```

## Related topics

[Microsoft-Windows-MobilePC-Sensors-API](microsoft-windows-mobilepc-sensors-api.md)
=======
---
title: AdaptiveBrightness
description: AdaptiveBrightness
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c60042e8-652f-4f9f-9cc0-2e93c17022a6
ms.mktglfcycl: deploy
ms.sitesec: msdn
author:themar-msft
ms.author:themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# AdaptiveBrightness

`AdaptiveBrightness` contains settings related to adaptive brightness.

Adaptive brightness changes the brightness of a monitor or display based on the ambient light.

## Child Elements

| Setting                 | Description                                                                           |
|:------------------------|:--------------------------------------------------------------------------------------|
| [ALRPoints](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-alrpoints.md) | Specifies the ambient light response (ALR) curve data. |
| [DisplayResponseInterval](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-displayresponseinterval.md) | Specifies the minimum time, in milliseconds, between changes in display brightness due to lighting conditions. |
| [IlluminanceChangeSensitivity](microsoft-windows-mobilepc-sensors-api-adaptivebrightness-illuminancechangesensitivity.md) | Specifies the percentage change in illuminance (lux) required to cause a change in display brightness. Specified in percentage change since the last change in display brightness. |

## Valid Configuration Passes

specialize

## Parent Hierarchy

[Microsoft-Windows-MobilePC-Sensors-API](microsoft-windows-mobilepc-sensors-api.md) | **AdaptiveBrightness**

## Applies To

For the list of the supported Windows editions and architectures that this component supports, see [microsoft-windows-mobilepc-sensors-api-](microsoft-windows-mobilepc-sensors-api.md).

## XML Example

The following sample XML output shows how to set adaptive brightness:

```XML
<ALRPoints>000000000a0000000a00000028000000280000005000000044</ALRPoints>
<DisplayResponseInterval>60000</DisplayResponseInterval>
<IlluminanceChangeSensitivity>20</IlluminanceChangeSensitivity>
```

## Related topics

[Microsoft-Windows-MobilePC-Sensors-API](microsoft-windows-mobilepc-sensors-api.md)
>>>>>>> 814244ed2114bf3af4c7deb84f5c9c68989b611d
