---
author: joshbax-msft
title: Latency - Touch Down
description: Latency - Touch Down
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f17f16e6-1c58-4b2b-9b63-a17d856d004b
---

# Latency - Touch Down


## Test name


**Test.AudioTouch.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.Performance.ActiveTouchdownLatency

## Test purpose


Verifies that the device is able to report first contact down within the required latency window.

## Tools required


-   **Ptstepmotor.exe**

-   RA Tool with Precision Touchpad modifications

## Validation steps


See detailed test instructions at [How to measure Touch Down Latency by using an Acoustic Measurement Tool](how-to-measure-touch-down-latency-by-using-an-acoustic-measurement-tool.md).

**Note**  
Use **Ptaudiotouch.exe** instead of the touch executable.

Only 50 taps during the collection phase are required for this class of device.

 

## Common errors


None

## Passing


This test has no permitted tolerance, therefore a recorded average touch-down latency &lt;= 25.0ms will result in a pass.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Latency%20-%20Touch%20Down%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





