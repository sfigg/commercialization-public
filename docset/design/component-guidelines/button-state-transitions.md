---
title: Button State Transitions
description: Button State Transitions
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: EA2FFEBE-3805-4370-9E68-9597D42FC889
---

# Button State Transitions


Certain button state transitions are expected from devices. Devices that support hovering must include the **In-range** and **Tip** usages in their descriptor.

The transitions for these devices are listed in the following table.

| Event                                                     | Button Status         |
|-----------------------------------------------------------|-----------------------|
| Device comes in range                                     | In-range=on; Tip=off  |
| Device comes in contact with the surface of the digitizer | In-range=on; Tip=on   |
| Contact is moving on the digitizer surface                | In-range=on; Tip=on   |
| Contact is lifted off of the digitizer surface            | In-range=off; Tip=off |
| Contact goes out of range                                 | In-range=off; Tip=off |

 

**Note**  The X and Y coordinates reported for the “out of range” event must match those reported for the last “in range” event before the “out of range” event was detected. For the case when the device goes “out of range” very quickly, where “up” and “out of range” are detected in the same scan, both events or packets need to be reported. One for “up”, and another for “out of range”.

 

Devices that do not support hovering do not need to include the **In-range** usage in their descriptor. The transitions for these devices are listed in the following table.

| Event                                                     | Button Status         |
|-----------------------------------------------------------|-----------------------|
| Device comes in contact with the surface of the digitizer | Tip=on                |
| Contact is moving on the digitizer surface                | In-range=on; Tip=on   |
| Contact is lifted off of the digitizer surface            | In-range=off; Tip=off |

 

**Note**  The X and Y coordinates reported when the finger is lifted off the digitizer surface must be the same as those reported for the last “move” packet detected.

 

The transitions for pen devices that support the Eraser and Inverted usages are given in the following table. These are the only valid states. Any other state may be rejected by Windows.

| Event                                                       | Button Status                                   |
|-------------------------------------------------------------|-------------------------------------------------|
| Tip end of pen is hovering                                  | In-range=on; Tip=off; Inverted=off; Eraser=off  |
| Tip end of pen is on the surface                            | In-range=on; Tip=on; Inverted=off; Eraser=off   |
| Tip end of pen is off the surface and hovering again        | In-range=on; Tip=off; Inverted=off; Eraser=off  |
| Tip goes out of range                                       | In-range=off; Tip=off; Inverted=off; Eraser=off |
| Eraser end of the pen is hovering                           | In-range=on; Tip=off; Inverted=on; Eraser=off   |
| Eraser end of the pen is on the surface                     | In-range=on; Tip=off; Inverted=off; Eraser=on   |
| Eraser end of the pen is off the surface and hovering again | In-range=on; Tip=off; Inverted=on; Eraser=off   |
| Eraser goes out of range                                    | In-range=off; Tip=off; Inverted=off; Eraser=off |

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Button%20State%20Transitions%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




