---
title: Implementing Top-Level Collections in Multi-touch Devices
description: Implementing Top-Level Collections in Multi-touch Devices
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DE4C02D5-7129-4919-B652-B020CFFD17F8
---

# Implementing Top-Level Collections in Multi-touch Devices


The report descriptor for a multiple input device must include at least one top-level collection for the primary device and a separate top-level collection for the mouse.

Report descriptors for touch devices should use Finger (0x22) CL (Collection Logical) to group the data and control usages in the top-level collections, whereas the Stylus (0x20) CL should be used to group pen-related control and data usages.

The following report descriptor samples demonstrate the collection and usage settings for device type and mode.

-   [Mouse Collection Report Descriptor](mouse-collection-report-descriptor.md)
-   [Two Finger Parallel/Hybrid Mode Report Descriptor](two-finger-parallel-hybrid-mode-report-descriptor.md)
-   [Single Finger Hybrid Mode Report Descriptor](single-finger-hybrid-mode-report-descriptor.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Implementing%20Top-Level%20Collections%20in%20Multi-touch%20Devices%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




