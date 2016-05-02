---
author: joshbax-msft
title: Install a remote HCK Studio
description: Install a remote HCK Studio
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cba5e264-4a03-4010-84a8-aba764b98004
---

# Install a remote HCK Studio


You can optionally install HCK Studio on a separate computer. The computer must be able to connect to the installation folder that is shared from the HCK Controller computer. Therefore, before you can install HCK Studio, you must have already installed HCK Controller.

## Install remote HCK Studio


-   From your remote computer, click **Start**, click **Run**, type **\\\\*ControllerName*\\HCKInstall\\Studio\\Setup.exe**, and then click **Yes**.

Replace **ControllerName** with the actual name of your controller. Completing this step will install, if not already present, .NET Framework 4.0 (Client Profile and Extended).

## Configure additional user accounts


By default, the user account used to install the Controller is the only account that can run tests using HCK Studio. If you want to allow additional accounts to manage tests via remote HCK Studio, you must manually add each account to your Controller.

1.  On your Controller, add each account to the **Administrator group**.

2.  Open **HCK Manager**, click **Tools** &gt; **Management Console**, and then expand the **Users** node.

3.  Right-click **hck\_dsowners**, select **New User**.

4.  Enter the account (DOMAIN\\accountname) or MACHINE\\account).

5.  Click **OK**.

## (Optional): Configure Internet Connection Firewall (ICF)


If you choose to install HCK Studio on a computer other than the HCK Controller, you must configure the Internet Connection Firewall correctly on the HCK Controller, otherwise HCK Studio will be unable to connect to the HCK database.

This is only needed if the user account is correctly added, but is blocked by the firewall from connecting to the SQL server instance on a remote studio. This is usually in a workgroup scenario.

To configure ICF, complete the following task on the HCK Controller.

**Option 2: Add an exception to ICF**

1.  In the Control Panel, click System and Security, and then click Windows Firewall.

2.  On the left pane, click Advanced Settings.

3.  On the left pane, under Windows Firewall with Advanced Security on Local Computer, click Inbound Rules.

4.  On the right pane, under Actions, click New Rule to launch the New Inbound Rule Wizard.

5.  Make sure that the Program is selected, and then click Next.

6.  After the program path is selected, click Browse and browse to the location where **SqlServr.exe** is located. Usually that is: %Program Files (x86)\\Microsoft SQL Server\\MSSQL11.MSSQLSERVER\\MSSQL\\Binn\\sqlservr.exe

7.  Click OK, and then click OK again.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Install%20a%20remote%20HCK%20Studio%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




