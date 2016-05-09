---
title: Bluetooth
description: Bluetooth
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 64026D6A-75CB-4D3A-A467-6140F93CBAA4
---

# Bluetooth


## Recommendations


This topic covers recommendations for Bluetooth in Windows 10. For power-efficient support for Bluetooth LE beacons and related scenarios, we recommend that OEM’s use Bluetooth components capable of Hardware Offload and able to support the [Microsoft-defined Host Controller Interface (HCI) extension](https://msdn.microsoft.com/library/windows/hardware/dn917903.aspx).

## What are new Bluetooth features in Windows 10?


-   Converged Bluetooth stack, excluding Hands free profile (HFP) and Audio/Video Remote Control profile (AVRCP)

-   Compliant to the standard Bluetooth 4.1 (for all mandatory spec requirements, not for optional requirements)

-   Support for the following features:

    -   [Hardware Offload (HCI)](https://msdn.microsoft.com/library/windows/hardware/dn917903.aspx): Microsoft defines vendor-specific HCI commands and events that are consumed by Windows

    -   Dual mode support (except in Windows 10 Mobile): Dual mode support for Bluetooth classic and Bluetooth LE. For example, a Jabra Pulse sport can transfer heart rate data over Bluetooth LE and stream music over a classic profile. Bluetooth classic, the older standard, is still needed for higher data-rate or long-range applications.

    -   LE privacy 1.1: Windows protects the user’s privacy by randomizing the Bluetooth address whenever it is broadcast.

    -   Enterprise Management

        -   Turn Bluetooth On/OFF

        -   Allow/Block the device going into discoverable mode

        -   Change the friendly name of the Bluetooth device

        -   Allow/Block advertisements

    -   Windows Phone General Distribution Release (GDR) features ported to Windows 10 (Cortana address book entry, LE HID, MAP)

-   APIs/Profiles

    -   [Advertisement API](http://go.microsoft.com/fwlink/p/?LinkId=723573): Support for scanning of Bluetooth LE advertisement packets for beacons and other similar scenarios.

    -   Existing Windows Phone Background support converged to Desktop.

    -   Bluetooth audio enhancements (wideband speech, aptX®) - High Definition sound while limiting Lip Sync and latency issues.

## Bluetooth features in Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) and Windows 10 Mobile editions


|                                                                     |                                                                        |                   |
|---------------------------------------------------------------------|------------------------------------------------------------------------|-------------------|
| Feature                                                             | Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) | Windows 10 Mobile |
| Advertisement API                                                   | Yes                                                                    | Yes               |
| Existing Windows Phone Background support converged to Desktop      | Yes                                                                    | Yes               |
| Hardware Offload (HCI)                                              | Yes                                                                    | Yes               |
| Dual mode, LE Privacy 1.1 (BT Spec updates)                         | Yes                                                                    | No                |
| Enterprise Management                                               | Yes                                                                    | Yes               |
| Bluetooth audio enhancements – Wideband speech                      | No                                                                     | Yes               |
| Bluetooth audio enhancements – aptX® audio codec                    | Yes                                                                    | Yes               |
| Interop Improvements                                                | Yes                                                                    | Yes               |
| WP GDR Features ported to Windows 10 – Cortana address book entry   | No                                                                     | Yes               |
| WP GDR Features ported to Windows 10 – LE HID (Mobile               | Yes                                                                    | Yes               |
| WP GDR Features ported to Windows 10 – Message Access Profile (MAP) | No                                                                     | Yes               |
| WP GDR Features ported to Windows 10 – AVRCP 1.3                    | Yes                                                                    | Yes               |

 

## Upgrade Process


During upgrade, Windows 10 will NOT migrate existing Bluetooth drivers, applications, and profile packs. During the upgrade process, Windows setup will check Windows Update to download and install a Windows 10 Bluetooth filter driver to re-enable Bluetooth radio functionality with the inbox profile support listed in the table above. Users will have to check their hardware manufacturers/OEMs website for updated profile packs if desired.

## Maintained guidelines from Windows 8.1


The remaining sections cover guidelines from Windows 8.1 that are maintained for Windows 10.

### Hardware

If implemented, Bluetooth controllers must support the Bluetooth 4.0+LE specification, complying with both Basic Rate (BR) and Low Energy (LE).

The following table summarizes the supported peripheral buses and driver support.

| Bus (HCI) | Driver support | SCO support                                   |
|-----------|----------------|-----------------------------------------------|
| Non-USB   | WDK sample     | Sideband I2S/PCM connection only (HCI bypass) |
| USB       | In-box         | In-band (SCO over HCI)                        |

 

The [WDK Bluetooth Serial HCI Bus Driver sample](https://github.com/Microsoft/Windows-driver-samples/tree/master/bluetooth/serialhcibus) is based on the UART (H4) standard as defined in the Bluetooth SIG specification. A vendor will be required to adopt and enhance the sample for any vendor-specific device requirements around device initialization and/or power management. If desired, the vendor can adopt the sample and develop for a non-UART interface as well, i.e.: non-UART controllers will also be supported by the Bluetooth stack (given a proper vendor-supplied driver).

A vendor supplied serial controller driver is necessary for UART-based controllers. For UART-specific features, see [Simple Peripheral Bus (SPB)](simple-peripheral-bus--spb-.md).

**Note**   A non-USB connected Bluetooth controller must use a sideband channel for SCO applications, i.e.: SCO over I2S/PCM interface. Furthermore, SCO over HCI (in-band) will not be supported for non-USB controllers.

 

## Transport bus driver


The Windows Driver Kit (WDK) sample is available for the UART (H4) transport. A vendor can enhance it for any vendor-specific feature, including for any non-UART transports as well. There will be no limitations around the stack’s ability to support a particular transport.

There will be no changes to the existing in-box Bluetooth USB driver. We recommend using UART (H4) as the connectivity interface, since the WDK sample will be UART-based and due to UART’s lower power consumption. Voice (SCO) support must go through a “sideband” audio channel for non-USB controllers, such as an I2S/PCM interface.

## Initialization and power handling


For non-USB based Bluetooth controllers that require initialization, see [Transport Bus Driver for Bluetooth Power Handling Guidelines](http://msdn.microsoft.com/library/windows/hardware/hh770515.aspx).

## Radio management


The 3<sup>rd</sup>-party Bluetooth radio management plugin is not supported as Bluetooth Radio Management support is now provided inbox. Transport drivers must respond to being D3 by turning off power to the radio.

## Mechanical


We do not recommend an external switch for controlling the on/off state of the Bluetooth radio.

##  3<sup>rd</sup>-party Bluetooth software


3rd party software can be added to x86/x64 Windows PCs to provide additional Bluetooth profile functionality not natively shipped in Windows. To avoid impacting the Windows user experience, causing incompatibilities with other Windows PCs, and creating serviceability issues on upgrade, Windows recommends the following:

1.  Make them installable by INF so they can be easily serviced to support Windows as a Service.
2.  Do not replace inbox profiles, icons, or user interfaces.
3.  When adding profiles and/or other software, use the native Windows APIs.
4.  Use Wi-Fi Direct for high bandwidth peer-to-peer scenarios instead of Bluetooth High Speed (HS).
5.  Optimal app footprint to minimize impact on manufacturing time.
6.  Optimal app performance to minimize impact on off to on transitions (boot, resume from S3/S4) and energy efficiency.

## Related topics


[Advertising API](http://go.microsoft.com/fwlink/p/?LinkId=723573)

[Background support](https://msdn.microsoft.com/library/windows/apps/windows.applicationmodel.background.aspx)

[GattCharacteristicNotificationTrigger](https://msdn.microsoft.com/library/windows/apps/windows.applicationmodel.background.gattcharacteristicnotificationtrigger.aspx)

[RfcommConnectionTrigger](https://msdn.microsoft.com/library/windows/apps/windows.applicationmodel.background.rfcommconnectiontrigger.aspx)

[Hardware Offload (HCI)](https://msdn.microsoft.com/library/windows/hardware/dn917903.aspx)

[Dual mode, LE Privacy 1.1 (BT Core Spec updates)](https://www.bluetooth.org/DocMan/handlers/DownloadDoc.ashx?doc_id=282159)

[Bluetooth audio enhancements - aptX® audio codec](http://www.csr.com/products/aptx)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Bluetooth%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





