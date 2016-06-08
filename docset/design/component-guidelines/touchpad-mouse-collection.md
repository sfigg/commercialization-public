---
title: Mouse Collection
description: This topic discusses the mouse collection of a Windows Precision Touchpad device, and explains how the collection provides HID-compliant mouse reporting to the Windows host.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: CFB6271F-4028-418D-BC84-D96A578D92C1
---

# Mouse Collection


This topic discusses the mouse collection of a Windows Precision Touchpad device, and explains how the collection provides HID-compliant mouse reporting to the Windows host.

A Windows Precision Touchpad device can provide a top-level collection that makes the touchpad appear as a generic desktop mouse (Page **0x01**, Usage **0x02**).

This is especially important for hosts that are not capable of consuming input via the Windows Precision Touchpad collection. Such hosts include, for example, down-level BIOS implementations, or operating systems prior to Windows 8.1. The mouse collection should support an input report that can, at a minimum, report relative positions (x, y), and left and right buttons. There are no mandatory feature reports associated with this collection. For an example of a mouse collection, see [Sample Report Descriptors](touchpad-sample-report-descriptors.md).

By default, Windows Precision Touchpad devices can report data via the mouse collection, as this is the most compatible reporting mode.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Mouse%20Collection%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




