---
title: Step 1 Install the HLK Controller
description: Step 1 Install the HLK Controller
MS-HAID:
- 'p\_sxs\_hlk.step\_1\_\_install\_the\_hlk\_controller'
- 'p\_sxs\_hlk.proxy\_step\_1\_\_install\_the\_hlk\_controller'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6FD0FD30-EDA6-48C6-A78E-76043156031D
---

# Step 1: Install the HLK Controller


In this step, you install Windows HLK software on the designated test server. The setup program installs the Windows HLK Controller and Studio, in addition to other resources.

**Warning**  The Windows Hardware Lab Kit should only be installed on machines that are dedicated solely for testing purposes. Do not install any HLK component on a machine that is outside of a dedicated testing environment.

 

**Note**  The test server should be preinstalled with Windows Server 2008 R2, Windows Server 2012, Windows Server 2012 R2, or Windows Server 2016.

 

**Important**  If you are upgrading your HLK environment to a later version, you must first uninstall the previous version of the HCK or HLK software from the test server and any connected test clients.

 

## <span id="To_install_Windows_HLK__follow_these_steps_"></span><span id="to_install_windows_hlk__follow_these_steps_"></span><span id="TO_INSTALL_WINDOWS_HLK__FOLLOW_THESE_STEPS_"></span>To install Windows HLK, follow these steps:


****

1.  Download [the HLK](https://go.microsoft.com/fwlink/p/?LinkId=733613).

    **Note**  If you are downloading directly onto your server, you must disable the IE Enhanced Security Configuration (IE ESC).

     

2.  When prompted, select **Run**.

    **Warning**  Don't select the **Save** option. The **Save** option only downloads the setup file and not the complete kit.

     

3.  When the **Specify Location** screen appears, choose the appropriate option:

    1.  Install option – choose **Install the Windows Hardware Lab Kit to this computer**, and then choose **Install** .

    2.  Download option – choose **Download the Windows Hardware Lab Kit for installation on a separate computer**, and then choose **Next**.

4.  Select the **Windows Hardware Lab Kit -- Controller + Studio** option.

    If you are installing directly, you must open a port on your server. Choose **Yes**, to allow the installation to open a port.

5.  When the **Join the Customer Experience Improvement Program (CEIP)** screen appears, choose **Yes** or **No**, and then choose **Next**.

    **Note**  If your network isn't connected to the Internet, choose **No**.

     

6.  Review the License Agreement, and then choose **Accept** to proceed.

    Installation takes about 45 minutes.

    **Note**  If Microsoft .NET Framework 4.5 isn't already installed on the computer, follow the prompts to install it. After the computer restarts, you must repeat the installation instructions from **Step 1** for installing to this computer.

     

    **Note**  If you selected the download option, copy your download to your test server. Run HLKSetup.exe and repeat the installation instructions from **Step 3** for installing to this computer.

     

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_hlk\p_sxs_hlk%5D:%20Step%201:%20Install%20the%20HLK%20Controller%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




