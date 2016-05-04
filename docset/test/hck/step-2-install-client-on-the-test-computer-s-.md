---
author: joshbax-msft
title: Step 2 Install Client on the test computer(s)
description: Step 2 Install Client on the test computer(s)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 52cb0e07-c184-4967-bd1c-db9bd733fa53
---

# Step 2: Install Client on the test computer(s)


After you install the Windows Hardware Certification Kit (Windows HCK) on the test server, you are ready to add test computers to the environment. You must install the Windows HCK Client software on each test computer. The Windows HCK Client software is stored on the Windows HCK test server.

**Warning**  
If you are testing software, be sure to install the product on the test computer first, and then install the Windows HCK Client software.

 

## To install the Windows HCK Client


1.  On the test computer, browse to the following location:

    -   For x86 and X64, type **\\\\&lt;ControllerName&gt;\\HCKInstall\\Client\\Setup.exe**.

    -   For ARM devices, type **\\\\&lt;ControllerName&gt;\\HCKInstall\\ARMClient\\Setup.exe**.

        **Important**  
        Before you install the Windows HCK Client software on an ARM machine, you must apply the Kits policy setting to that machine. See [Apply the Kits policy setting to ARM machines](#kitspolicy) for instructions.

         

        **Note**  
        Replace *&lt;ControllerName&gt;* with the name of the test server.

        If the following software is not already installed, it is installed during this step: .NET Framework 4 (Client Profile and Extended), Application Verifier, Windows Driver Test Framework (WDTF), and Windows Performance Test (WPT).

         

2.  The Windows HCK **Hardware Certification Kit Client Setup** wizard appears. To start the wizard, click **Next**.

3.  On the **Internet Connection Firewall Agreement** page, select **Yes I will allow a port to be opened**, and then click **Next**.

    **Note**  
    If the **Internet Connection Firewall Agreement** page doesn't appear, Windows Software Firewall isn't installed, or another software firewall or hardware firewall is installed on the computer. If another firewall is installed, you must manually open TCP port 1771 to proceed with installation. Refer to the instructions that came with your firewall product to manually open a TCP port. Otherwise, the installation may fail or the Client software might not function properly.

     

4.  When the **Ready to Install** page appears, select **Install**.

5.  Click **Finish** to exit the wizard.

    **Tip**  
    When installation completes, confirm its success by clicking **Start** &gt; **Control Panel**&gt; **Uninstall a program**. Confirm that **Windows Hardware Certification Kit Client** appears in the program list.

     

6.  Repeat steps 1–5 for each test computer.

## <a href="" id="kitspolicy"></a>Apply the Kits policy setting to ARM machines


You must apply the Kits policy setting to all Windows 8.1 ARM clients that are not DEBUG-unlocked before you install the Windows HCK Client software, or the installation will fail. You can skip these steps for ARM machines that are already DEBUG-unlocked.

You must run these steps only one time per ARM machine to apply the Kits policy setting. The Kits policy setting persists on the machine even after the Windows HCK Client software is uninstalled.

**To apply the Kits Policy setting**

1.  On the ARM client machine, open **File Explorer**.

2.  Create a temporary folder; for example, **c:\\temp**.

3.  On the Windows HCK controller, navigate to the **\\HCKInstall\\ArmClient** folder.

4.  Copy the following files from the **\\HCKInstall\\ArmClient** folder on the Windows HCK controller to the temporary folder on the ARM machine:

    -   **InstallKitsPolicy.cmd**

    -   **SecureBootDebug.efi**

    -   **Microsoft-Windows-Kits-Secure-Boot-Policy.p7b**

5.  Open a command prompt window that has administrative privileges. In the command prompt window, navigate to the temporary folder and type **InstallKitsPolicy.cmd**.

6.  When the machine reboots, follow the instructions on the screen. If you have a keyboard, use the **Down** key to select **Accept and Install**, and then press **Enter**. If you do not have a keyboard, use the **Volume Down** button to select **Accept and install** and then press the **Windows** button.

    **Note**  
    There is no equivalent of **ESC** without a keyboard. You must either connect a keyboard to the machine or reboot the machine.

     

 

 






