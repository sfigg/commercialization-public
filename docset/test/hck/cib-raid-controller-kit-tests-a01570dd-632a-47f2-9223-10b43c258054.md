---
author: joshbax-msft
title: CiB Raid Controller Kit Tests
description: CiB Raid Controller Kit Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 890d9a56-1ae2-4bd4-8e07-94720a035f5b
---

# CiB Raid Controller Kit Tests


The tests help validate that a Continuously Available (CA) storage controller and drivers meet all applicable requirements. The tests conduct various end-to-end test scenarios by running I/O workloads, data integrity tests against the cluster during a planned or unplanned failover, and validates that the hardware platform under test meets CA hardware requirements.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Raid.ContinuousAvailability Device.Storage.Controller.Raid.ContinuousAvailability.ActiveMode Device.Storage.Controller.Raid.ContinuousAvailability.FailoverClustering Device.Storage.Controller.Raid.ContinuousAvailability.LunAccess Device.Storage.Controller.Raid.ContinuousAvailability.RAID Device.Storage.Controller.Raid.ContinuousAvailability.RecoveryProcessing</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~270 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements for the type of storage controller that you are testing: [Storage Adapter or Controller Testing Overview](storage-adapter-or-controller-testing-overview.md).

### Hardware requirements

The following network requirements on the cluster nodes and test clients must be met:

-   A minimum of two 1-Gigabit Ethernet adapters plus a private network for cluster communications.

-   We recommend one 10Gigabit Ethernet adapter.

-   All cluster nodes must have IP addresses that are provided by DHCP.

-   DNS resolution for all cluster nodes and test clients.

The following requirements on the cluster and cluster nodes must be met:

-   The cluster nodes must meet the Failover Clustering hardware requirements for Windows Server 2008 R2, Windows Server 2012, and Windows Server 2012 R2.

-   The cluster nodes must meet the hardware requirements for Windows Server 2008 R2, Windows Server 2012, and Windows Server 2012 R2.

-   The cluster nodes must have approximately 100 GB of free space on the local hard drive.

-   Cluster names should not exceed 9 characters.

The following requirements on the test clients must be met:

-   The test client must meet the hardware requirements for Windows Server 2008 R2, Windows Server 2012, and Windows Server 2012 R2.

-   The test client must have approximately 100 GB of free space on the local hard drive.

-   The test client must have at least 32 GB of memory.

-   We recommend that the test client have at least two quad core processors.

The following shared storage requirements must be met:

-   Must have at least 22 shared LUNs.

-   Must have a minimum LUN size of 1 GB.

-   Must be using either RAID1, RAID5, RAID6, or RAID10.

-   All LUNs must be visible on all cluster nodes.

-   All LUNs must be initialized and formatted as NTFS volumes with appropriate drive letters.

### Software requirements

The following Active Directory Domain Services requirements must be met:

-   Windows Server 2008 R2 and Windows Server 2012 Active Directory Domain Services

-   All nodes must be joined to the same domain.

-   You must have logged in as a member of the Domain Admins security group on the test clients.

The following operating system requirements must be met:

-   The test clients must be running Windows Server 2008 R2, Windows Server 2012 Enterprise, Windows Server 2012 Datacenter, or Windows Server 2012R2.

-   The cluster nodes must be running Windows Server 2008 R2, Windows Server 2012 Enterprise, Windows Server 2012 Datacenter, or Windows Server 2012R2.

-   Support for Clustered Windows Servers that use clustered RAID controllers must be enabled on each cluster node. For more information, see [Enable Support for Clustered Windows Servers using clustered RAID controllers](http://go.microsoft.com/fwlink/p/?linkid=308969)

-   Windows PowerShell remote capabilities must be enabled on all computers by running the following commands from a Windows PowerShell prompt:

    -   Winrm quickconfig. For more information, see [Installation and Configuration for Windows Remote Management](http://go.microsoft.com/fwlink/p/?linkid=303810).

    -   Enable-PSRemoting. For more information, see [Enable-PSRemoting](http://go.microsoft.com/fwlink/p/?linkid=303811).

    -   Set-ExecutionPolicy unrestricted –force. For more information, see [Using the Set-ExecutionPolicy Cmdlet](http://go.microsoft.com/fwlink/p/?linkid=303812).

The following role services and feature must be installed on the cluster nodes and test clients:

-   File Server

-   iSCSI Target Server

-   Server for NFS

-   Failover Clustering

-   Active Directory Domain Service (test clients only)

-   Client for NFS

**To start the tests**

1.  Run the following commands from an elevated command prompt:

    ``` syntax
    pushd "%ProgramFiles(x86)%\Windows Kits\8.1\Hardware Certification Kit\Tests\amd64\NTTEST\BASETEST\core_file_services\Shared_tests\CiBValidationKit\Tests"copy /y StressLog_Copy.dll StressLog.dllpopd
    ```

2.  Open Windows HCK Studio.

3.  Create a project.

4.  In Device Manager, search for “raid” and select your controllers for the test pool.

5.  Right-click each selected target. Click **Add new features**, select **Device.Storage.Controller.Raid.ContinuousAvailability**, and then click **OK**.

6.  Click the **Tests** tab, select **CiB Raid Controller Test**, and click **Run Selected**. Assign *TestMachine* to the client test machine.

7.  Assign the remaining node to the remaining machine.

8.  In the parameters, change the domain name, username, and cluster name.

9.  Click **OK** to schedule the test.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

An error similar to “Cluster failure: test case \#\#\# failure” indicates that the cluster has not properly configured. Make sure that your shared disks are initialized and formatted as NTFS volumes to ensure a cluster can be formed and that no clusters or resource groups exist with the name specified in the cluster parameter.

If failures are found in the reboot fault scenario, you can increase the wait time by editing the configuration xml file as detailed below:

1.  On the Windows HCK Controller, find the .xml file to edit in the following folder: **C:\\Program Files (x86)\\Windows Kits\\8.1\\Hardware Certification Kit\\Tests\\amd64\\NTTEST\\BASETEST\\core\_file\_services\\Shared\_tests\\CiBValidationKit\\ IHVTestKit\_Configuration.xml**.

2.  In the file, there are instances of “WaitPeriodInSeconds=”120”/&gt;” for each failure action. There are instances for the MoveGoup, Reboot, KernelCrash and DualActive failure scenarios.

    Find the sections in the .xml file that state the wait period in seconds and change them from **120** to **300**, as shown in the following example:

    ``` syntax
    FailureScenario              ID="Reboot"Requirement="LUNAccess"        Type="Software" Name="Node software failure via OS reboot" FailoverExpected="Yes"Iterations="2"><PreAction Command="Identifies and performs an OS reboot on the active cluster node"WaitPeriodInSeconds="10" /><FailureAction Command="FailOverSimulator.ps1 -FailType RebootMachine -ResourceGroup $ResourceGroup$"WaitPeriodInSeconds="120" />  INVALID USE OF SYMBOLS-Make it 300<PostAction Command="PostAction: Reboot_Node"WaitPeriodInSeconds="10" /></FailureScenario>
    ```

3.  If failures are found in other tests cases, you can review the logs to get additional details about the failures. The logs are on the Windows HCK Controller and can be found in the following folders:

    -   **HCK studio\\Results\\Run Eval Quality tests\\Logs\\te.wtl**

    -   **HCK studio\\Results\\Run Raid Controller tests\\Logs\\te.wtl**

## More information


### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>AutomatedOnly</p></td>
<td><p>Specify true if this test should not run any manual tests.</p></td>
</tr>
<tr class="even">
<td><p>NODE1</p></td>
<td><p>The first node in the cluster.</p></td>
</tr>
<tr class="odd">
<td><p>NODE2</p></td>
<td><p>The second node in the cluster.</p></td>
</tr>
<tr class="even">
<td><p>Domain</p></td>
<td><p>The name of the domain to which the cluster nodes are joined.</p></td>
</tr>
<tr class="odd">
<td><p>UserName</p></td>
<td><p>The user name of a user in the Domain Admins security group.</p></td>
</tr>
<tr class="even">
<td><p>Password</p></td>
<td><p>The password of the user in the Domain Admins security group.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20CiB%20Raid%20Controller%20Kit%20Tests%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




