---
title: Step 2 Install Client on the test system(s)
description: Step 2 Install Client on the test system(s)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: EC5E600B-8E22-4D2D-AEC7-B7DDBD83CB8D
---

# Step 2: Install Client on the test system(s)


After you install the Windows Hardware Lab Kit (Windows HLK) on the test server, you are ready to add test systems to the environment. You must install the Windows HLK Client software on each test system. The Windows HLK Client software is stored on the Windows HLK test server.

**Warning**  
If you are testing software, be sure to install the product on the test system first, and then install the Windows HLK Client software.

 

## <span id="To_install_the_Windows_HLK_Client"></span><span id="to_install_the_windows_hlk_client"></span><span id="TO_INSTALL_THE_WINDOWS_HLK_CLIENT"></span>To install the Windows HLK Client


1.  On the test system, browse to the following location:

    -   **\\\\&lt;ControllerName&gt;\\HLKInstall\\Client\\Setup.cmd**.

        **Note**   Replace *&lt;ControllerName&gt;* with the name of the test server.

         

        **Note**  If the following software is not already installed, it is installed during this step: .NET Framework 4 (Client Profile and Extended), Application Verifier, Windows Driver Test Framework (WDTF), and Windows Performance Toolkit (WPT).

         

        **Note**  If the test system has a Server Core installation, then you should install the HLK client using the silent install option:
        ``` syntax
        \\<HLKController>\HLKInstall\Client\Setup.cmd /qn ICFAGREE=Yes
        ```

         

2.  The **Windows Hardware Lab Kit Client Setup** wizard appears. To start the wizard, choose **Next**.

3.  On the **Internet Connection Firewall Agreement** page, select **Yes I will allow a port to be opened**, and then choose **Next**.

    **Note**  
    If the **Internet Connection Firewall Agreement** page doesn't appear, either Windows Firewall isn't installed, or another software firewall or hardware firewall is installed on the computer. If another firewall is installed, you must manually open TCP port 1771 to proceed with installation. Refer to the instructions that came with your firewall product to manually open a TCP port. If you continue without opening port 1771, the installation may fail or the Client software might not function properly.

     

4.  When the **Ready to Install** page appears, select **Install**.

5.  Click **Finish** to exit the wizard.

    **Tip**  
    When installation completes, confirm its success by going to the **Control Panel** and choosing **Uninstall a program**. **Windows Hardware Lab Kit Client** should appear in the program list.

     

6.  Repeat steps 1–5 for each test system.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_hlk\p_sxs_hlk%5D:%20Step%202:%20Install%20Client%20on%20the%20test%20system%28s%29%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




