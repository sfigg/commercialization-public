---
author: kpacquer
Description: 'Here''s the features you can add to Windows 10 IoT Core (IoT Core) images.'
ms.assetid: cbae6949-ccfe-4015-a9b0-a269f6f30d5a
MSHAttr: 'PreferredLib:/library'
title: IoT Core feature list
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# IoT Core feature list

Here's the features you can add to Windows 10 IoT Core (IoT Core) images.

Add features using the OEMInput XML file. To learn more, see the [IoT Core manufacturing guide](iot-core-manufacturing-guide.md).

## Retail features defined by Microsoft

The following table describes the Microsoft-defined features that can be used by OEMs in the Features element in the **OEMInput** file for **Retail** build.

When creating images for your device, determine which features are required for your device. 


### Features

| Features                        | Description                                                                                                                 |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| **IOT\_EFIESP**       | Boots the device using UEFI, required feature in all images                                                                           |
| **IOT\_UAP\_OOBE**    | Includes the inbox OOBE app that is launched during the first boot and also during installation of apps, required feature in all images |
| **IOT\_CRT140**            | Adds CRT binaries, required feature in all images                                                                                  |
| **IOT\_UNIFIED\_WRITE\_FILTER** | Adds [Unified Write Filter (UWF)](https://docs.microsoft.com/windows/iot-core/secure-your-device/UnifiedWriteFilter) to protect physical storage media from data writes. Supported starting with Windows 10, version 1607.        |
| **IOT\_USBFN\_CLASS\_EXTENSION**  | Adds USB function WDF class extension for USB function mode support. This is new in Windows 10, version 1703. |
| ~~IOT\_HWN\_CLASS\_EXTENSION~~ (Deprecated)   | Adds hardware notification WDF class extension for vibration API support. This is new in Windows 10, version 1703. Deprecated in Windows 10, version 1709, as this feature is added by default |
| ~~IOT\_NETCMD~~ (Deprecated) | Adds the command-line tool: netcmd.exe, used for configuring network connectivity. Deprecated in Windows 10, version 1803. The netcmd.exe will be removed when updating to version 1803. Use [Windows.Devices.WiFi.WiFiAdapter](https://msdn.microsoft.com/en-us/library/windows/apps/windows.devices.wifi.wifiadapter.aspx) for managing Wifi. See [WiFi Connector](https://github.com/Microsoft/Windows-iotcore-samples/blob/master/Samples/WiFiConnector/CS/README.md#wifi-connector) example. |
| **IOT\_POWERSHELL**        | Adds PowerShell                                                                                                             |
| **IOT\_APPLICATIONS**           | Adds Account Management host application, enables MSA sign-in. Required for Cortana. This is new in Windows 10, version 1703. |
| **IOT\_ALLJOYN\_APP**           | Adds the AllJoyn application, used for Headless ZwaveAdapterAppx. |
| **IOT\_FONTS\_CHINESE\_EXTENDED** | Adds additional Chinese fonts. This is new in Windows 10, version 1703. |
| **IOT\_APP\_TOOLKIT** | Adds tools required for Appx installation and management                                                |
| **IOT\_FFU\_FLASHMODE** | Adds flashing mode support so that the device can be flashed using ffutool. Currently supported for arm only. This is new in Windows 10, version 1803 |
| **IOT\_MTP** | Adds Media transfer protocol support. See [MTP](https://docs.microsoft.com/windows/iot-core/connect-your-device/mtp). This is new in Windows 10, version 1803 |
| **IOT\_MIRACAST\_RX_APP** | Adds Connect App that supports Miracast receive feature. Note that the underlying hw/drivers should support Miracast for this app to work. Currently supported for arm only. This is new in Windows 10, version 1803 |


### Settings

| Features                        | Description                                                                                                                 |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| **IOT\_GENERIC\_POP**             | Adds the Generic device targeting info for OS only Updates. Supported starting with Windows 10, version 1607.                                |
| **IOT\_POWER\_SETTINGS**             | Prevents the device from going to sleep due to inactivity. Required for x86/amd64 platforms. This feature supports ARM starting with Windows 10, Version 1703. |
| **IOT\_EFIESP\_BCD** | Sets boot configuration data (BCD) for GPT-based drives. Required for x86/amd64. MBR devices should use **IOT\_EFIESP\_BCD_MBR**                                                   |
| **IOT\_EFIESP\_BCD_MBR**             | Sets boot configuration data (BCD) for MBR-based drives.  This is new in Windows 10, version 1703. |
| **IOT\_SHELL\_HOTKEY\_SUPPORT** | Adds support to launch default app using a hotkey: [VK_LWIN (Left Windows key)](https://msdn.microsoft.com/library/windows/desktop/dd375731.aspx). Supported starting with Windows 10, version 1607.                                                    |  
| **IOT\_SHELL\_ONSCREEN\_KEYBOARD** | Adds available on-screen keyboard. This is new in Windows 10, version 1703.                  |
| **IOT\_SHELL\_ONSCREEN\_KEYBOARD\_FOLLOWFOCUS** | Enables on-screen keyboard to automatically appear when input field is focused. Requires **IOT\_SHELL\_ONSCREEN\_KEYBOARD**. This is new in Windows 10, version 1703. |
| **IOT\_DISABLEBASICDISPLAYFALLBACK** | Disables the inbox basic render driver. This feature should only be used with the Qualcomm DragonBoard (DB). |
| **IOT\_CRASHCONTROL\_SETTINGS** | Configures the device to auto reboot without showing blue screen (BSOD) when the device crashs. This also disables crashdump. [AutoReboot = 1 ; DisplayDisabled = 1 and CrashDumpEnabled = 0]. This is new in Windows 10, version 1803 |


### Developer Tools

> [!IMPORTANT]
> The following developer features shall not be used in **Retail** builds and in images for commercial devices.

| Features                        | Description                                                                                                                 |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| **IOT\_SIREP**                  | Enables SIREP service for TShell connectivity                                                                               |
| **IOT\_SSH**                    | Enables Secure Shell (SSH) connectivity                                                                                     |
| **IOT\_TOOLKIT**                | Includes developer tools such as: Kernel Debug components, FTP, Network Diagnostics, basic device portal, and XPerf. This also relaxes the firewall rules and enables various ports.                                                                                           |
| **IOT\_WEBB\_EXTN**             | Enables IOTCore-specific extensions to the Windows Device Portal. The basic device portal is included in the IoT Toolkit.  |
| **IOT\_NANORDPSERVER**          | Adds [Remote Display packages](https://docs.microsoft.com/windows/iot-core/manage-your-device/RemoteDisplay). Supported starting with Windows 10, version 1607. Note: Remote Display is prerelease software intended for development and training purposes only.                      |
| **IOT\_CORTANA**                | Adds Cortana feature. Requires **IOT\_APPLICATIONS** feature. This is new in Windows 10, version 1703.       |
| **IOT\_CORTANA\_OBSCURELAUNCH** | Enables running Cortana application on boot. This add-on causes Cortana to run in the background resulting in better response time for Cortana. This is new in Windows 10, version 1703. |
| **IOT\_BERTHA**                 | Adds a sample app: "Bertha". This app provides basic version info and connectivity status.             |
| **IOT\_UAP\_DEFAULTAPP**        | Adds a sample app, "Chucky". This app is similar to "Bertha".                              |
| **IOT\_FTSER2K\_MAKERDRIVER**   | Adds the FTDI USB-to-Serial driver.                                                                                          |
| **IOT\_CP210x\_MAKERDRIVER**    | Adds drivers for SiliconLabs CP210x-based USB to Serial adapters. This is new in Windows 10, version 1703.                                                                                   |
| **IOT\_DMAP\_DRIVER**           | Adds DMAP drivers.                      |
| **IOT\_CONTAINERS**             | Adds support for native [Nano Server Containers](https://docs.microsoft.com/virtualization/windowscontainers/deploy-containers/deploy-containers-on-server#install-base-container-images). These are supported only on Intel 64-bit platforms. This is new in Windows 10, version 1709. |

### Speech Data

| Features                       | Description                                                                        |
|--------------------------------|------------------------------------------------------------------------------------|
| ~~IOT\_SPEECHDATA\_EN\_US~~ (Deprecated)   | Deprecated in Windows 10, version 1607. Do not add this feature. The default image includes speech data for US English. |
| **IOT\_SPEECHDATA\_DE\_DE**    | Adds speech data for German.                                                        |
| **IOT\_SPEECHDATA\_EN\_CA**    | Adds speech data for en-CA. This is new in Windows 10, version 1703.               |
| **IOT\_SPEECHDATA\_EN\_GB**    | Adds speech data for UK English.                                                    |
| **IOT\_SPEECHDATA\_ES\_ES**    | Adds speech data for Spanish.                                                       |
| **IOT\_SPEECHDATA\_ES\_MX**    | Adds speech data for Mexico. This is new in Windows 10, version 1703.              |
| **IOT\_SPEECHDATA\_FR\_FR**    | Adds speech data for French.                                                        |
| **IOT\_SPEECHDATA\_FR\_CA**    | Adds speech data for French Canadian. This is new in Windows 10, version 1703.     |
| **IOT\_SPEECHDATA\_IT\_IT**    | Adds speech data for Italian.                                                       |
| **IOT\_SPEECHDATA\_JA\_JP**    | Adds speech data for Japanese. Supported starting with Windows 10, version 1607.             |
| **IOT\_SPEECHDATA\_ZH\_CN**    | Adds speech data for Chinese (PRC).                                                 |
| **IOT\_SPEECHDATA\_ZH\_HK**    | Adds speech data for Chinese (Hong Kong S.A.R.). Supported starting with Windows 10, version 1607.   |
| **IOT\_SPEECHDATA\_ZH\_TW**    | Adds speech data for Chinese (Taiwan). Supported starting with Windows 10, version 1607.           |

### Features in the IoT Core Add-Ons

| Features                  | Description                                                          |
|---------------------------|----------------------------------------------------------------------|
| **CUSTOM\_CMD**   | Adds scripts which support adding OEM Apps using the ADK Add-Ons. OEM\_CustomCmd is the deprecated feature ID, can still be used for legacy builds      |
| **PROV\_Auto** | Includes provisioning package corresponding to the product. OEM\_ProvAuto is the deprecated feature ID, can still be used for legacy builds |


### Test features 

The following table describes the Microsoft-defined test features that can be used by OEMs in the Features element in the **OEMInput** file for **Test** builds ONLY.

| Features                         | Description                                                                                                               |
|----------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| **IOT\_DISABLE\_TESTSIGNING**    | Disables runtime-installation of test-signed packages                                                                     |
| ~~IOT\_DISABLE\_UMCI~~ (Deprecated)          | Disables the code integrity check. Deprecated in Windows 10, version 1709                                     |
| **IOT\_EFIESP\_TEST**            | UEFI packages required for booting test images. Should not be used with IOT_EFIESP                                        |
| **IOT\_ENABLE\_ADMIN**           | Enables the Administrator account with default password 'p@ssw0rd'.New in Windows 10, version 1607                        |
| **IOT\_ENABLE\_TESTSIGNING**     | Enables run-time installation of test-signed packages. Allows test-signed drivers and (.appx) apps to run                 |
| **IOT\_KD\_ON**                  | Enables Kernel Debugger                                                                                                   |
| **IOT\_KDNETUSB\_SETTINGS**      | Includes all kernel debugger transports and enables KDNET over USB. The default debug transport settings for this feature are an IP address of &quot;1.2.3.4&quot;, a port address of &quot;50000&quot;, and a debugger key of &quot;4.3.2.1&quot;. To use the default IP address of 1.2.3.4, run VirtEth.exe with the /autodebug flag.  For example, to establish a kernel debugger connection to the phone, use the command:`Windbg -k net:port=50000,key=4.3.2.1`  **Note** Do not include either **IOT\_KDUSB\_SETTINGS** or **IOT\_KDNETUSB\_SETTINGS** if you need to enable MTP or IP over USB in the image. If the kernel debugger is enabled in the image and the debug transports are used to connect to the device, the kernel debugger has exclusive use of the USB port and prevents MTP and IP over USB from working.   |
| **IOT\_KDSERIAL\_SETTINGS**      | Includes all kernel debugger transports and enables KDSERIAL with the following settings: 115200 Baud, 8 bit, no parity. These settings apply to x86 and amd64 platforms. ARM platforms use UEFI-defined serial transport settings.   |
| **IOT\_KDUSB\_SETTINGS**         | Includes all kernel debugger transports and enables KDUSB. The default debug transport target name for this feature is **WOATARGET**. To establish a kernel debugger connection to the phone, use the command: `Windbg -k usb:targetname=WOATARGET`. **Note** Do not include either  **IOT_KDUSB_SETTINGS** or **IOT\_KDNETUSB\_SETTINGS** if you need to enable MTP or IP over USB in the image. If the kernel debugger is enabled in the image and the debug transports are used to connect to the device, the kernel debugger has exclusive use of the USB port and prevents MTP and IP over USB from working.      |
| **IOT\_WDTF**                    | Includes components for Windows Driver Test Framework, required for HLK validation                                        |
| **IOT\_DIRECTX\_TOOLS**    | Adds DirectX tools                                                                                      |
| **IOT\_UMDFDBG\_SETTINGS** | Includes user-mode driver framework debug settings                                                      |

## Features per release

The following tabe provides an overview of supported features per IoT Core OS release, listed in alphabetical order.

| Features                                         |1803 (17134.x)|1709 (16299.x)|1703 (15063.x)|1607 (14393.x)|
|--------------------------------------------------|:------------:|:------------:|:------------:|:------------:|
| **IOT\_ALLJOYN\_APP**                            |x|x|x|x|
| **IOT\_APPLICATIONS**                            |x|x|x| |
| **IOT\_APP\_TOOLKIT**                            |x|x|x|x|
| **IOT\_BERTHA**                                  |x|x|x|x|
| **IOT\_CONTAINERS**                              |x(x64)|x(x64)| | |
| **IOT\_CORTANA**                                 |x|x|x| |
| **IOT\_CORTANA\_OBSCURELAUNCH**                  |x|x|x| |
| **IOT\_CP210x\_MAKERDRIVER**                     |x|x|x| |
| **IOT\_CRASHCONTROL\_SETTINGS**                  |x| | | |
| **IOT\_CRT140**                                  |x|x|x|x|
| **IOT\_DIRECTX\_TOOLS**                          |x|x|x|x|
| **IOT\_DISABLEBASICDISPLAYFALLBACK**             |x|x|x|x|
| **IOT\_DISABLE\_TESTSIGNING**                    |x|x|x|x|
| ~~IOT\_DISABLE\_UMCI~~ (Deprecated)              |N/A|N/A|x|x|
| **IOT\_DMAP\_DRIVER**                            |x|x|x|x|
| **IOT\_EFIESP**                                  |x|x|x|x|
| **IOT\_EFIESP\_BCD**                             |x|x|x|x|
| **IOT\_EFIESP\_BCD_MBR**                         |x|x|x| |
| **IOT\_EFIESP\_TEST**                            |x|x|x|x|
| **IOT\_ENABLE\_ADMIN**                           |x|x|x|x|
| **IOT\_ENABLE\_TESTSIGNING**                     |x|x|x|x|
| **IOT\_FFU\_FLASHMODE**                          |x(arm)| | | |
| **IOT\_FONTS\_CHINESE\_EXTENDED**                |x|x|x| |
| **IOT\_FTSER2K\_MAKERDRIVER**                    |x|x|x|x|
| **IOT\_GENERIC\_POP**                            |x|x|x|x|
| ~~IOT\_HWN\_CLASS\_EXTENSION~~ (Deprecated)      |N/A|N/A|x| |
| **IOT\_MIRACAST\_RX\_APP**                       |x| | | |
| **IOT\_MTP**                                     |x| | | |
| **IOT\_KDNETUSB\_SETTINGS**                      |x|x|x|x|
| **IOT\_KDSERIAL\_SETTINGS**                      |x|x|x|x|
| **IOT\_KDUSB\_SETTINGS**                         |x|x|x|x|
| **IOT\_KD\_ON**                                  |x|x|x|x|
| **IOT\_NANORDPSERVER**                           |x|x|x|x|
| ~~IOT\_NETCMD~~ (Deprecated)                     |N/A|N/A|x|x|
| **IOT\_POWERSHELL**                              |x|x|x|x|
| **IOT\_POWER\_SETTINGS**                         |x|x|x|x (x86/x64)|
| **IOT\_SHELL\_HOTKEY\_SUPPORT**                  |x|x|x|x|
| **IOT\_SHELL\_ONSCREEN\_KEYBOARD**               |x|x|x| |
| **IOT\_SHELL\_ONSCREEN\_KEYBOARD\_FOLLOWFOCUS**  |x|x|x| |
| **IOT\_SIREP**                                   |x|x|x|x|
| **IOT\_SPEECHDATA\_DE\_DE**                      |x|x|x|x|
| **IOT\_SPEECHDATA\_EN\_CA**                      |x|x|x| |
| **IOT\_SPEECHDATA\_EN\_GB**                      |x|x|x|x|
| ~~IOT\_SPEECHDATA\_EN\_US~~ (Deprecated)         |N/A|N/A|N/A|x|
| **IOT\_SPEECHDATA\_ES\_ES**                      |x|x|x|x|
| **IOT\_SPEECHDATA\_ES\_MX**                      |x|x|x| |
| **IOT\_SPEECHDATA\_FR\_CA**                      |x|x|x| |
| **IOT\_SPEECHDATA\_FR\_FR**                      |x|x|x|x|
| **IOT\_SPEECHDATA\_IT\_IT**                      |x|x|x|x|
| **IOT\_SPEECHDATA\_JA\_JP**                      |x|x|x|x|
| **IOT\_SPEECHDATA\_ZH\_CN**                      |x|x|x|x|
| **IOT\_SPEECHDATA\_ZH\_HK**                      |x|x|x|x|
| **IOT\_SPEECHDATA\_ZH\_TW**                      |x|x|x|x|
| **IOT\_SSH**                                     |x|x|x|x|
| **IOT\_TOOLKIT**                                 |x|x|x|x|
| **IOT\_UAP\_DEFAULTAPP**                         |x|x|x|x|
| **IOT\_UAP\_OOBE**                               |x|x|x|x|
| **IOT\_UMDFDBG\_SETTINGS**                       |x|x|x|x|
| **IOT\_UNIFIED\_WRITE\_FILTER**                  |x|x|x|x|
| **IOT\_USBFN\_CLASS\_EXTENSION**                 |x|x|x|x|
| **IOT\_WDTF**                                    |x|x|x|x|
| **IOT\_WEBB\_EXTN**                              |x|x|x|x|
| **OEM\_CustomCmd**                               |x|x|x|x|
| **OEM\_ProvAuto**                                |x|x|x|x|
## Related topics

[What's in the Windows ADK IoT Core Add-ons](iot-core-adk-addons.md)

[IoT Core manufacturing guides](iot-core-manufacturing-guide.md)
