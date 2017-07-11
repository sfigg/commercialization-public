---
title: Step 2 Setup an HLK Proxy System
description: Step 2 Setup an HLK Proxy System
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 25425C6A-D375-4C5A-9A91-5F596DB32E96
---

# Step 2: Setup an HLK Proxy System


Follow these steps on the machine you have designated as your Proxy system– this can be either the same machine as the HLK Controller or a separate machine running a Client or Server SKU.

**Note**  If a separate system is used as the Proxy client host, ensure that the Domain or Workgroup configuration matches the configuration of the HLK Controller. Account name and password of the proxy system should also match the HLK Controller.

 

1.  On the Proxy system (which may be the same machine as the HLK Controller), run setup.exe from the following location:
    -   \\\\&lt;ControllerName&gt;\\HLKInstall\\ProxyClient\\setup.exe

    **Note**  Replace &lt;ControllerName&gt; with the name of the test server.

     

2.  The **WTT Proxy Setup** wizard appears. To start the wizard, choose **Next**.
3.  Select **Next** on the **Destination Folder** page.
4.  Select **Install** to proceed.
5.  Open an elevated command prompt and navigate to %ProgramFiles(X86)%\\WTTMobile\\Client\\
6.  Start the Proxy Service by running the following command from the elevated command prompt:

    ``` syntax
    WTTProxy.exe –console
    ```

7.  Leave the elevated command prompt window open.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_hlk\p_sxs_hlk%5D:%20Step%202:%20Setup%20an%20HLK%20Proxy%20System%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




