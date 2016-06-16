---
author: joshbax-msft
title: Step 1 Install Controller and Studio on the test server
description: Step 1 Install Controller and Studio on the test server
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f149d41e-e91f-40dc-b372-9ca79908c607
---

# Step 1: Install Controller and Studio on the test server


In this step, you install Windows HCK software on the designated test server. The test server should be preinstalled with Windows Server 2008 R2 or Windows Server® 2012. The setup program installs the Windows HCK Controller and Studio, in addition to other resources.

## To install Windows HCK


****

1.  Download the Windows HCK from the [Windows Dev Center](http://go.microsoft.com/fwlink/?LinkId=247519)

2.  From the download location, click **Download** &gt; **Now**.

    **Note**  
    If you are downloading directly onto your server, you must disable the IE Enhanced Security Configuration (IE ESC).

     

3.  When prompted, select **Run**.

    **Warning**  
    Don't select the **Save** option. The Save option only downloads Windows HCK Setup and not the complete kit.

     

4.  When the **Specify Location** screen appears, select appropriate option:

    1.  Install option – Select **Install the Windows HCK to this computer**, and then click **Install** .

    2.  Download option – Select **Download Windows HCK for installation on a separate computer**, and then click **Next**.

5.  Select **Controller + Studio** option.

    If you are installing directly, you must open a port on your server. Select **Yes**, to open port.

6.  When the **Join the Customer Experience Improvement Program (CEIP)** screen appears, select **Yes** or **No**, and then click **Next**.

    **Note**  
    If your network isn't connected to the Internet, select **No**.

     

7.  Review the License Agreement, and then click **Accept** to proceed.

8.  If you selected the install option, installation takes about 45 minutes. If Microsoft .NET Framework 4.5 isn't already installed on the computer, follow the prompts to install it. After the computer restarts, you must repeat the installation instructions from **Step 1** for installing to this computer.

    If you selected the download option, copy your download to your test server. Run HCKSetup.exe and repeat the installation instructions from **Step 3** for installing to this computer.

**Important**  
If you are upgrading your HCK environment to a later version, you must first uninstall the previous version of the HCK software from both the test server and connected test client(s).

 

## Related topics


[HCK Studio](http://go.microsoft.com/fwlink/p/?linkid=317853)

[Install a remote HCK Studio](http://go.microsoft.com/fwlink/p/?linkid=317854)

[Install standalone HCK Studio](http://go.microsoft.com/fwlink/?LinkId=317855)

 

 







