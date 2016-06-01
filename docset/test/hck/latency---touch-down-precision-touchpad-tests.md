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

 

 







