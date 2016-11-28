---
title: Windows Pen Designs
description: This topic presents information about the pen devices that are compatible with Windows 10.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 134415A0-6A47-4130-B2A5-B1B89B625B4C
---

# Windows Pen Designs


This topic presents information about the pen devices that are compatible with Windows 10.

## Physical Design


The physical pen device that the user interacts with may have a variety of industrial designs. However all compatible integrated Windows 10 pen devices have a pressure sensitive tip and an erase *affordance*. The erase affordance can be implemented as a physical button on the pen, or as a tail-end eraser (similar to a traditional pencil). The following image illustrates these potential implementations; a pen with a tail-end eraser on the left and a pen with an eraser button on the right.

![windows pen designs, showing the pressure sensing tips, some buttons, and implementations for an erase feature.](../images/pen-designs-v2.png)

For information about the erase affordance, the optional barrel button, and how to report pressure, see [Windows Pen States](windows-pen-states.md).

## Button Placement


If implementing a Bluetooth button to support the quick launch features of Windows Ink Workspace, please ensure that the button is placed at the tail-end of the pen device as shown in the above figure.

**Note**  Bluetooth buttons should not be placed on the side of the barrel, nor should barrel buttons utilized for selection or erase be overloaded with functionality that depends on the pen’s position/state, as this typically leads to a subpar user experience.  

 

## Bluetooth Button Implimentation


To implement a tail-end Bluetooth button, the device will report 3 distinct keyboard combinations corresponding to 3 distinct button actions via a HID Bluetooth LE keyboard device exposed to the host. The actions and corresponding keyboard combinations are outlined below:

| Bluetooth Button Action | Key Combination to Report |
|-------------------------|---------------------------|
| Single-click            | WIN+F20                   |
| Double-clock            | WIN+F19                   |
| Press and hold          | WIN+F18                   |

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Windows%20Pen%20Designs%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




