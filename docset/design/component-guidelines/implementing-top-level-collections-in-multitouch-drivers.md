---
title: Implementing Top-Level Collections in Multi-touch Drivers (Windows 7)
description: Implementing Top-Level Collections in Multi-touch Drivers (Windows 7)
MS-HAID:
- 'touch\_db2299e8-5769-4a0e-bfed-08e8f573df19.xml'
- 'p\_weg\_hardware.implementing\_top\_level\_collections\_in\_multitouch\_drivers'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7af88121-fed4-42ff-8bac-f42c213da77e
keywords: ["Windows Touch WDK , multitouch digitizer drivers, implementing top-level collections", "multitouch digitizer drivers WDK , implementing top-level collections", "top-level collections WDK Touch", "top-level collections WDK Touch , multitouch digitizer drivers"]
---

# Implementing Top-Level Collections in Multi-touch Drivers (Windows 7)


The report descriptor for a multiple input device must include at least one top-level collection for the primary device and a separate top-level collection for the mouse.

If your device supports versions of Windows earlier than Windows 7, the report descriptor must also include a top-level collection that contains a feature report that can be used to configure the device as a multiple input device, single-input device, or mouse device. For more information, see [Using Report Descriptors to Support Capability Discovery](using-report-descriptors-to-support-capability-discovery.md).

For example, in the EloMT sample, the EloMT.c file includes a report descriptor that contains three top-level collections: the first contains two logical collections (one for each of the two supported physical contacts), the second is the feature report (also known as a configuration collection), and the third specifies usages for mouse support. Be aware that this driver can still support more than two concurrent contacts by using Hybrid mode. For information about how to select modes, see [Selecting Packet Reporting Modes in Multi-touch Drivers](selecting-packet-reporting-modes-in-multitouch-drivers.md).

On Windows 7, HID reports that supply information from multiple inputs must specify Collection Application (CA) 0x4 (Touch Screen) on the digitizer usage page.

Devices can send multi-touch data by using one report for each contact, or they can use the reporting modes that were outlined in [Selecting Packet Reporting Modes in Multi-touch Drivers](selecting-packet-reporting-modes-in-multitouch-drivers.md) for a more efficient way to report data. Report descriptors for touch devices should use Finger (0x22) CL (Collection Logical) to group the data and control usages in the top-level collections, whereas the Stylus (0x20) CL should be used to group pen-related control and data usages.

Configuration collection enables you to configure devices to work with earlier versions of Windows. You can also use configuration collections to operate your touch device in different modes. For example, on Windows Vista, your device can default to single touch. On Windows XP, your device can assume mouse functionality. For information about how to access the configuration collection, see the subtopic "Feature Report Exclusivity" in [Using Report Descriptors to Support Capability Discovery](using-report-descriptors-to-support-capability-discovery.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Implementing%20Top-Level%20Collections%20in%20Multi-touch%20Drivers%20%28Windows%207%29%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




