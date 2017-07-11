---
title: Step 4 Onboard Mobile Test systems
description: After you install the Windows Hardware Lab Kit (Windows HLK) on the test server, and the Windows HLK Proxy Client on the Proxy system, you are ready to add mobile test systems to the environment.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3CEA61AA-5625-4F1F-84ED-69ED726BB74F
---

# Step 4: Onboard Mobile Test systems


After you install the Windows Hardware Lab Kit (Windows HLK) on the test server, and the Windows HLK Proxy Client on the Proxy system, you are ready to add mobile test systems to the environment.

## <span id="Known_Issues"></span><span id="known_issues"></span><span id="KNOWN_ISSUES"></span>Known Issues


| Issue                                                                               | Workaround         |
|-------------------------------------------------------------------------------------|--------------------|
| Device name reported in HLK as **Windows Phone** instead of the actual device name. | Reboot the device. |

 

## <span id="usb"></span><span id="USB"></span>Onboarding USB connected devices


1.  Install the USB driver. On the proxy system, navigate to **\\\\&lt;ControllerName&gt;\\HLKInstall\\ProxyClient\\USB Drivers**, where *&lt;ControllerName&gt;* is the name of the test server. Right-click **usbnet.inf**, and then click **Install**.

    **Important**  Starting with Windows 10, version 1607, the USB driver is automatically installed. You should manually install the driver only if using an older version of Windows.

     

2.  Get the DeviceGUID for the connected device:

    1.  Put the device in flashing mode.

    2.  From **%ProgramFiles(x86)\\WTTMobile\\tools**, run the following command:

        ``` syntax
        ffutool.exe -list
        ```

    **Note**  For more information on HLK mobile testing tools and utilities, see the following topic:
    -   [HLK Mobile Testing Tools and Utilities](p_hlk.hlk_mobile_testing_tools_and_utilities)

     

3.  Onboard the device. From an elevated command prompt, run the following command:

    ``` syntax
    %ProgramFiles(x86)\WTTMobile\tools\KitsDeviceDetector.exe /Physical:Fake_PC.dll /DeviceName:<DeviceName> /DeviceId:<DeviceGUID> /ImagePath:<full path to the flash_lab.ffu image> /machinepool:<machine pool>
    ```

    Example:

    ``` syntax
    KitsDeviceDetector.exe /Physical:Fake_PC.dll /DeviceName:mydevice /DeviceId:00000015-c0fb-79c3-0000-000000000000 /ImagePath:C:\flash_lab.ffu /machinepool:$\mypool
    ```

    **Note**  The KitsDeviceDetector log can found at **%ProgramFiles(x86)%\\WTTMobile\\Tools\\KitsDeviceDetector.log**

     

    **Note**  If testing with a Health image, include the following parameter:
    ``` syntax
    /imageprofile:health
    ```

     

4.  Restart the proxy service in elevated mode.

    1.  In the Proxy Service command prompt window, press CTRL + C to stop the service.

    2.  Run the following command:

        ``` syntax
        WTTProxy.exe -console
        ```

5.  Validation: After running device detector (steps above), the device should show in HLK with a valid OS and you should be able to see targets for the device in HLK Studio (create a dummy project).

## <span id="aries"></span><span id="ARIES"></span>Onboarding Aries connected devices


1.  On the Proxy system, launch an elevated command prompt.
2.  Navigate to %ProgramFiles(x86)%\\WTTMobile\\Tools\\ and onboard the phone with the following command:

    ``` syntax
    KitsDeviceDetector.exe /devicefilters:<aries name> /ImagePath:<full path to the flash_lab.ffu image> /machinepool:<machine pool>
    ```

    **Example:**

    ``` syntax
    KitsDeviceDetector.exe /devicefilters:myaries /ImagePath:C:\flash_lab.ffu /machinepool:$\mypool
    ```

    **Note**  If testing with a Health image, include the following parameter:
    ``` syntax
    /imageprofile:health
    ```

     

    **Note**  Use %ProgramFiles(x86)%\\WTTMobile\\Tools\\AriesUtil.exe to find the name of the Aries dongles on the network.
    The command **AriesUtil.exe Discover** will return the full list of available devices.

    A firewall exception must be added for AriesUtil.exe prior to use.

    If no devices are detected, you may need to use the **/Adapter** parameter. The adapter type can be determined by opening the Networking and Sharing Center on the controller, the Adapter is listed under **Connections**. The most common Adapter value is **Ethernet**.

    Use the command **AriesUtil.exe /?** for a complete list of available commands.

     

    **Note**  The KitsDeviceDetector log can be viewed here:
    -   %ProgramFiles(x86)%\\WTTMobile\\Tools\\KitsDeviceDetector.log

     

    **Note**  For more information on HLK mobile testing tools and utilities, see the following topic:
    -   [HLK Mobile Testing Tools and Utilities](p_hlk.hlk_mobile_testing_tools_and_utilities)

     

3.  Restart the Proxy Service in Elevated console
    1.  In the Proxy Service command prompt window press CTRL + C to stop the service
    2.  Run the following command:

        ``` syntax
        WTTProxy.exe -console
        ```

4.  \[For Health image only\] – After KitsDeviceDetector is complete, run the following commands from %ProgramFiles(x86)%\\WTTMobile\\Tools\\

    ``` syntax
    AriesUtil.exe ResetDevice /Aries:<Aries-name> [/Autoskip:true]
    ```

5.  Validation: After running device detector (steps above), the device should show in HLK with a Valid OS and you should be able to see targets for the device in HLK Studio (create a dummy project).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_hlk\p_sxs_hlk%5D:%20Step%204:%20Onboard%20Mobile%20Test%20systems%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




