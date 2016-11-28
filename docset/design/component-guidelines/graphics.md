---
title: Graphics
description: Graphics
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 342F222D-15CC-4503-9C82-032F9C2EEC17
---

# Graphics


## What's new in Windows 10 for Graphics


This topic covers new guidelines for Graphics in Windows 10.

### Windows 10 support for Ultra High Definition (UHD)

Windows supports 4K UHD and 8K UHD, but UHD is more than just higher resolution. These factors affect how people perceive images, in order of importance:

-   Dynamic range, which is the difference between the darkest black and the whitest white, and the steps in between. UHD dynamic range allows users to see details in both the bright and dark portions of an image.
-   Color gamut, which is the range of colors that can be faithfully recreated. UHD has a greatly expanded color gamut and bit depth.
-   Frame rate, which is the number of frames per second. A higher frame rate (50/60fps) makes motion smoother, especially for sporting events.
-   Resolution, which is the number of pixels. 4K resolution (2160p) has 4 times as many pixels as 1080p.

Where it makes sense, display panel manufacturers are recommended to invest in brighter panels, wider color gamuts, higher bit depths, and higher resolutions.

### UHD investments in Windows 10

-   HEVC decoder with hardware offload
-   HEVC encoder with hardware offload
-   Hardware DRM for PlayReady
-   Support for wider color gamut
-   Support for greater precision (color accuracy)

### High Efficiency Video Coding (HEVC)

HEVC (also known as H.265) is a joint MPEG/ITU standard. It is non-proprietary and the successor to Advanced Video Coding (AVC, also known as H.264). Because it has significantly better compression, HEVC can consume up to 30-50% less bandwidth and storage than AVC. It allows the transmission of high quality video across connections that have low bandwidth.

### Content protection

Full 1080p, including 4K UHD, demands higher bar than existing software-based Digital Rights Management (DRM). Windows 10 supports hardware-based content protection. Hardware-based DRM is required to access premium content.

The infrastructure used for hardware-based content protection for Windows 10 is PlayReady 3.0, which provides these benefits:

-   Hardware root of trust
-   Device binding and all keys in hardware
-   Compressed and uncompressed content not exposed to attack
-   Output protections managed by hardware

### Aspect ratios

-   Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) supports any aspect ratio, as in Windows 8.1
-   Windows 10 Mobile will support any aspect ratio by Oct 2015
-   Certain aspect ratios were targeted during design:

    -   Phones: 16:9; Small tablets 16:10
    -   2-in-1’s 3:2; Laptops/Desktops/TVs 16:9
    -   Windows itself will reflow to support an arbitrary aspect ratio
    -   "Square" aspect ratios (&lt;4:3) may have limited scale factor support due to the 4:3 aspect ratio of the minimum effective resolution (800x600 for desktop, 480x800 for mobile)

## Minimum requirements for Graphics


Windows edition
Requirements
Windows 10 for desktop editions for PCs and 2-in-1's
Resolution, bit depth, and size
Supports a minimum display resolution of SVGA (800 x 600) with a depth of 32 bits on each output simultaneously, and a minimum diagonal display size of 8-inches or larger. Tablets, 2-in-1's, and laptops that run Windows 10 Desktop edition must include a display that meets the requirements listed in Minimum Hardware Requirements. A display is optional for desktop PCs that run Windows Desktop edition.

Devices that support UHDTV 4K must have 8-inch screens or larger.

Devices that support UHDTV 8K must have 27-inch screens or larger.

Graphics
Devices must include a GPU that supports DirectX 9 or later.
Windows Server 2016
Resolution, bit depth, and size
Supports a minimum display resolution of XGA (1024 x 768) with a depth of 32 bits on each output simultaneously.
Graphics
A GPU is optional. If a GPU is included, it must support DirectX 9 or later.
Windows 10 Mobile
Resolution, bit depth, and size
Supports a minimum resolution of WVGA (800 x 480), a minimum of 32 bits of color per pixel, a minimum diagonal display size of 4 inches (4.5 inches is recommended) and a maximum diagonal display size of less than 8-inches. The hardware display panel must support a minimum of 16 bits per pixel (5 red, 6 green, 5 blue). The display driver must support a minimum of 32 bits of color per pixel, and must be able to scan out to the display panel when the panel bit depth is less than 32 bits per pixel.

Devices that support QHD must have 4-inch screens or larger Devices that support UHDTV 4K must have 6-inch screens or larger .

Pixel aspect ratio
Display pixels in devices must be square—that is, have an aspect ratio of 1:1.
Refresh rate for display panel hardware
The display panel hardware in devices must support an update and refresh rate of 59.97 ±0.03 Hz. The range for smart panels (panels that support self-refresh) is extended to 59.97 ±3.0 Hz at room temperature (25˚C). Update rate is defined as the rate at which new frames can be sent to the display hardware. The refresh rate is defined as the number of times in a second that display hardware draws the data. This specification applies for all display configurations and all supported overlay modes (primary + secondary).
Display brightness levels
All displays in devices must support a minimum of 16 levels of brightness.
 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Graphics%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




