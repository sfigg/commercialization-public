---
author: kpacquer
Description: 'Here''s the features you can add to Windows 10 IoT Core (IoT Core) images.'
ms.assetid: cbae6949-ccfe-4015-a9b0-a269f6f30d5a
MSHAttr: 'PreferredLib:/library'
title: IoT Core feature list
---

# IoT Core feature list

Here's the features you can add to Windows 10 IoT Core (IoT Core) images.

Add features using the OEMInput XML file. To learn more, see the [IoT Core manufacturing guide](iot-core-manufacturing-guide.md).

## <span id="Retail_features_defined_by_Microsoft"></span><span id="retail_features_defined_by_microsoft"></span><span id="RETAIL_FEATURES_DEFINED_BY_MICROSOFT"></span>Retail features defined by Microsoft

The following table describes the Microsoft-defined features that can be used by OEMs in the Features element in the **OEMInput** file for **Retail** build.

When creating images for your device, determine which features are required and which features are optional. 

### <span id="Required_features"></span>Required features

The following features must be included in all images, though they may be customized.

| Features              | Description                                                                                             |
|-----------------------|---------------------------------------------------------------------------------------------------------|
| **IOT\_APP\_TOOLKIT** | Adds tools required for Appx installation and management                                                |
| **IOT\_EFIESP**       | Boots the device using UEFI                                                                             |
| **IOT\_UAP\_OOBE**    | Includes the inbox OOBE app that is launched during the first boot and also during installation of apps |

### <span id="Visual_Studio_debug_tools"></span> Visual Studio debug tools

| Features                   | Description                                                                                             |
|----------------------------|---------------------------------------------------------------------------------------------------------|
| **IOT\_CRT140**            | Adds CRT binaries                                                                                       |
| **IOT\_DIRECTX\_TOOLS**    | Adds DirectX tools                                                                                      |
| **IOT\_UMDFDBG\_SETTINGS** | Includes user-mode driver framework debug settings                                                      |

### <span id="Developer_tools"></span>Developer tools

| Features                   | Description                                                                                                                 |
|----------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| **IOT\_NETCMD**            | Adds the command-line tool: net.exe, used for configuring network connectivity                                              |
| **IOT\_POWERSHELL**        | Adds PowerShell                                                                                                             |
| **IOT\_SIREP**             | Enables SIREP service for TShell connectivity                                                                               |
| **IOT\_SSH**               | Enables Secure Shell (SSH) connectivity                                                                                     |
| **IOT\_TOOLKIT**           | Includes developer tools such as: Kernel Debug components, FTP, Network Diagnostics, basic device portal, and XPerf. This also relaxes the firewall rules and enables various ports.  **Note** We don't recommend including this feature in the Retail image.                                                                                           |
| **IOT\_WEBB\_EXTN**        | Enables IOTCore-specific extensions to the Windows Device Portal. The basic device portal is included in the IoT Toolkit.   |

### <span id="Apps"></span>Apps and related features
| Features                        | Description                                                                                                                 |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| **IOT\_ALLJOYN\_APP**           | Adds the AllJoyn application, used for Headless ZwaveAdapterAppx. Requires **IOT\_APP\_TOOLKIT** to install this appx on first boot.                             |
| **IOT\_BERTHA**                 | Adds a sample app: "Bertha". This app provides basic version info and connectivity status.  Requires **IOT\_APP\_TOOLKIT** to install this appx on first boot.            |
| **IOT\_CP210x\_MAKERDRIVER**    | Adds the SiliconLabs USB to Serial driver                                                                                   |
| **IOT\_GENERIC\_POP**             | Adds the Generic device targeting info for OS only Updates. New in Windows 10, version 1607.                                |
| **IOT\_FTSER2K\_MAKERDRIVER**   | Adds the FTDI USB-to-Serial driver                                                                                          |
| **IOT\_NANORDPSERVER**          | Adds [Remote Display packages](https://developer.microsoft.com/windows/iot/docs/remotedisplay). New in Windows 10, version 1607.                      |
| **IOT\_NETCMD**                 | Adds the command-line tool: net.exe, used for configuring network connectivity                                              |
| **IOT\_SHELL\_HOTKEY\_SUPPORT** | Adds support to launch default app using a hotkey: [VK_LWIN (Left Windows key)](https://msdn.microsoft.com/library/windows/desktop/dd375731.aspx). New in Windows 10, version 1607.                                                    |  
| **IOT\_UAP\_DEFAULTAPP**        | Adds a sample app, "Chucky". This app is similar to "Bertha".  Requires **IOT\_APP\_TOOLKIT** to install this appx on first boot.                             |
| **IOT\_UNIFIED\_WRITE\_FILTER** | Adds [Unified Write Filter (UWF)](https://developer.microsoft.com/windows/iot/docs/uwf) to protect physical storage media from data writes. New in Windows 10, version 1607.        |

### <span id="Speech_data"></span>Speech data

| Features                       | Description                                                                        |
|--------------------------------|------------------------------------------------------------------------------------|
| **IOT\_SPEECHDATA\_DE\_DE**    | Adds speech data for German                                                        |
| **IOT\_SPEECHDATA\_EN\_GB**    | Adds speech data for UK English                                                    |
| **IOT\_SPEECHDATA\_EN\_US**    | Adds speech data for US English                                                    |
| **IOT\_SPEECHDATA\_ES\_ES**    | Adds speech data for Spanish                                                       |
| **IOT\_SPEECHDATA\_FR\_FR**    | Adds speech data for French                                                        |
| **IOT\_SPEECHDATA\_IT\_IT**    | Adds speech data for Italian                                                       |
| **IOT\_SPEECHDATA\_JA\_JP**    | Adds speech data for Japanese. New in Windows 10, version 1607                     |
| **IOT\_SPEECHDATA\_ZH\_CN**    | Adds speech data for Chinese (PRC)                                                 |
| **IOT\_SPEECHDATA\_ZH\_HK**    | Adds speech data for Chinese (Hong Kong S.A.R.). New in Windows 10, version 1607   |
| **IOT\_SPEECHDATA\_ZH\_TW**    | Adds speech data for Chinese (Taiwan). New in Windows 10, version 1607             |

### <span id="Features in the IoT Core Add-Ons"></span>Features in the IoT Core Add-Ons


| Features                  | Description                                                          |
|---------------------------|----------------------------------------------------------------------|
| **IOT\_OEM\_CustomCmd**   | Adds scripts which support adding OEM Apps using the ADK Add-Ons     |


## <span id="Test_features_defined_by_Microsoft"></span><span id="test_features_defined_by_microsoft"></span><span id="TEST_FEATURES_DEFINED_BY_MICROSOFT"></span>Test features defined by Microsoft

The following table describes the Microsoft-defined test features that can be used by OEMs in the Features element in the **OEMInput** file for **Test** build ONLY.

| Features                         | Description                                                                                                               |
|----------------------------------|---------------------------------------------------------------------------------------------------------------------------|
| **IOT\_DISABLE\_TESTSIGNING**    | Disables runtime-installation of test-signed packages                                                                     |
| **IOT\_DISABLE\_UMCI**           | Disables the code integrity check                                                                                         |
| **IOT\_EFIESP\_TEST**            | UEFI packages required for booting test images. Should not be used with IOT_EFIESP                                        |
| **IOT\_ENABLE\_ADMIN**           | New in Windows 10, version 1607                                                                                           |
| **IOT\_ENABLE\_TESTSIGNING**     | Enables run-time installation of test-signed packages. Allows test-signed drivers and (.appx) apps to run                 |
| **IOT\_KD\_ON**                  | Enables Kernel Debugger                                                                                                   |
| **IOT\_KDNETUSB\_SETTINGS**      | Includes all kernel debugger transports and enables KDNET over USB. The default debug transport settings for this feature are an IP address of &quot;1.2.3.4&quot;, a port address of &quot;50000&quot;, and a debugger key of &quot;4.3.2.1&quot;. To use the default IP address of 1.2.3.4, run VirtEth.exe with the /autodebug flag.  For example, to establish a kernel debugger connection to the phone, use the command:`Windbg -k net:port=50000,key=4.3.2.1`  **Note** Do not include either **IOT\_KDUSB\_SETTINGS** or **IOT\_KDNETUSB\_SETTINGS** if you need to enable MTP or IP over USB in the image. If the kernel debugger is enabled in the image and the debug transports are used to connect to the device, the kernel debugger has exclusive use of the USB port and prevents MTP and IP over USB from working.   |
| **IOT\_KDSERIAL\_SETTINGS**      | Includes all kernel debugger transports and enables KDSERIAL with the following settings: 115200 Baud, 8 bit, no parity   |
| **IOT\_KDUSB\_SETTINGS**         | Includes all kernel debugger transports and enables KDUSB. The default debug transport target name for this feature is **WOATARGET**. To establish a kernel debugger connection to the phone, use the command: `Windbg -k usb:targetname=WOATARGET`. **Note** Do not include either  **IOT_KDUSB_SETTINGS** or **IOT\_KDNETUSB\_SETTINGS** if you need to enable MTP or IP over USB in the image. If the kernel debugger is enabled in the image and the debug transports are used to connect to the device, the kernel debugger has exclusive use of the USB port and prevents MTP and IP over USB from working.      |
| **IOT\_WDTF**                    | Includes components for Windows Driver Test Framework, required for HLK validation                                        |

## <span id="Device-specific_features"></span><span id="device-specific_features"></span><span id="DEVICE-SPECIFIC_FEATURES"></span>Device-specific features

Some features are required only for certain boards (Raspberry Pi 2=**RPi2**, Qualcomm Dragonboard=**DB**, Minnowboard Max =**MBM**).

| Features                             | Description                                                | Device                                                               |
|--------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------|
| **IOT\_DISABLEBASICDISPLAYFALLBACK** | Disables the inbox basic render driver.                    | This feature should only be used with the Qualcomm DragonBoard (DB). |
| **IOT\_DMAP\_DRIVER**                | Adds DMAP drivers.                                         | Required for MBM and RPi2. Not supported for DB.                     |
| **IOT\_EFIESP\_BCD** |Sets boot configuration data (BCD) for GPT-based drives.                    | Required for MBM.                                                    |
| **IOT\_POWER\_SETTINGS**             | Prevents the device from going to sleep due to inactivity. | Required for MBM and other x86/amd64 platforms. **Note** The name of this package changed from IOT\_POWER\_SETIINGS in Windows 10, version 1607. |

## <span id="related_topics"></span>Related topics

[What's in the Windows ADK IoT Core Add-ons](iot-core-adk-addons.md)

[IoT Core manufacturing guides](iot-core-manufacturing-guide.md)
