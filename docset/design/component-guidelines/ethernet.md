---
title: Ethernet
description: Ethernet
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 736BECD8-6CD6-4156-933A-33FF49E00575
---

# Ethernet


## Hardware


This topic covers recommendations for Ethernet in Windows 10. Due to potential mechanical design limitations, an Ethernet is considered optional on a tablet form factor. However, if implemented, the platform must provide a power gating option to reduce the power consumption of the integrated Ethernet chip.

## Wake-On-Lan (WOL)


The default shutdown behavior puts the system into [Hybrid Shutdown (S4)](http://msdn.microsoft.com/library/windows/desktop/aa373229.aspx) and all devices into the lowest power state [(D3)](http://msdn.microsoft.com/library/aa932261.aspx). In Hybrid Shutdown, user sessions are shut down while the contents of the kernel sessions are written to the disk, enabling faster startup.

WOL wakes the PC from a low power state when a network adapter detects a WOL event (typically, a specially constructed Ethernet packet). Remote wake from Hybrid Shutdown (S4) or Classic Shutdown (S5) is unsupported because Network Interface Cards (NICs) are explicitly not armed for wake in both the Classic (S5) and Hybrid Shutdown (S4) cases. Users expect zero power consumption and battery drain in both Shutdown states. This behavior removes the possibility of spurious wakes when explicit shutdown was requested.

In summary:

-   Wake-On-LAN is only supported from Sleep (S3) or Hibernate (S4) states.
-   Wake-On-LAN is not supported from Classic Shutdown (S5) or Hybrid Shutdown (S4) states.

## Related topics


[System Power Actions](http://msdn.microsoft.com/library/windows/hardware/ff564553)

[USB Remote NDIS Devices and Windows](http://msdn.microsoft.com/windows/hardware/gg463298.aspx)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Ethernet%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





