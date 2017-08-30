---
title: Device.Portable Testing Prerequisites
description: Device.Portable Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d5c12d65-3ac9-4bf1-9fb8-9b40ce2e3d7f
---

# Device.Portable Testing Prerequisites


Before you test a portable device by using the Windows Hardware Lab Kit (Windows HLK), review the following requirements:

## <span id="BKMK_HCK_Devfund_hR"></span><span id="bkmk_hck_devfund_hr"></span><span id="BKMK_HCK_DEVFUND_HR"></span>Hardware requirements


-   System that supports USB 2.0 (at a minimum)

-   A USB cable for the device that you're testing

## <span id="BKMK_HCK_Devfund_sR"></span><span id="bkmk_hck_devfund_sr"></span><span id="BKMK_HCK_DEVFUND_SR"></span>Software requirements


-   The latest Windows HLK filters or updates

-   A class driver provided by Microsoft

## <span id="Other_requirements"></span><span id="other_requirements"></span><span id="OTHER_REQUIREMENTS"></span>Other requirements


-   If you provide a custom INF with your device, you must run the HLK tests using the Windows class driver (you may not test using your custom INF).

-   Your device must install with the Microsoft Media Transfer Protocol class driver.

-   For Windows Vista and later, your device must appear under the **Portable Devices** category in **Device Manager**.

-   Devices that are read-only must include at least one sample of each format type supported by the device.

-   If the device supports removable media, the media must be added before testing.

-   Run the test with only one portable device connected at a time (this includes Mass Storage Class devices).

-   The battery on the device should be fully charged before testing is started.

## <span id="BKMK_HCK_Devfund_tC"></span><span id="bkmk_hck_devfund_tc"></span><span id="BKMK_HCK_DEVFUND_TC"></span>Test computer configuration


To run portable device tests, you must know how to:

-   Switch a device to a computer connectivity mode before plugging it in.

-   Plug a device into a USB port of the computer and maintain the connectivity throughout the test.

-   Provide continuous power to the device throughout the test.

-   Troubleshoot device installation by checking if the device is installed successfully in **Device Manager** or by looking at the SetupAPI device installation logs.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Device.Portable%20Testing%20Prerequisites%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




