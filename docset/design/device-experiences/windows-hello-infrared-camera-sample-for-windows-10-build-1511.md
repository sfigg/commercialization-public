---
title: Windows Hello infrared camera sample for Windows 10 Build 1511
description: This sample demonstrates a basic implementation of the Windows.Devices.Perception.Provider interfaces to enable Windows Hello for a infrared video camera.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 06270067-1A4E-4D60-86E3-0FAAD87A76E7
---

# Windows Hello infrared camera sample for Windows 10 Build 1511


This sample demonstrates a basic implementation of the [Windows.Devices.Perception.Provider](https://msdn.microsoft.com/library/windows/apps/windows.devices.perception.provider.aspx) interfaces to enable Windows Hello for a infrared video camera.

Specifically, this sample shows how to:

-   Implement [**IPerceptionFrameProvider**](w_dvc_percpt_prov.iperceptionframeprovider) and [**IPerceptionFrameProviderManager**](w_dvc_percpt_prov.iperceptionframeprovidermanager) to deliver infrared frames to the Windows 10 Sensor Data Service.
-   Implement a module to interface with [**IPerceptionFrameProvider**](w_dvc_percpt_prov.iperceptionframeprovider) and pass device specific properties.
-   Set [**IPerceptionFrameProvider**](w_dvc_percpt_prov.iperceptionframeprovider) properties to enable face authentication.
-   Respond to property change requests, specifically to handle requests to change a camera's [**ExposureCompensation**](w_dvc_percpt.knownperceptioninfraredframesourceproperties_exposurecompensation) property.
-   Enumerate video capture devices using media capture.
-   Open a capture stream using the Media Foundation's [**IMFSourceReader**](mf.imfsourcereader).
-   Read YUY2 video frames from the Media Foundation APIs, convert them to 8-bit grayscale, and deliver them to the Windows 10 Sensor Data Service. For more information about Media Foundation, see [Microsoft Media Foundation](mf.microsoft_media_foundation_sdk).

## Prerequisites


### System requirements

-   Windows 10 (Version 1511)
-   [Visual Studio Community 2015](http://go.microsoft.com/fwlink/p/?LinkId=532606)
-   [Windows 10 Standalone SDK](https://go.microsoft.com/fwlink/p/?LinkId=619296), if not installed with Visual Studio
-   [Windows Driver Kit](http://go.microsoft.com/fwlink/p/?LinkId=526733)

### Download the sample

Download the sample from the [Partner application development repo](http:/go.microsoft.com/fwlink?LinkId=698623) on GitHub.

This sample is an implementation of [**IPerceptionFrameProvider**](w_dvc_percpt_prov.iperceptionframeprovider), intended to work across a wide variety of capture devices, and serves as a starting point for developing device-specific providers. Depending on the specific device or scenario, additional properties or functionality will need to be added.

In order to work with this [**IPerceptionFrameProvider**](w_dvc_percpt_prov.iperceptionframeprovider) sample, a sensor must meet the following requirements:

-   The infrared sensor must function as a standard Windows Media Device like a webcam
-   The sensor must support YUY2 video mode
-   Video frames must be fixed size and cannot be interlaced

The sample provider selects the first valid video capture device during enumeration. Therefore, the target sensor must be the only device available on the PC, including any integrated webcams.

**Important**  The sample contains a compiler macro which produces different device enumeration functionality for DEBUG and RELEASE builds. When building for DEBUG, the sample will use a naive enumeration method to find and connect a device; it simply enumerates all UVC capture devices and selects the first compatible device. This method is intended as a quick start for getting your IR camera up and running with Sensor Data Service, it doesn’t require device specific information. Conversely, the RELEASE build uses a different enumeration method, where a query for a device matching a specific PID and VID is made, so that only a single device is ever returned. The PID and VID within the sample are dummy values you’ll need to replace with your own devices’s values in order for this method to work.

 

### Install the registry keys

Registry keys are used to identify the [**IPerceptionFrameProvider**](w_dvc_percpt_prov.iperceptionframeprovider) module path and *ActivationClass* name to the Sensor Data Service. Keys for this sample are included but need to be manually installed. Use the following steps to install the keys.

1.  Using file explorer, locate "FrameProviderSample.reg" file within the sample’s project folder
2.  Right-click on this file and choose "Merge" to install the keys
3.  In the User Account Control dialog box, choose Yes to allow this app to make changes to your PC
4.  In the Registry Editor warning dialog, choose Yes to continue

Keys are installed to "HKLM\\Software\\Microsoft\\Analog\\Providers\\MediaFoundation"

## Installing the SampleMft0 module


The SampleMft0 module project provides a driver Media Foundation Transform (MFT) for use with a camera's Windows Store device app. A driver MFT is used with a specific camera when capturing video. Thus the sample will not fully function until you write driver code for your specific device.

Installation of the SampleMft0 module isn't required for the basic operation of the [**IPerceptionFrameProvider**](w_dvc_percpt_prov.iperceptionframeprovider), i.e. passing frames up to Sensor Data Service. However, in order for Windows Hello to work end-to-end, you must tag the IR frames with [**ActiveIlluminationEnabled**](w_dvc_percpt.knownperceptioninfraredframesourceproperties_activeilluminationenabled) property (as described in the Windows Hello Checklist), requiring you to add device specific functionality. The SampleMft0 project demonstrates one way you may choose to implement this requirement by reading the LED illumination state within the SampleMft0 module and passing an attribute up with the frame to your **IPerceptionFrameProvider**. Note that you must first modify the SampleMft0 project to read the device state and set the attribute appropriately before it’ll work.

**Note**  Using SampleMft0 is not the only solution for tagging frames with an illumination state nor is it necessarily the recommended way.

 

To build for ARM, follow these steps:

**Open and build the SampleMft0 Solution**

1.  Using **Configuration Manager**, from the drop-down box for **Active solution platform**, select **&lt;New...&gt;**. In the **New Project Platform** dialog box, under **New platform**, select **ARM** and click **OK**.
2.  Open project properties for the **SampleMft0** project, and follow these steps:
    -   Under **Configuration Properties** &gt; **General**, set **Use of ATL** to **Static Link to ATL**.
    -   Under **Configuration Properties** &gt; **C/C++** &gt; **Code Generation,** set **Runtime Library** to **Multi-threaded (/MT)**.
    -   Under **Linker** &gt; **Input**, edit **Ignore Specific Default Libraries** to include shlwapi.lib and urlmon.lib.

3.  Copy FrameProviderSampleMft0.dll to C:\\Program Files (x86)\\FrameProviderSampleMft0 (or C:\\Program Files\\FrameProviderSampleMft0) on a 32-bit system).
4.  Open an administrator command prompt and navigate to the new location of DLL.
5.  Run regsvr32 on FrameProviderSampleMft0.dll.
6.  On an x64 system, build the x64 version of the DLL and repeat steps 3 to 5, copying the 64-bit DLL to C:\\Program Files\\FrameProviderSampleMft0).
7.  Run regedit, and open the device registry key for your camera, under HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\DeviceClasses\\.

    The following example shows a path to a device registry key for a camera. Your camera has a different device ID and may have a different device class:

    ```
       
    HKEY_LOCAL_MACHINE\
       SYSTEM\
            CurrentControlSet\
               Control\
                 DeviceClasses\
                    {E5323777-F976-4f5b-B94699C46E44}\
                       ##?#USB#VID_O45E&amp;PID075d&amp;MI_00#8&amp;23C3DB65&amp;0&amp;0000#{E5323777-F976-4f5b-9b550B94699C46E44}\
    ```

8.  In **Registry Editor**, under the **GLOBAL\#\\Device Parameters** key, add a **CameraPostProcessingPluginCLSID** value, and set its value to {DDBE4BC1-541F-4D43-A25B-1F23E7AF4505}. This is the CLSID of the Driver MFT defined in the SampleMFT0 project.

## Building and deploying the sample


1.  Open the **FrameProviderSample** Solution (.sln) in Visual Studio.
2.  Select **Build-**&gt;**Build Solution**.
3.  In the **Solution Explorer** window, right-click **FrameProviderSample** project and select **Open Folder** in **File Explorer**.
4.  Open FrameProviderSample's output folder (depending on the build configuration). Use the x64 build if running on a 64-bit OS. As configured, this sample outputs to the Debug foloer.
5.  Create a new directory called "%SystemDrive%\\Analog\\Providers".
6.  Copy "SampleFrameProvider.dll" to "%SystemDrive%\\Analog\\Providers"
7.  Launch the Windows Hello setup app under **Settings-**&gt;**Accounts-**&gt;**Sign-in Options** to start the **Sensor Data Service**, which loads the provider DLL.
8.  During enrollment, you should see frames from your sensor in the visualizer.

**Note**  If these keys are missing or mismatched, the FrameProviderSample will not function. Make sure to update these keys if any of the following are changed:
-   The file name of the FrameProviderSample’s DLL is "SampleFrameProvider.dll"
-   The file path to the FrameProviderSample DLL is "%SystemDrive%\\Analog\\Providers"
-   The name of the class, including the namespace, implementing IFrameProviderManager is "MediaFoundationProvider.SampleFrameProviderManager"

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Windows%20Hello%20infrared%20camera%20sample%20for%20Windows%2010%20Build%201511%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




