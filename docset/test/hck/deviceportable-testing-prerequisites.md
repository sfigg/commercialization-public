---
author: joshbax-msft
title: Device.Portable Testing Prerequisites
description: Device.Portable Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ded388a3-deda-460a-a847-cd629a0c868d
---

# Device.Portable Testing Prerequisites


Before you test a portable device by using the Windows Hardware Certification Kit (Windows HCK), review the following requirements:

## <a href="" id="bkmk-hck-devfund-hr"></a>Hardware requirements


-   System that supports USB 2.0 (at a minimum)

-   A USB cable for the device that you're testing

## <a href="" id="bkmk-hck-devfund-sr"></a>Software requirements


-   The latest Windows HCK filters or updates

-   A class driver provided by Microsoft

## Other requirements


-   If you provide a custom INF with your device, you must run the HCK tests using the Windows class driver (you may not test using your custom INF).

-   Your device must install with the Microsoft Media Transfer Protocol class driver.

-   For Windows Vista and later, your device must appear under the **Portable Devices** category in **Device Manager**.

-   Devices that are read-only must include at least one sample of each format type supported by the device.

-   If the device supports removable media, the media must be added before testing.

-   Run the test with only one portable device connected at a time (this includes Mass Storage Class devices).

-   The battery on the device should be fully charged before testing is started.

## <a href="" id="bkmk-hck-devfund-tc"></a>Test computer configuration


To run portable device tests, you must know how to:

-   Switch a device to a computer connectivity mode before plugging it in.

-   Plug a device into a USB port of the computer and maintain the connectivity throughout the test.

-   Provide continuous power to the device throughout the test.

-   Troubleshoot device installation by checking if the device is installed successfully in **Device Manager** or by looking at the SetupAPI device installation logs.

 

 






