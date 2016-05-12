---
title: Required HID Top-Level Collections
description: This section discusses the required HID top-level collections that are used for precision touchpad reporting in Windows 10 and later operating systems.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7AC803C9-EE9A-4244-82D9-D6C2357DACAE
---

# Required HID Top-Level Collections


This section discusses the required HID top-level collections that are used for precision touchpad reporting in Windows 10 and later operating systems.

A Windows Precision Touchpad device should expose two mandatory top-level collections: A Windows Precision Touchpad collection, and a Configuration collection. Optional (but recommended) collections for firmware updates and basic mouse mode support may also be implemented.

The following diagram shows the HID collections for a Windows Precision Touchpad device.

![diagram showing the hid collections for a windows precision touchpad device. image shows support for a vendor-specific firmware update collection.](images/precision-img-hidcolls.png)

A sample descriptor (showing top-level collections) is provided in the [Sample Report Descriptors](touchpad-sample-report-descriptors.md) topic.

The following topics provide more details about the HID top-level collections.

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Mouse Collection](touchpad-mouse-collection.md)</p></td>
<td><p>This topic discusses the mouse collection of a Windows Precision Touchpad device, and explains how the collection provides HID-compliant mouse reporting to the Windows host.</p></td>
</tr>
<tr class="even">
<td><p>[Configuration Collection](touchpad-configuration-collection.md)</p></td>
<td><p>This topic discusses the role played by the configuration collection of a Windows Precision Touchpad device, in Windows 10 and later operating systems.</p></td>
</tr>
<tr class="odd">
<td><p>[Windows Precision Touchpad Collection](touchpad-windows-precision-touchpad-collection.md)</p></td>
<td><p>This topic discusses the top-level collection of a Windows Precision Touchpad, and explains how the collection provides HID-compliant touchpad reporting to the Windows host.</p></td>
</tr>
<tr class="even">
<td><p>[Buttons, Report Level Usages](touchpad-buttons-report-level-usages.md)</p></td>
<td><p>This topic discusses the report level usages for buttons, within the context of the [Windows Precision Touchpad Collection](touchpad-windows-precision-touchpad-collection.md).</p></td>
</tr>
<tr class="odd">
<td><p>[Firmware Update Collection (Optional)](touchpad-firmware-update-collection--optional-.md)</p></td>
<td><p>A Windows Precision Touchpad device can use the HID protocol to provide a vendor-specific top-level collection for performing device firmware and vendor configuration updates.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Required%20HID%20Top-Level%20Collections%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




