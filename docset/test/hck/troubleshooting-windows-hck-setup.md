---
author: joshbax-msft
title: Troubleshooting Windows HCK Setup
description: Troubleshooting Windows HCK Setup
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1d876052-b83b-43d0-950e-124946eb50b7
---

# Troubleshooting Windows HCK Setup


This article contains information to help you to troubleshoot Windows Hardware Certification Kit (Windows HCK) installation and setup issues.

**In this topic:**

-   [Cannot browse \\\\&lt;controller-name&gt;\\HCKInstall\\ on Studio or Client computer](#cantbrowse)

-   [Cannot change or repair Windows HCK by using Control Panel](#nocp)

-   [Cannot install HCK.AddLoggerEntries: Access is denied](#accessden)

-   [Cannot install the Windows HCK Client](#tsclient)

-   [Cannot install or remove the Windows HCK Controller](#contr)

-   [Client installation fails with error "This app can't run on your PC”](#appcantrun)

-   [Error: Failed to connect to database. Failed to connect to OM.](#noconn)

-   [Error: SQL client components are required for this operation](#sqlerror)

-   [Troubleshooting Windows HCK Client installation](#tsclient)

## <a href="" id="cantbrowse"></a>Cannot browse \\\\&lt;controller-name&gt;\\HCKInstall\\ on Studio or Client computer


If you cannot browse to the HCKInstall folder from the Windows HCK Studio or Client, review the setup and configuration information in the [Step 1: Install Controller and Studio on the test server](step-1-install-controller-and-studio-on-the-test-server.md) topic.

## <a href="" id="nocp"></a>Cannot change or repair Windows HCK by using Control Panel


If you try to change or repair the Windows HCK by using Control Panel, you receive an error message that the repair failed. To change or repair your Windows HCK installation, use Control Panel to uninstall **Windows Hardware Certification Kit**, and then reinstall the Windows HCK See [Step 1: Install Controller and Studio on the test server](step-1-install-controller-and-studio-on-the-test-server.md).

## <a href="" id="accessden"></a>Cannot install HCK.AddLoggerEntries: Access is denied


In rare cases, Windows HCK setup might fail just before it completes. If you look at the Windows HCK Controller log, CA AddLoggerEntries appears with an **Access is denied** error. If this happens, run HCKSetup.exe again to see if the Windows HCK installs successfully. If setup fails again, see [Windows HCK Support](windows-hck-support.md) for instructions about how to contact Support. Include the \*HCKControllerx86\_en\_us.log file from the %temp%\\hck folder.

## <a href="" id="tsclient"></a>Cannot install the Windows HCK Client


If you cannot install the Windows HCK Client, review the installation info in the [Step 2: Install Client on the test computer(s)](step-2-install-client-on-the-test-computer-s-.md) topic and make sure that you follow these instructions.

If you still cannot install the Windows HCK Client, locate these Client log files in the **%TEMP%** folder. See [Windows HCK Support](windows-hck-support.md) for information about how to contact Support, and share the following client log files with Microsoft Support:

-   WLKInstall.log

-   Windows Hardware Certification Kit Client\_Install.log

-   Windows Driver Testing Framework (WDTF) Runtime Libraries\_Install.log

-   Application Verifier x64 External Package\_Install.log

-   WPTx64\_Install.log

## <a href="" id="contr"></a>Cannot install or remove the Windows HCK Controller


If you encounter issues installing the Windows HCK Controller, confirm the following:

-   The operating system uses the English language (en-us) version of Windows Server 2008 R2 x64 or Windows Server® 2012 and is not running as a domain controller.

-   The system language is set to US English. To do this, click **Region and Language** in **Control Panel**, click the **Administrative tab**, click **Change system locale**, and then select **English (United States)**.

If you cannot install or remove the Windows HCK Controller, review the controller log file that is located in the %temp%\\HCK folder.

**To review the Windows HCK Controller log file**

1.  At a command prompt, type **%HomeDrive%**, and then press **Enter**.

2.  Type **cd %temp%\\HCK**, and then press **Enter**.

3.  Type **dir \*HCKControllerx86\_en\_us.log**, and then press **Enter**.

4.  Open the log file in a text editor such as Notepad.

    **Note**  
    If more than one file ends in HCKControllerx86\_en\_us.log, open the newest file. To open the log file in Notepad from the command line, type **Notepad**, the full file name, and then press **Enter**.

     

5.  Search for **return value 3** to see which action failed. Error information is located a few lines above the string **return value 3**.

    ``` syntax
    MSI (s) (F4:74) [18:58:28:187]: Executing op: ActionStart(Name=CreateStandaloneEnterprise,,)
    MSI (s) (F4:74) [18:58:28:187]: Executing op: CustomActionSchedule(Action=CreateStandaloneEnterprise,ActionType=17409,Source=BinaryData,Target=CAQuietExec,CustomActionData="C:\Program Files (x86)\Windows Kits\8.0\Hardware Certification Kit\Controller\WTTStandaloneEnterpriseSetup.exe" "TEST-SERVER" "DTMJobs" "C:\StandaloneEnterprise")
    MSI (s) (F4:48) [18:58:28:187]: Invoking remote custom action. DLL: C:\Windows\Installer\MSI9E59.tmp, Entrypoint: CAQuietExec
    CAQuietExec:  Standalone Enterprise setup started by user TEST-SERVER\Administrator
    CAQuietExec:  Error::
    ************************************************************ERROR REPORT (Exception levels including inner exceptions. Level 0 denotes outermost exception)
    CAQuietExec:  
    CAQuietExec:  ------------START OF ERROR REPORT------------
    CAQuietExec:  
    CAQuietExec:  Level            : 0
    CAQuietExec:  Error Message    : Error while creating new data store  'DTMJobs' .
    CAQuietExec:  Source           : Void CreateEnterprise(Microsoft.DistributedAutomation.DSLink, Microsoft.DistributedAutomation.ServiceCollection, Boolean)
    CAQuietExec:  Inner Exception  : System.Runtime.InteropServices.COMException (0x80041432): Cannot create file 'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DTMJobs.mdf' because it already exists. Change the file path or the file name, and retry the operation.
    CREATE DATABASE failed. Some file names listed could not be created. Check related errors.
    CAQuietExec:     at Interop.SQLDMO.Databases.Add(_Database Object)
    CAQuietExec:     at Microsoft.DistributedAutomation.SqlDataStore.SqlDataStoreSetup.CreateDeploymentDataStore(ServiceCollection serviceList, DSLink newDSLink)
    CAQuietExec:  Call Stack       :    at Microsoft.DistributedAutomation.SqlDataStore.SqlDataStoreSetup.CreateEnterprise(DSLink identityDSLink, ServiceCollection serviceList, Boolean standaloneInstall)
    CAQuietExec:     at Microsoft.DistributedAutomation.EnterpriseSetup.EnterpriseSetupHelper.CreateEnterprise(EnterpriseConfiguration enterpriseConfig, DSLink dsLink, String setupFilePath, Boolean standaloneInstall)
    CAQuietExec:     at Microsoft.DistributedAutomation.EnterpriseSetup.Tools.CMain.Main(String args)
    CAQuietExec:  Trace            : 
    CAQuietExec:  
    CAQuietExec:  Level            : 1
    CAQuietExec:  Error Message    : Cannot create file 'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DTMJobs.mdf' because it already exists. Change the file path or the file name, and retry the operation.
    CREATE DATABASE failed. Some file names listed could not be created. Check related errors.
    CAQuietExec:  Source           : Void Add(Interop.SQLDMO._Database)
    CAQuietExec:  Inner Exception  : 
    CAQuietExec:  
    CAQuietExec:  --------------END OF ERROR REPORT------------************************************************************
    CAQuietExec:  Error 0x80070001: Command line returned an error.
    CAQuietExec:  Error 0x80070001: CAQuietExec Failed
    CustomAction CreateStandaloneEnterprise returned actual error code 1603 (note this may not be 100% accurate if translation happened inside sandbox)
    MSI (s) (F4:74) [18:58:30:137]: User policy value 'DisableRollback' is 0
    MSI (s) (F4:74) [18:58:30:137]: Machine policy value 'DisableRollback' is 0
    Action ended 18:58:30: InstallFinalize. Return value 3
    ```

If the \*HCKControllerx86\_en\_us.log file includes **Error while creating new data store 'Jobs'**, complete these steps:

``` syntax
CAQuietExec:  Error Message    : Cannot create file 'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DTMJobs.mdf' because it already exists. Change the file path or the file name, and retry the operation.
CREATE DATABASE failed. Some file names listed could not be created. Check related errors.
```

****

1.  Delete these files from the C:\\Program Files (x86)\\Microsoft SQL Server\\MSSQL10\_50.MSSQLSERVER\\MSSQL\\DATA folder:

    -   DTMJobs.mdf

    -   DTMJobs\_Log.ldf

2.  Reinstall the Windows HCK Controller. For info on how to do this, see [Step 1: Install Controller and Studio on the test server](step-1-install-controller-and-studio-on-the-test-server.md)

## <a href="" id="appcantrun"></a>Client installation fails with error "This app can't run on your PC”


The system returns an error “This app can’t run on your PC” if you try to install Windows HCK Client software on a computer that is running Windows 8 RT. This is not a supported platform; however, you can install Windows HCK Client software on a computer that is running Windows RT 8.1.

## <a href="" id="noconn"></a>Error: Failed to connect to database. Failed to connect to OM.


If you get an error message that states **Failed to connect to database. Failed to connect to OM** when you start Windows HCK Studio, make sure that your user account is added to the Windows HCK Controller. For instructions on how to add your user account to the Windows HCK Controller, see “Configure additional user accounts” in [Install a remote HCK Studio](install-a-remote-hck-studio.md).

## <a href="" id="sqlerror"></a>Error: SQL client components are required for this operation


This error occurs when you attempt to install the full version of HCK (HCK Controller + Studio option), after you first downloaded the HCK product on a separate machine that already has the HCK Studio only option installed.

**Workaround:** Uninstall the HCK Studio Only version and try downloading and reinstalling the full HCK version again.

## Related topics


[Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Troubleshooting%20Windows%20HCK%20Setup%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





