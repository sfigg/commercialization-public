---
title: Device Integration
description: This topic discusses the considerations and requirements for integrating a Windows Precision Touchpad device into a host system.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: B259DF23-6BEE-4A12-9A1C-E58AFDEBC675
---

# Device Integration


This topic discusses the considerations and requirements for integrating a Windows Precision Touchpad device into a host system.

Windows Precision Touchpad devices define an experience, and integration of the device has a significant impact on how accurately that experience is implemented. The following sections provide information about the various factors that have to be considered for a successful device integration.

## Size


A Windows Precision Touchpad device should have a sensor with minimum dimensions of 32mm x 64mm, as shown in the following diagram. This should be the minimum permissible size that is reported via the physical maximum for X and for Y in the report descriptor.

![diagram showing the minimum dimensions for a windows precision touchpad device.](images/precision-img-minsize.png)

The best Windows Precision Touchpad devices should have the recommended dimensions of approximately 65mm x 105mm, as shown in the following diagram, to allow for more comfortable interactions.

![diagram showing the optimal dimensions for a windows precision touchpad device.](images/precision-img-optisize.png)

## Placement


Windows Precision Touchpad placement is defined by three measurements: horizontal offset, vertical offset and depth offset.

**Horizontal Offset**

The optimal placement for a Windows Precision Touchpad is to center the device with the line which bisects the 'F' and 'J' keys of the integrated keyboard as shown in the following diagram.

![diagram showing the optimal horizontal placement for a windows precision touchpad device. the touchpad is centered on a line that bisects the 'f' and 'j' keys of the integrated keyboard.](images/precision-img-zerooffset.png)

If a Windows Precision Touchpad device cannot be integrated with the optimal zero offset, then the integrator should store the positive or negative offset value (in himetric units) in the registry to allow the host device to compensate.

If a device has an offset, the value to store is calculated by taking the length of the touchpad to the right of the bisecting line (Y) and subtracting the length of the touchpad to the left of the bisecting line (X), such that Y – X = Offset value. If a device has a right offset, this value will be positive, whereas a device with a left offset will result in a negative value. The following diagram shows the 'X' and 'Y' distances referenced in the preceding explanation.

![diagram showing a windows precision touchpad that is placed with a right-offset, relative to the center line that bisects the 'f' and 'j' keys on the integrated keyboard.](images/precision-img-rightoffset.png)

The Windows registry key that stores information about the horizontal offset of the touchpad is:

**HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\PrecisionTouchPad**
And here are the relevant variables with their values:

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Setting</th>
<th>Name</th>
<th>Type</th>
<th>Default value</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Horizontal Offset</td>
<td>HorizontalOffset</td>
<td>DWORD</td>
<td>0</td>
<td>Absolute offset distance in himetric units.</td>
</tr>
<tr class="even">
<td><p>Indicate Negative</p></td>
<td><p>HorizontalOffsetIsNeg</p></td>
<td><p>DWORD</p></td>
<td><p>0</p></td>
<td><p>0 = Positive Offset</p>
<p>1 = Negative Offset</p></td>
</tr>
</tbody>
</table>

 

**Vertical Offset**

Windows Precision Touchpad devices can be integrated at different vertical offsets from the keyboard spacebar as shown in the following diagram. The integrator should store the positive offset (in himetric units) in the registry, to allow the host to compensate. If a value is not provided, the host should assume a default offset of 14mm.

![diagram showing how the vertical offset for a windows precision touchpad is measured, relative to the keyboard spacebar.](images/precision-img-vertoffset.png)

The Windows registry key that stores information about the vertical offset of the touchpad is:

**HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\PrecisionTouchPad**
And here is the relevant variable with its default value:

| Setting         | Name           | Type  | Default value | Value                              |
|-----------------|----------------|-------|---------------|------------------------------------|
| Vertical Offset | SpaceBarOffset | DWORD | 1000          | Offset distance in himetric units. |

 

**Note**  If the touchpad is not below the space bar, but is in fact located above the keyboard, leave the vertical offset at the default value.

 

**Depth Offset**

Windows Precision Touchpad devices should be integrated such that the digitizer surface is flush with the palm deck. And as shown in the following diagram, up to 1.5mm of depth offset is ideal, due to manufacturing and integration tolerances. However, the highest quality implementations should aim to eliminate this offset. Note that for Windows 10, this is a recommendation, not a requirement.

![diagram showing how the depth offset for a windows precision touchpad is measured, relative to the palm deck.](images/precision-img-depoffset.png)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Device%20Integration%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




