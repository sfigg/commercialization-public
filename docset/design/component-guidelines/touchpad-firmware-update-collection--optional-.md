---
title: Firmware Update Collection (Optional)
description: A Windows Precision Touchpad device can use the HID protocol to provide a vendor-specific top-level collection for performing device firmware and vendor configuration updates.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3D019810-A7E3-4CFC-B013-3276C016A18C
---

# Firmware Update Collection (Optional)


A Windows Precision Touchpad device can use the HID protocol to provide a vendor-specific top-level collection for performing device firmware and vendor configuration updates.

The vendor-specific firmware update collection could provide an output report for transferring the firmware payload from the host to the device.

This is a big advantage because it makes it possible to perform firmware updates without requiring a driver on the host. After a firmware upgrade, you *must* increment **wVersionID**.

A Windows Precision Touchpad device should be able to recover from a firmware update that failed due to power loss (or some other error), if you shut down, and then reapply its power supply. It is highly recommended that basic functionality be available even after a failed firmware update.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Firmware%20Update%20Collection%20%28Optional%29%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




