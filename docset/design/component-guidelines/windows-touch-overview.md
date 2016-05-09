---
title: Windows Touch Overview (Windows 7)
description: Windows Touch Overview (Windows 7)
MS-HAID:
- 'touch\_e5f44f4a-aada-441e-9c0f-14ad473fd8e1.xml'
- 'p\_weg\_hardware.windows\_touch\_overview'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1373c522-bd9d-4b14-97c9-0c3db5bc9f2a
keywords: ["Windows Touch WDK , about"]
---

# Windows Touch Overview (Windows 7)


Windows Touch is the name for the touch and multi-touch functionality in the Windows 7 operating system. In the context of Windows Touch, *touch* refers to support of a single physical contact point, whereas *multi-touch* refers to support for two or more concurrent physical contacts.

### Choosing to Provide a Driver

In Windows 7, vendors who support Windows Touch might be required to provide a driver. If your digitizer device supports HID in firmware, you are not required to provide a driver. If your device does not support HID in firmware, you must include a driver that simulates HID support.

We recommend that touch devices be USB HID devices, and that vendors do not supply a driver. In this scenario, the report descriptor and related information is provided in firmware.

Whether you provide a driver or not, you must support selective suspend in your INF file. For more information about how to support selective suspend, see [Enabling USB Selective Suspend for HID Devices](hid.selective_suspend_for_hid_over_usb_devices).

A vendor-supplied driver should limit the processing that it does to avoid slower system performance and shorter battery life in mobile scenarios. Touch devices should process as much as they can in firmware to provide an optimal user experience.

### Driver Model

If you provide a driver, we recommend that you write a KMDF-based lower filter driver. Your driver should provide the same functionality as a HID minidriver, but register as a filter driver under a minimal WDM driver (also known as a shim driver). A shim driver is necessary because KMDF 1.9 does not natively support HID minidrivers. In Windows 7 and later versions of Windows, you can use the system-supplied Mshidkmdf.sys driver as a shim.

Mshidkmdf.sys is not system-supplied in earlier versions of Windows. If you are supporting versions of Windows earlier than Windows 7, you can build the shim driver yourself. The MSDN Code Gallery contains the source code for this driver in the hidmapper subdirectory of the sample package. For more information about how to build the shim driver, see the [HIDUSBFX2](http://go.microsoft.com/fwlink/p/?linkid=256121) sample readme in the MSDN Code Gallery.

WDM is not recommended for any natural input driver, including drivers that support Windows Touch.

### Samples

The [WacomKMDF](wacomkmdf-driver.md) and [EloMT](elotouch-driver.md) sample drivers show how to pair Mshidkmdf.sys with a vendor-supplied lower filter driver.

EloMT is a KMDF-based sample digitizer driver that provides multi-touch support. WacomKMDF is a KMDF-based sample pen driver.

Both samples use Mshidkmdf.sys as the nominal HID minidriver while the vendor-supplied KMDF driver is a lower filter driver under Mshidkmdf.sys. Mshidkmdf.sys forwards IRPs to the vendor-supplied lower filter driver.

The EloMT sample includes all the functionality that is required for a multi-touch driver to run on Windows 7. The Elotouch driver can work as both a multi-touch and a mouse driver.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Windows%20Touch%20Overview%20%28Windows%207%29%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




