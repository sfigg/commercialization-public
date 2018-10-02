---
title: What's new in Windows 10, version 1803
description: New features for Windows 10, version 1803
ms.assetid: 1E8F0E54-1E5B-495B-848D-260620C7DF4F
author:dawnwood
ms.author:dawnwood
ms.date: 04/30/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# What's new in Windows 10, version 1803

Welcome to Windows 10, version 1803! Here are some resources to get you acquainted with the new features and changes introduced for Windows device and driver creators in this version of Windows 10.

## New in design

| Topic                                      | Description                                                                                             |
|:-------------------------------------------|:--------------------------------------------------------------------------------------------------------|
| **[Bluetooth Swift Pair](https://docs.microsoft.com/en-us/windows-hardware/design/component-guidelines/bluetooth-swift-pair)**                   | Swift Pair is the newest way to pair your Bluetooth peripherals to Windows 10 PCs. As the next evolution of pairing, users no longer need to navigate the Settings App and find their peripheral to pair. Windows can now do this for them by popping a notification when a new peripheral is nearby and ready.  |
| **[Compatibility specifications](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/whcp-specifications-policies)**           | The Windows Hardware Compatibility Program is designed to help your company deliver systems, software, and hardware products that are compatible with Windows and run reliably on Windows 10 and Windows Server 2016. In Windows 10, version 1803, there are new specifications and policies available for download. We have also streamlined the content for usability.     |

## New customization options

| Topic                                      | Description                                                                                             |
|:-------------------------------------------|:--------------------------------------------------------------------------------------------------------|
| **[New OOBE screens, and screen order](https://docs.microsoft.com/windows-hardware/customize/desktop/customize-oobe)**     | Windows 10 version 1803 introduces new OOBE screens, and a change to the OOBE screen flow.    |
| **[New Start layout customization option](https://docs.microsoft.com/windows-hardware/customize/desktop/customize-start-layout)**  | To provide a more consistent user experience, you can now customize the Microsoft suite of tiles in the Start layout with a heading that reflects the apps on the device.    |
| **[Customize SIM card slot names](https://docs.microsoft.com/windows-hardware/customize/desktop/customize-sim-card-slot-names)**          | This new customization option enables you to customize the SIM card slot names on a device to more easily differentiate between them.  |
| **[Power controls](https://docs.microsoft.com/windows-hardware/customize/power-settings/power-controls)**                         | Power controls include settings that control the system's power and behavior. In Windows 10, version 1803, two new settings have been added to Power controls: [IgnoreCsComplianceCheck](https://docs.microsoft.com/windows-hardware/customize/power-settings/power-controls-ignorecscompliancecheck), and [EnableInputSuppression](https://docs.microsoft.com/windows-hardware/customize/power-settings/power-controls-enableinputsuppression).  |
| **[Unattend settings](https://docs.microsoft.com/windows-hardware/customize/desktop/unattend/changed-answer-file-settings-for-windows-10-build-1803)**                      | See the Unattend answer files settings that have been added, deprecated, and removed in Windows 10, version 1803.  |

## New in desktop manufacturing

| Topic                                      | Description                                                                                             |
|:-------------------------------------------|:--------------------------------------------------------------------------------------------------------|
| **[Enable Windows 10 in S mode](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-10-s-overview)**            | Windows 10 in S mode is a mode that can be applied to a Windows edition to enable a productive Windows experience that's streamlined for security and performanace. S mode can be applied to Windows 10 Home, Pro, Pro EDU, and Pro WS editions. This is a change from previous versions of Windows where Windows 10 S was its own edition with its own base media.                    |
| **[Preinstall apps per region](https://docs.microsoft.com/windows-hardware/manufacture/desktop/preinstall-apps-using-dism)**            | Use the new `region` option in DISM to preinstall apps per region. |
| **[New Feature on Demand (FOD)](https://docs.microsoft.com/windows-hardware/manufacture/desktop/features-on-demand-non-language-fod)**           | XPS Viewer is used to view XPS documents, and is now available as an FOD.                  |
| **[Optimize provisioning package size](https://docs.microsoft.com/windows-hardware/manufacture/desktop/dism-app-package--appx-or-appxbundle--servicing-command-line-options)**    | Use the new `optimizeprovisionedappxpackage` option in DISM to optimize the total file size of provisioned packages on an image by replacing identical files with hardlinks.  |

## New in driver development

> [!Tip]
> See [What's new in Driver development](https://docs.microsoft.com/windows-hardware/drivers/what-s-new-in-driver-development) for an in-depth look.

| Topic                                      | Description                                                                                             |
|:-------------------------------------------|:--------------------------------------------------------------------------------------------------------|
| **[Camera driver development](https://docs.microsoft.com/windows-hardware/drivers/stream/dshow-bridge-implementation-guidance-for-usb-video-class-devices)**              | Camera driver development now supports 360 camera video capture. Review new guidance on how to configure DShow Bridge for cameras and devices to comply with the USB Video Class (UVC) specification.  |
| **[Display driver development](https://docs.microsoft.com/windows-hardware/drivers/what-s-new-in-driver-development#a-href-idversion-1803awhats-new-in-windows-10-version-1803-latest) **             | Updates to display driver development include Indirect Display UMDF class extension, post-processing color enhancement override, Direct3D12 and Video, GPU performance data, and display diagnostics. |
| **[Networking driver development](https://docs.microsoft.com/windows-hardware/drivers/network/receive-side-scaling-version-2-rssv2-in-ndis-6-80)**          | Updates to NDIS include receive side scaling V2 updated to version 1.0, and new synchronous OID interface DDIs to work with filter drivers.  |
| **[Mobile broadband updates](https://docs.microsoft.com/windows-hardware/drivers/mobilebroadband/desktop-cosa-apn-database-settings#desktop-cosa-only-settings)**               | In Mobile broadband, a new [WWAN_MODEM_CONFIG_ID API](https://docs.microsoft.com/windows-hardware/drivers/ddi/content/wwan/ns-wwan-_wwan_modem_config_id) was added to improve MB low level UICC access. As for Mobile Operators, Hotspot and AppID settings are now a part of [desktop COSA](https://docs.microsoft.com/windows-hardware/drivers/mobilebroadband/desktop-cosa-apn-database-settings#desktop-cosa-only-settings). Mobile operators are strongly encouraged to transition from broadband app experience apps with Sysdev metadata packages to MO UWP Apps and the COSA database.    |
| **[PCIe](https://docs.microsoft.com/windows-hardware/drivers/pci/dsd-for-pcie-root-ports)**                                  | New ACPI _DSD methods have been added to support Modern Standby and PCI hot plug scenarios.     |
| **[Sensors](https://docs.microsoft.com/windows-hardware/drivers/ddi/content/sensorsdef/ne-sensorsdef-sensor_connection-types)**                               | The SENSOR_CONNECTION_TYPES enumeration was added to clarify connection type properties.  |
| **[USB](https://docs.microsoft.com/windows-hardware/drivers/ddi/content/ufxclient/nf-ufxclient-ufxdevicenotifyfinalexit)**                                   | New APIs were added to simulate detach for shared connectors. If a USB device is attached to a host or have shared connector while the stack is being removed while the device is attached to a host or have shared connectors, you can simulate a detach event. At this point all attach/detach notification mechanisms are disabled.    |
| **[Wi-fi driver development](https://docs.microsoft.com/windows-hardware/drivers/network/wdi-tlv-os-power-management-features)**              | Updates to Wi-fi driver development include a new TLV for the Nic Auto Power Saver (NAPS) advanced power management feature and updates to the platform level device recovery service (PLDR).    |

## Related topics

[What's new in driver development](https://docs.microsoft.com/windows-hardware/drivers/what-s-new-in-driver-development)

[What's new in Windows 10, version 1803 for IT Pros](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1803)
