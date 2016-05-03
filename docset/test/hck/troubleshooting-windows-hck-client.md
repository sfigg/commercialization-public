---
author: joshbax-msft
title: Troubleshooting Windows HCK Client
description: Troubleshooting Windows HCK Client
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 140cf6eb-730c-4ed1-a422-be75eaab86ca
---

# Troubleshooting Windows HCK Client


This topic describes how to troubleshoot issues with the Windows Hardware Certification Kit (Windows HCK) Client.

For help with problems that occur during Windows HCK Client setup, see [Troubleshooting Windows HCK Setup](troubleshooting-windows-hck-setup.md).

**In this topic:**

-   [Cannot get a client computer out of Debug state](#debugstate)

-   [Cannot select tests after previous test fails](#prevfail)

-   [Client computer goes to sleep during a test](#sleep)

-   [Client computer is locked by an LLU account](#llulock)

-   [Client computers cannot communicate with the Windows HCK Controller](#clicommcntr)

-   [Client information in HCK Studio is inaccurate](#inaccdatastudio)

-   [Client software is not uninstalled from the test system](#nouninst)

-   [Error encountered while adding user &lt;domain\\username&gt;](#domerror)

-   [Error: Skipped as Public key is null for the machine](#nullkey)

-   [Job is stuck in the Scheduler](#stuckjob)

-   [Jobs do not run after reinstalling the Windows HCK Client](#jobsno)

-   [Multiple client systems are identified as the same system](#multcli)

-   [Remote Desktop cannot connect to a Windows HCK Client computer](#rem)

-   [Remove and reinstall the Windows HCK Client](#remcli)

-   [Unsupported scenarios](#unsupp)

-   [Watched system does not have a heartbeat](#watched)

-   [Windows 7 Clients do not enter the Ready state](#win7)

## <a href="" id="debugstate"></a>Cannot get a client computer out of Debug state


**Problem.** The Client does not change from the **Debug** state to the **Ready** state, even after changing the state to **Reset** in Windows HCK Manager.

This problem can be caused by a lack of communication between the Windows HCK Controller computer and the Windows HCK Client computer, or by a trusted key mismatch between the two systems.

Try these solutions in the following order:

1.  Try the solutions in [Client computers cannot communicate with the Windows HCK Controller](#clicommcntr).

2.  Reinstall the Client using the steps in [Remove and reinstall the Windows HCK Client](#remcli).

## <a href="" id="prevfail"></a>Cannot select tests after previous test fails


After a test fails, the checkboxes for the list of tests are dimmed and you cannot select additional tests.

If you select a target but cannot select any of the tests, the computer is not in a ready state.

Go to the **Configuration** menu and put the computer in a ready state.

## <a href="" id="sleep"></a>Client computer goes to sleep during a test


An always on, always connected (AOAC) computer that is not an ARM machine can go to sleep during a test. To prevent this, run the following command from an elevated command prompt on each Windows HCK Client computer:

``` syntax
powercfg /setacvalueindex scheme_current sub_video videoidle 0 & Powercfg /setdcvalueindex scheme_current sub_video videoidle 0 & Powercfg /s scheme_current
```

## <a href="" id="llulock"></a>Client computer is locked by an LLU account


If a client computer is locked by a LLU account or is unresponsive, you must log on by using the correct credentials for the LLU account. The two main LLU accounts on a client computer are:

-   **Local Standard User account**

    The client computer uses this account to run tests that require local standard user access on the client computer and any other computers with which it communicates. The local administrator account credentials can also be used for tests of this type, but the additional privileges might not be necessary.

    -   **LLU Name.** LLU\_LSU

    -   **UserName.** *&lt;client machine name&gt;*\\WDKLclStdUsr

    -   **Password.** WDKStdTstUsr!

-   **Local Administrative User account**

    The client computer uses this account to run tests that require local administrator access on the client computer and any other computers with which it communicates.

    -   **LLU Name.** LLU\_LAU

    -   **UserName.** *&lt;client machine name&gt;*\\LLUAdminUser

    -   **Password.** Testpassword,1

## <a href="" id="clicommcntr"></a>Client computers cannot communicate with the Windows HCK Controller


If a client computer cannot communicate with the Windows HCK Controller, review the following problems and solutions:

-   Client computers do not appear in the **Machine List** in the Windows HCK **Manager Job Monitor** window.

-   Client computers can't connect to the Controller computer.

-   Client computers do not process jobs in the job Scheduler in Windows HCK Manager.

-   Client computers always go to the debug state, even after a reset.

Try these solutions in the following order:

1.  Review the steps in [Step 2: Install Client on the test computer(s)](step-2-install-client-on-the-test-computer-s-.md) and check basic networking connectivity between the two computers.

2.  Run the procedure To change the Windows HCK Client to a Home or Private network.

3.  Make sure the Internet Connection Firewall (ICF) port for Windows HCK is open on both the Windows HCK Client and Windows HCK Controller computers.

    **To open an ICF port for Windows HCK in Windows 7**

    1.  Open Control Panel.

    2.  Click **System and Security** &gt;**Windows Firewall** &gt; **Advanced Settings** &gt; **Inbound Rules**.

    3.  Make sure that **WLK Client** is present and enabled.

    4.  If WLK Client isn't there, click **New Rule**, click **Port**, and then click **Next**.

    5.  Type **1771** in the **Specific local ports** box, click **Next** twice for **Allows the Connection**.

    6.  Leave all Profiles checked and click **Next**.

    7.  For Name, type **WLK Client** and then click **Finish**.

    **To open an ICF port for Windows HCK**

    1.  Open Control Panel.

    2.  Click **Security** &gt;**Windows Firewall** &gt; **Change Settings**.

    3.  Click the **Exceptions** tab. Make sure that **WLK Client** is present and selected under **Programs and Services**.

    4.  If **WLK Client** does not appear, click **Add Port** and enter this information:

        -   In the **Name** box, type **WLK Client**.

        -   In the **Port number** box, type **1771**.

        -   Click the **TCP** button, and then click **OK**.

    5.  Return to the exceptions tab and make sure that the **WLK Client** check box is selected, and then click **OK**.

4.  Disable Internet Protocol security (IPsec)

    For Windows HCK Client and Windows HCK Controller computers to communicate, all computers must either be running IPsec or all computers must have IPsec disabled.

    **To disable IPsec**

    -   At a command prompt, type **net stop ipsec**, and then press Enter.

    **To change IPSec properties**

    1.  At a command prompt, type **services.msc**, and then press Enter. The Microsoft Management Console appears.

    2.  Double-click **IPsec Policy Agent** and change its **Startup Type** (**Automatic** | **Manual** | **Disabled**) and/or **Service Status** (**Start** | **Stop**).

## <a href="" id="inaccdatastudio"></a>Client information in HCK Studio is inaccurate


The Windows HCK Client information that shows in Windows HCK Studio can be inaccurate if the gatherer data is not current. Inaccurate information can include the following data:

-   Missing or detected features.

-   Missing or extra tests.

-   Drivers that are included with the operating system are reported as not being included.

    Drivers that are not included with the operating system are reported as being included.

To work around this issue, perform the following steps:

1.  Restart the Windows HCK Client computer.

2.  (Optional) Delete the project in Windows HCK Studio.

3.  (Optional) Reset the status of the client computer in Windows HCK Manager Job Monitor.

4.  Close all instances of Windows HCK Studio and Windows HCK Manager.

5.  Restart Windows HCK Studio.

6.  Create a new project and add the Windows HCK Client computer to the machine pool.

## <a href="" id="nouninst"></a>Client software is not uninstalled from the test system


This problem occurs when the entry in the database for the Windows HCK Controller is deleted for the test system. After ten minutes or less, the client software sends out a new signal (heartbeat) and the controller generates a new client entry in the database. After the client entry appears, the client is visible in the **Configuration** screen in Windows HCK Studio; however, when you select the machine pool on the **Selection** tab, no targets are listed for the system.

To resolve this problem, get a gatherer to return some new data. You can do this by installing a driver or hardware or by restarting the client system.

## <a href="" id="domerror"></a>Error encountered while adding user &lt;domain\\username&gt;


When you try to create a user account for a domain user, the following error message appears:

Error encountered while adding user &lt;*domain\\username*&gt;

Cannot grant/remove permission for user on data store *controller name*: User *username* does not exist in domain *domain*. Please ensure that user name is valid or contact your network administrator.

The domain that the error message refers to is the local machine domain. You cannot create a user account for a domain user if you are logged onto the Windows HCK Studio computer as a local Administrator. You must log off and log back on as a domain user who has Administrator rights, and then create the user account for the domain user.

## <a href="" id="nullkey"></a>Error: Skipped as Public key is null for the machine


When you try to add a local logical user (LLU) to a client computer, the following error appears:

Skipped as Public key is null for the machine.

This error means that the Windows HCK Client did not install correctly. To fix this problem, uninstall and reinstall the Windows HCK Client. For more info, see [Remove and reinstall the Windows HCK Client](#remcli).

## <a href="" id="stuckjob"></a>Job is stuck in the Scheduler


When you set up a job, Windows Scheduler searches for a client computer to run the job. The Scheduler considers all client computers in the machine pool that are available and capable of running the job.

When you use Windows HCK Manager Job Monitor to view the status of a job, the **Current Pipeline** column of the **Job Execution Status** pane displays the job status. If the **Current Pipeline** value for your job is **Scheduler**, and if this value hasn't changed for several minutes, make sure that a Windows HCK Client in the machine pool with a **Ready** status exists.

-   If no Windows HCK Client computers are ready to run jobs, see [Step 3: Create a machine pool](step-3-create-a-machine-pool.md).

-   If Windows HCK Client computers are available to run the job, make sure that at least one Windows HCK Client computer is capable of running the job. Check the attributes of the Windows HCK Client computers and compare them with the job requirements.

-   If a job contains machine sets, confirm that there are enough Windows HCK Client computers to meet the requirements of all machine sets. Windows HCK schedules all of the Windows HCK Client computers at the same time.

If a job remains unchanged in the Scheduler, make sure that the SQL Server (**MSSQLSERVER**), **WLKSvc**, and **DTMSERVICE** services are started in services.msc.

## <a href="" id="jobsno"></a>Jobs do not run after reinstalling the Windows HCK Client


Previously scheduled jobs do not run if you have installed the Windows HCK Controller and Windows HCK Studio, scheduled some jobs, and then uninstalled and reinstalled the Windows HCK Client.

In this case, you must establish a new connection between the Windows HCK Client computer and the Windows HCK Controller computer by uninstalling and reinstalling the Client. For information on how to do this, see [Remove and reinstall the Windows HCK Client](#remcli).

## <a href="" id="multcli"></a>Multiple client systems are identified as the same system


Client systems are identified through a pair of hashes. These hashes are individually composed of the following data sets:

**Hash1:**

``` syntax
smbios UUID
smbios serial number
smbios manufacturer
smbios model
smbios SKU number
```

**Hash 2:**

``` syntax
mac address 0
driver 0 vendor
driver 0 product
driver 0 serial number
```

This characteristic allows you to change the hardware while retaining the same machine identifier. However, if the hashes are too similar between two (or more) different systems, the systems are identified as the same system. This causes the last system’s heart-beat to be the active client.

To prevent this from happening, the hash data should be unique for each client system. The easiest values to update are **smbios UUID** and **smbios serial number**.

You can see these values in the CLIENTMACHINE gatherer data. This log does not determine these values and modifying this log does not prevent or resolve the problem.

This log exists at **%SystemDrive%\\WLK\\JobsWorkingDir\\AssetCfg\\Log**.

## <a href="" id="rem"></a>Remote Desktop cannot connect to a Windows HCK Client computer


If Remote Desktop cannot connect to a Windows HCK Client computer, make sure that Remote Desktop is a Windows Firewall exception.

**To allow a Remote Desktop connection in Windows 7**

1.  Open Control Panel.

2.  Click **System and Security** &gt; **Windows Firewall** &gt; **Allow a program or feature through Windows Firewall**.

3.  Click the **Remote Desktop** check box, and then click **OK**.

**To allow a Remote Desktop connection in Windows Vista**

1.  Open Control Panel.

2.  System and Security **Security** &gt; **Windows Firewall** &gt; **Change Settings**.

3.  Click the **Exceptions** tab.

4.  Click the **Remote Desktop** check box, and then click **OK**.

## <a href="" id="remcli"></a>Remove and reinstall the Windows HCK Client


**Warning**  
Do not remove the Windows HCK Client as the first step in troubleshooting Windows HCK Client problems. If you reinstall the Windows HCK Client, any certification testing in progress is lost and you have to rerun all the tests in a new project.

 

**To remove and reinstall the Windows HCK Client**

1.  Uninstall the Windows HCK Client (**Control Panel** &gt; **Uninstall a program** &gt; **Windows Hardware Certification Kit Client**.)

2.  Start the Windows HCK Manager, go to **Explorers | Job Monitor**, right-click your computer, and then select **Change Status -&gt; Unsafe** to set the computer to the **Unsafe** state.

3.  Install the Windows HCK Client by using the steps in the [Step 2: Install Client on the test computer(s)](step-2-install-client-on-the-test-computer-s-.md) topic.

4.  Wait for the computer to go into the **Manual** state in **HCK Manager | Job Monitor**, below the **Status** column.

5.  Go to **Explorers | Job Monitor**, right-click your computer, and then select **Change Status -&gt; Reset**.

6.  Wait for the computer to automatically return to the **Ready** state, or click **Refresh** in Windows HCK Manager.

## <a href="" id="unsupp"></a>Unsupported scenarios


The following scenarios are not supported by the Windows HCK Client:

-   **Multiple operating systems.** Installing multiple operating systems on a computer with the Windows HCK Client installed is not supported. If you have more than one operating system installed on a computer, and multiple instances of Windows HCK Client installed, you might cause errors than cannot be fixed without reinstalling the operating system.

    Only one instance of Windows HCK Client should be installed on the system under test. In this scenario, the system includes all related physical discs and partitions.

-   **Testing on multiple client computers.** If you are using multiple client computers to complete a test project, you must use the same client computers to complete and also package the test project in Windows HCK Studio. For example, if one computer is testing for Windows 7 x86 and another computer is testing for Windows 7 x64, you must complete and package all testing on each computer before you make any changes to a system or operating system. If you change anything about the client computer, you might invalidate the project and then have to restart the test by using a new project. You might need to restart your test project if you make any of these changes:

    -   Change the computer name

    -   Reinstall the Client

    -   Reinstall the operating system

    -   Move the computer from a DOMAIN to a WORKGROUP or from a WORKGROUP to a DOMAIN.

If you have one of the above unsupported scenarios on a Windows HCK Client computer, you might have no heartbeat, jobs stuck in the Scheduler, or jobs that do not run.

To re-establish a working test environment, change the Windows HCK Client system back to its original state to continue and complete the test submission. Optionally, uninstall and reinstall Windows HCK Controller and Windows HCK Client so that all systems are either joined to a domain or part of a workgroup.

## <a href="" id="watched"></a>Watched system does not have a heartbeat


If you select a machine pool in configuration, and watch the test system from the configuration screen, the heart-beat, that is, the user interface (UI) time stamp, does not update.

This is a Windows HCK Studio UI issue. The system does continue to heart-beat, but the UI just does not update.

To update the heart-beat time stamp, switch machine pools.

## <a href="" id="win7"></a>Windows 7 Clients do not enter the Ready state


**Problem.** A test Windows HCK Client appears in the Default Test Pool and has a recent heartbeat, but when you change the state of the Client to **Reset**, the status does not change to **Ready** and it eventually changes to **Debug**.

If the test computer is connected to a public network, the Windows HCK Client does not enter the **Ready** state because the public network category is restrictive, and network discovery is turned off by default.

**Solution.** Change the network location of the Windows HCK Client.

**To change the Windows HCK Client to a Home or Private network**

1.  On the client computer, open Control Panel, click **Network and Internet**, and then click **View network status and tasks**.

2.  On Windows 7, if the network under **View your active networks** is set to **Public Network**, click **Public Network**, and then change it to **Home network**.

    -or-

    On Windows Vista, if the Network category (under **Network Details**) is set to **Public network**, click **Change**, and then click **Private**.

The Windows HCK Client status changes from **Reset** to **Ready**, and this action reinstalls the Windows HCK Client on the computer.

## Related topics


[Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Troubleshooting%20Windows%20HCK%20Client%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





