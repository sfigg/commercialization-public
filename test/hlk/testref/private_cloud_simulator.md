---
title: Private Cloud Simulator for Windows Server 2016
Description: Private Cloud Simulator for Windows Server 2016
ms.assetid: D9E3FA7A-B5ED-4B1E-A78B-4788FDF91C3E
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Private Cloud Simulator for Windows Server 2016

<fm> <nav_sidebar> <outline></outline> </nav_sidebar> </fm>

## Introduction

The current industry trend is for private cloud solutions to comprise tightly integrated software and hardware components in order to deliver a resilient private cloud with high performance. Issues in any of the components (software, hardware, drivers, firmware, and so forth) can compromise the solution and undermine the promises made regarding a Service Level Agreement (SLA) for the private cloud.

Some of these issues are surfaced only under a high-stress, cloud-scale deployment, and are potentially hard to find using traditional standalone, component-focused tests. The Private Cloud Simulator is a cloud validation test suite that enables you to validate your component in a cloud scenario and identify these types of issues.

## Target Audience

The target audience for this document are those working towards validating their hardware for Windows Server 2016 Logo, Microsoft Azure Stack (MAS) solutions and Windows Server Software Defined (WSSD) datacenter offerings (that offer SDDC Standard, SDDC Premium Additional Qualifiers on the Windows Server Catalog).

| Component Type                          | Windows Server 2016 Logo | WSSD (SDDC Standard/Premium) | Azure Stack |
|-----------------------------------------|--------------------------|------------------------------|-------------|
| **Network Interface Cards (NICs)**      | Yes                      | Yes                          | Yes         |
| **SAS HBA**                             | No                       | Yes                          | Yes         |
| **Hard Disk Drives (HDD): SAS, SATA**   | No                       | Yes                          | Yes         |
| **Solid State Drives (SSD): SAS, SATA** | No                       | Yes                          | Yes         |
| **NVMe devices**                        | No                       | Yes                          | Yes         |
| **SCSI Enclosures**                     | No                       | Yes                          | Yes         |
| **Solutions**                           | Not Applicable           | Yes                          | Yes         |

In the future this guidance is expected to expand to cover the following device classes:

-   iSCSI, FCOE, and Fiber Channel HBAs
-   Storage Arrays

## Supporting Documents

1.  <xref hlink="https://technet.microsoft.com/en-us/library/hh831579.aspx">Failover-Clustering</b>
2.  <xref hlink="https://technet.microsoft.com/en-us/library/mt693395.aspx">Windows Server 2016 Storage Spaces Direct cluster</b>
3.  <xref hlink="http://aka.ms/getreq">Microsoft Azure Stack Logo Requirements</b> released via Connect to Microsoft partners

## Test Overview

Private Cloud Simulator (PCS) simulates a live datacenter/private cloud by creating VM workloads, simulating data center operations (load balancing, software/hardware maintenance), and injecting compute/storage faults (unplanned hardware/software failure). PCS uses a Microsoft SQL Server database to record test and solution data during the run. It then presents a report that includes operation pass/fail rates and logs whihch provide the capability to correlate data for pass/fail determination and failure diagnosis (as applicable).

## Topology

Figure 1 shows the topology for a PCS lab environment with the following elements:

-   An Active Directory domain controller/DNS/DHCP server for the test domain.
-   A dedicated HLK controller machine.
-   A dedicated PCS controller machine.
-   A minimum 3-node (maximum nodes: 64) compute cluster, which hosts Hyper-V virtual machines.

![overall pcs topology](../images/pcs_topology.png)

## Execution Flow

PCS execution proceeds through the stages below. All stages after the PCS kickoff \[Stage (2)\] are fully automated and need no user intervention.

1.  Setup PCS lab topology
    1.  In this stage, the lab setup necessary for a succesful PCS run should be complete.
    2.  Section (2) discusses details on setting up the common lab infrastructure
    3.  Section (3) discusses the specific setups necessary for different types of devices/solutions.
2.  Kickoff PCS using HLK Studio
    1.  This stage kicks off the PCS execution process.
    2.  Section (3) discusses the HLK job(s) to be used to kick off PCS for different types of devices/solutions.
3.  Initialize PCS Controller (automated)
    1.  In this stage, the PCS execution engine sets up a SQL server and IIS on the PCS controller machine
    2.  It also copies content (e.g. evaluation OS VHD files) to enable VM creation in the next stage
4.  Create VMs (automated)
    1.  This stage sees the PCS engine start creating VMs on each node of the cluster
    2.  VM creation stops when the target number of VMs/node has been reached.
    3.  This step is a part of PCS setup phase. Test run duration timer kicks in post this stage.
5.  Run Actions (automated)
    1.  Now, PCS initiates various types of actions (VM, Cluster, Storage, Network) on each node of the cluster.
    2.  Actions run in parallel and co-ordinate among themselves to exercise the device (storage, network) and the solution through the private cloud/datacenter lifecycle
    3.  Actions run periodically and stop once the target execution time (defined by the profile/job) of the test has been reached.
    4.  Test execution time is defined per profile and can vary based on the profile you are running. Test execution timer kicks in after all the VMs are created.
    5.  The steps in each action and the corresponding result of each step is stored in the SQL server.
6.  Analyze Results (automated)
    1.  The Run Analyzer engine uses results stored on the SQL server to decide the result of the run based on the success rate of each action, the absence of unexpected crashes on the cluster node.
    2.  This result stored in the HLK logging format for use by HLK Studio.
7.  Cleanup Run (automated)
    1.  In this stage, VMs created in stage (4) are cleaned up and the cluster is restored to a clean state (as possible).
8.  Report result in HLK Studio (automated)
    1.  In this stage, the HLK studio reports the result of the PCS run.
    2.  The result can be packaged into an HLKX file for submission to Microsoft.

## Common Lab Infrastructure Setup

In this section, we will discuss the lab environment that will be common for all PCS execution.

## Topology

The figure below shows the common topology for a PCS lab environment with the following elements:

1.  An Active Directory (AD) domain controller and DNS/DHCP servers for the test domain.
2.  A dedicated HLK controller
3.  A dedicated PCS controller

All the above machines (AD Controller, HLK Controller, PCS Controller) can be VMs and must be joined to the same test domain.

**User Credentials**

-   All PCS tests need to be run as the same user in the 'Domain Admins' group for the test domain.
-   Use the same user with Domain Admin credentials to install the HLK controller.

![common topology for a pcs lab environment](../images/pcs_common_lab_topology.png)

## Active Directory Functional Level

You can find information about Active Directory at the following URL: <xref hlink="https://msdn.microsoft.com/library/bb727067.aspx">https://msdn.microsoft.com/library/bb727067.aspx</b>

PCS needs the <xref hlink="https://technet.microsoft.com/en-us/library/understanding-active-directory-functional-levels(v=ws.10).aspx">AD DS domain and forest functional level</b> to be Windows Server 2012 or higher.

## HLK Controller

This controller can be a VM or a physical machine.

## System Requirements

Minimum system requirements are as shown in the table below.

| Resource                | Minimum requirement            |
|-------------------------|--------------------------------|
| CPU (or vCPU)           | 4 cores                        |
| Memory                  | 12 GB RAM                      |
| Available disk space    | 200 GB                         |
| Operating system        | Windows Server 2016 Datacenter |
| Active Directory domain | Join it to the test domain     |

## Setup

## Hardware Lab Kit

1.  Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to <xref hlink="https://developer.microsoft.com/windows/hardware/windows-hardware-lab-kit">download</b> and install HLK controller software.
2.  Download <xref hlink="https://go.microsoft.com/fwlink/p/?LinkId=808763">PCSFiles.vhd</b> (Supplemental content for Windows HLK Private Cloud Simulator (PCS) Tests) from the <xref hlink="https://developer.microsoft.com/en-us/windows/hardware/windows-hardware-lab-kit">HLK website</b>.
3.  Copy the <xref hlink="https://go.microsoft.com/fwlink/p/?LinkId=808763">PCSFiles.vhd</b> file to the **Tests\\amd64** test folder on the HLK Controller. The following path is the default path for an HLK installation:

    <inline_code devlang="cmd">C:\\Program Files (x86)\\Windows Kits\\10\\Hardware Lab Kit\\Tests\\amd64</inline_code>

## IOMeter

1.  IOMeter is a workload that must be installed on the HLK controller.
2.  Download the i386 Windows version of IOMeter release dated 2006.07.27 from the IOMeter website.
3.  Run the setup (or unzip the package) to unpack the files.
4.  Copy IOMeter.exe, Dynamo.exe to Tests \\amd64\\pcs\\GuestScenarioManager\\IOMeter folder on the HLK controller.

    Example:

    <inline_code devlang="cmd">C:\\Program Files (x86)\\Windows Kits\\10\\Hardware Lab Kit\\Tests\\amd64\\pcs\\GuestScenarioManager\\IOMeter</inline_code>

## PCS Controller

This controller must be a Generation v2 VM or a physical machine.

## System Requirements

Minimum system requirements are as shown in the table below.

| Resource                     | Minimum requirement            |
|------------------------------|--------------------------------|
| CPU (or vCPU)                | 4 cores                        |
| Memory                       | 12 GB RAM                      |
| Free space on the boot drive | 200 GB                         |
| Operating system             | Windows Server 2016 Datacenter |
| Active Directory domain      | Join it to the test domain     |

## Setup

1.  Disable **Secure Boot** and **BitLocker** on the PCS controller. This is needed because PCS enables **TestSigning** boot configuration on the controller. If you are using Generation 2 Hyper-V VM as PCS controller, stop the VM to disable Secure Boot in the VM's settings.
2.  Install the HLK Client using the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> and open the requisite ports.
3.  Install .NET Framework 3.5 (not included by default in Windows Server 2016).
    1.  Generic Installation Instructions can be found at the following locations:
        -   <xref hlink="https://msdn.microsoft.com/library/hh506443">https://msdn.microsoft.com/library/hh506443</b>
        -   <xref hlink="https://msdn.microsoft.com/library/windows/desktop/hh848079">https://msdn.microsoft.com/library/windows/desktop/hh848079</b>
    2.  For builds released via Microsoft Connect, see details below:
        -   Mount the ISO supplied with the build and find the file:
            -   microsoft-windows-netfx3-ondemand-package.cab

            in the &lt;Mounted ISO&gt;\\sources\\sxs folder
        -   Copy the file to a local folder on the PCS controller
        -   Install the package by executing this command line using admin privileges `Dism.exe /online /enable-feature /featurename:NetFX3 /All /Source:<Local Folder> /LimitAccess`

            **or**

            `PS> Add-WindowsFeature Net-Framework-Features –IncludeAllSubFeature`
4.  During test execution, the features (including all sub-features) below will be installed on the PCS controller:
    1.  Web Server `PS> Add–WindowsFeature Web-WebServer –IncludeAllSubFeature`
    2.  Failover Clustering feature and sub features. Management tools `PS> Add-WindowsFeature Failover-Clustering -IncludeAllSubFeature -IncludeManagementTools`
    3.  Remote Server Administration for Hyper-V tools `PS> Add-WindowsFeature RSAT-Hyper-V-Tools –IncludeAllSubFeature`

## Setup and Run PCS tests from Windows HLK

This section discusses how to find an appropriate PCS test for your device/solution, configure the lab, and kickoff PCS execution.

-   You need to use the same domain admin user account to setup lab and run tests.
-   You need to install "1607 HLK Update for WS16 (NIC, HDD, SERVER), WSSD (ALL) & AZURE STACK (ALL) Certification" to update your HLK controller and clients. This package is available at Microsoft Connect site for download.
-   "Secure Boot State" must be OFF on all nodes and PCS controller.

## PCS Test Selection

The PCS execution framework is used to certify multiple categories of devices and solutions. The table below, maps the device to the appropriate PCS test.

<table>
<tr>
<th>
Target

</th>
<th>
Certification/Validation Program

</th>
<th>
PCS Test Job Name in HLK

</th>
</tr>
<tr>
<td rowspan="4">
NIC (10GbE)

</td>
<td>
Windows Server 2016 Logo

</td>
<td rowspan="2">
PrivateCloudSimulator - Device.Network.LAN.10GbOrGreater

</td>
</tr>
<tr>
<td>
SDDC - Standard

</td>
</tr>
<tr>
<td>
SDDC – Premium

</td>
<td rowspan="2">
PrivateCloudSimulator - Device.Network.LAN.AzureStack

</td>
</tr>
<tr>
<td>
AzureStack

</td>
</tr>
<tr>
<td rowspan="3">
SAS HBA

</td>
<td>
SDDC – Standard

</td>
<td rowspan="3">
PrivateCloudSimulator - Device.Storage.Controller.AzureStack

</td>
</tr>
<tr>
<td>
SDDC – Premium

</td>
</tr>
<tr>
<td>
AzureStack

</td>
</tr>
<tr>
<td rowspan="3">
Disk (HDD/SSD/NVMe)

</td>
<td>
SDDC – Standard

</td>
<td rowspan="3">
PrivateCloudSimulator - Device.Storage.HD.AzureStack

</td>
</tr>
<tr>
<td>
SDDC – Premium

</td>
</tr>
<tr>
<td>
AzureStack

</td>
</tr>
<tr>
<td rowspan="3">
Complete end-to-end solution

</td>
<td>
SDDC – Standard

</td>
<td rowspan="2">
PrivateCloudSimulator - System.Solutions.StorageSpacesDirect (MIN)

PrivateCloudSimulator - System.Solutions.StorageSpacesDirect (MAX)

</td>
</tr>
<tr>
<td>
SDDC – Premium

</td>
</tr>
<tr>
<td>
AzureStack

</td>
<td>
PrivateCloudSimulator - System.Solutions.AzureStack (MIN)

PrivateCloudSimulator - System.Solutions.AzureStack (MAX)

</td>
</tr>
</table>
PCS actions simulate planned and unplanned activity. PCS tests are summarized below:

-   PrivateCloudSimulator - Device.Network.LAN.10GbOrGreater

    This test contains a set of actions, that specifically target the network adapter device along with VM and compute cluster actions.

-   PrivateCloudSimulator - Device.Network.LAN.AzureStack

    This test contains an extended set of actions, that verify network adapter support for the new 'Software Defined Networking' feature in Windows Server 2016, along with VM and compute cluster actions.

-   PrivateCloudSimulator - Device.Storage.Controller.AzureStack

    This test contains an extended set of actions, that specifically target the Storage Controller, along with VM and compute cluster actions.

-   PrivateCloudSimulator - Device.Storage.Enclosure.AzureStack

    This test contains an extended set of actions, that specifically target the JBOD enclosure, along with VM, compute cluster and storage cluster actions.

-   PrivateCloudSimulator - Device.Storage.HD.AzureStack

    This test contains an extended set of actions, that specifically target the disk, along with VM and compute cluster actions.

-   PrivateCloudSimulator - System.Solutions.StorageSpacesDirect (MIN)/(MAX)

    This test contains an extended set of actions, that target the entire solution built on an hyper-converged storage spaces direct cluster. The (MIN) test should be run on a cluster with the minimum number of supported nodes for the solution. The (MAX) test should be run on a cluster with the maximum number of supported nodes for the solution.

-   PrivateCloudSimulator - System.Solutions.AzureStack (MIN)/(MAX)

    This test contains an extended set of actions, that target the entire AzureStack solution. The (MIN) test should be run on a cluster with the minimum number of supported nodes for the solution. The (MAX) test should be run on a cluster with the maximum number of supported nodes for the solution.

## Execute PCS Tests

## PrivateCloudSimulator - Device.Network.LAN.10GbOrGreater

## System Requirements

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Component Being certified</td>
<td>NIC</td>
</tr>
<tr class="even">
<td>Setup Type</td>
<td>Hyper-converged setup with S2D storage.
>[!NOTE]
An SDDC certified HBA is required.
</td>
</tr>
<tr class="odd">
<td>(Minimum) Number of Server Nodes</td>
<td>3 - all identical</td>
</tr>
<tr class="even">
<td>Server Spec</td>
<td>CPU: 16 physcial cores (e.g. 2 socket with 8 cores), Memory: 128 GB, 64 GB free space on boot drive</td>
</tr>
<tr class="odd">
<td>Storage - Overall</td>
<td>4 TB free space per node on HDD, 800 GB free space per node on SSD</td>
</tr>
<tr class="even">
<td>SSD</td>
<td>Minimum of 1 SSD per node</td>
</tr>
<tr class="odd">
<td>HDD</td>
<td>Minimum of 2 HDD per node</td>
</tr>
<tr class="even">
<td>Network Card</td>
<td>NIC being certified</td>
</tr>
<tr class="odd">
<td>Switch</td>
<td>Switch supporting all NIC features</td>
</tr>
</tbody>
</table>

## Setup

1.  Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to install HLK client software on all cluster nodes
2.  Follow the <xref hlink="https://technet.microsoft.com/library/mt693395.aspx">Windows Server 2016 Storage Spaces Direct cluster guide</b> to deploy a cluster
3.  All nodes must be connected to the same physical switches.
4.  10GbE or better networking bitrate must be used. Create a virtual swith with the same name on each node.
5.  Virtual machines, created by PCS, connect to the virtual switch to send network traffic between them. These VMs get IP address via DHCP. Make sure your DHCP server assigns valid IP addresses to these VMs. If DHCP server is not available or fails, VMs would use Automatic Private IP Addressing (APIPA) to self-configure an IP address and subnet. Each VM must have a valid IP address to send network traffic between VMs.

## Execute

-   Open HLK Studio
-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to create a machine pool
-   Navigate to the **Project** tab and click **Create Project**
-   Enter a project name and press Enter
-   Navigate to the **Selection** tab
-   Select the machine pool containing the network adapter device
-   Select **device manager**
-   Select the device

    ![HLK showing 10GbOrGreater test with device selected](../images/pcs_10gborgreater_select_device.png)

-   Right-click on the selected device and select **Add/Modify Features**

    ![HLK showing 10GbOrGreater test with Add/Modify Features context menu](../images/pcs_10gborgreater_add_modify.png)

-   In the features dialog, select **Device.Network.LAN.10GbOrGreater** and click **OK**. For most NIC cards (with speeds 10GbE or higher) this feature will have been selected automatically.
-   Navigate to the **Tests** tab
-   Select **PrivateCloudSimulator - Device.Network.LAN.10GbOrGreater**
-   Click **Run Selected**
-   In the Schedule dialog,
    -   Enter values for the required test parameters
        -   DomainName: Test user's domain name
        -   UserName: Test user's user name
        -   Password: Test user's password
        -   ComputeCluster: Name of compute cluster
        -   StoragePath: Default value is "". It uses all the available CSVs from compute cluster. You can use different path by entering comma separated paths.

            Example: "C:\\ClusterStorage\\Volume1,C:\\ClusterStorage\\Volume2"

        -   VmSwitchName: Name of virtual switch on all nodes

    -   Map machines to roles
        -   PrimaryNode: This is the node with the selected device
        -   Test Controller: Select PCS test controller machine
        -   OtherNodes: Select other cluster nodes
-   Click **OK** to schedule the test
-   Please refer to <xref local="realtime">View PCS report in real-time through SQL Server Reporting Services</b> to view the real-time results for the test run.

## Actions

The table below lists the actions that are included in this test.

<table>
<tr>
<th>
Target object

</th>
<th>
Action

</th>
<th>
Description

</th>
</tr>
<tr>
<td rowspan="8">
Virtual machine

</td>
<td>
VmCloneAction

</td>
<td>
Creates a new VM.

</td>
</tr>
<tr>
<td>
VmLiveMigrationAction

</td>
<td>
Live-migrates the VM to another cluster node.

</td>
</tr>
<tr>
<td>
VmSnapshotAction

</td>
<td>
Takes a snapshot of the VM.

</td>
</tr>
<tr>
<td>
VmStateChangeAction

</td>
<td>
Changes the VM state (for example, to Paused).

</td>
</tr>
<tr>
<td>
VmStorageMigrationAction

</td>
<td>
Migrates VM storage (the VHD(s)) between cluster nodes.

</td>
</tr>
<tr>
<td>
VmGuestRestartAction

</td>
<td>
Restarts the VM.

</td>
</tr>
<tr>
<td>
VmStartWorkloadAction

</td>
<td>
Starts a user-simulated workload.

</td>
</tr>
<tr>
<td>
VmGuestFullPowerCycleAction

</td>
<td>
Power-cycles the VM.

</td>
</tr>
<tr>
<td rowspan="2">
Compute node

</td>
<td>
ComputeNodeRestartAction

</td>
<td>
Restart a compute node.

</td>
</tr>
<tr>
<td>
ComputeNodeBugcheckAction

</td>
<td>
Bugcheck one node of the compute cluster.

</td>
</tr>
</table>
**Duration**

-   PCS Actions (listed above) will run for 24 hours.
-   The complete run may take around 48-72 hours (including time for setup and cleanup)

## PrivateCloudSimulator - Device.Network.LAN.AzureStack

## System Requirements

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Component Being certified</td>
<td>NIC (with RDMA)</td>
</tr>
<tr class="even">
<td>Setup Type</td>
<td>Hyper-converged setup with S2D storage
>[!NOTE]
An SDDC certified HBA is required.
</td>
</tr>
<tr class="odd">
<td>(Minimum) Number of Server Nodes</td>
<td>3 - all identical</td>
</tr>
<tr class="even">
<td>Server Spec</td>
<td>CPU: 16 physcial cores (e.g. 2 socket with 8 cores), Memory: 128 GB, 64 GB free space on boot drive</td>
</tr>
<tr class="odd">
<td>Storage - Overall</td>
<td>4 TB free space per node on HDD, 800 GB free space per node on SSD</td>
</tr>
<tr class="even">
<td>SSD</td>
<td>Minimum of 1 SSD per node</td>
</tr>
<tr class="odd">
<td>HDD</td>
<td>Minimum of 2 HDD per node</td>
</tr>
<tr class="even">
<td>Network Card</td>
<td>(RDMA) NIC being certified</td>
</tr>
<tr class="odd">
<td>Switch</td>
<td>Switch supporting all NIC features (including RDMA)</td>
</tr>
</tbody>
</table>

## Setup

-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to install HLK client software on all cluster nodes
-   Follow the <xref hlink="https://technet.microsoft.com/library/mt693395.aspx">Windows Server 2016 Storage Spaces Direct cluster guide</b> to deploy a cluster
-   10GbE or better networking bitrate is required for the NICs under test. Each server should have two identical 10gb or greater NICs.
-   All the nodes must be able to communicate with the PCS-Controller at all times through a management interface. For this purpose, each server should have one additional NIC for management interface, which does not need to meet strict bitrate requirements.
-   If RDMA capable NICs are used, the physical switch must meet the associated RDMA requirements.
-   Make sure that RDMA is setup on all nodes and reflects when queried through Get-SMBClientNetworkInterface & Get-SMBServerNetworkInterface.
-   Make sure that every node contains a teaming enabled virtual switch with the same name.

    Example: New-VMSwitch -Name SdnSwitch -NetAdapterName "SLOT 2,SLOT 2 2" -AllowManagementOS -EnableEmbeddedTeaming

-   Live Migration settings (Failover Cluster Manager-&gt;Networks-&gt;Live Migration Settings) must be set appropriately to use storage network for live migrations.

PCS will create virtual machines and send traffic between them using the virtual switch created. The vNic (virtual nic) of the PCS virtual machines are assigned IP address from the IP address space passed in as the AddressPrefixes parameter.

**PCS-Controller should be built as a Gen2-VM and have 2 network interfaces, one for the management network and the other for SDN (PA address space) topology.** The interface for SDN topology will be assigned an IP address from the IP address space passed in as the AddressPrefixes parameter.

![software-defined networking with s2d](../images/pcs_software_defined_networking_with_s2d.png)

## Execute

-   Open HLK Studio
-   Navigate to the **Project** tab and click **Create Project**
-   Enter a project name and press Enter
-   Navigate to the **Selection** tab
-   Select the machine pool containing the network adapter device
-   Select **device manager**
-   Select the device

    It should be OK to select any relevant NIC device (does not matter which member of the virtual switch team) on any of the compute nodes that is targeted for certification.

    ![HLK Studio showing Device.Network.LAN test with device selected](../images/pcs_lan_azurestack_select_device.png)

-   Right-click on the selected device and select **Add/Modify Features**

-   In the features dialog, select **Device.Network.LAN.AzureStack** and click **OK**.
-   Navigate to the **Tests** tab
-   Select **PrivateCloudSimulator - Device.Network.LAN.AzureStack**
-   Click **Run Selected**
-   In the Schedule dialog,
    -   Enter values for the required test parameters
        -   DomainName: Test user's fully qualified domain name (FQDN).
        -   UserName: Test user's user name
        -   Password: Test user's password
        -   ComputeCluster: compute cluster name
        -   VmSwitchName: Name of virtual switch to be used for SDN.

            Example: SdnSwitch.

        -   AdapterNames: Comma separated list of adapter names that are part of the vmSwitch. Use the format '"Slot 2, Slot 2 2"' for multiple adapters. Names must be derived from Get-NetAdapter cmdlet.
        -   VLan: Vlan ID set on vmSwitch. Only required if your physical switch is configured for Vlan. Enter '0' to indicate that there is no Vlan tagging.
        -   AddressPrefixes: The IP address range to be used by Tenant VMs and Hosts. These addresses will be used for SDN datacenter management.
        -   ClientAddressPrefix: The IP address range used by Client VMs.
        -   RDMAEnabled: Enter 1 if NIC supports RDMA
        -   SetEnabled: Enter 1 if NIC supports Switch Embedded Teaming
        -   HnvEnabled: Enter 1 if NIC supports Hyper-V Network Virtualization
        -   TaskOffloadEnabled: Enter 1 if NIC supports Encapsulate Task Offload
        -   TestControllerNetAdapterName: Adapter name on PCS-Controller that can be assigned a static IP in the AddressPrefixes range to communicate with SDN Network Controller virtual machines.
        -   IsCreateCluster: Enter true if you want the test to create cluster and enable S2D.
        -   IsRemoveCluster: Enter true if you want to cleanup cluster and S2D configuration when exiting test

    -   Map machines to roles
        -   PrimaryNode: This is the node with the selected device, automatically selected by HLK.
        -   Test Controller: Select PCS test controller machine
        -   OtherNodes: Select other cluster nodes
-   Click **OK** to schedule the test
-   Please refer to <xref local="realtime">View PCS report in real-time through SQL Server Reporting Services</b> to view the real-time results for the test run.

## Cleanup

Use the **C:\\Pcs\\ReRunPcsCleanup.cmd** script on the PCS-Controller for cleaning up state of the setup if the test abruptly ends. It is very important that stale VMs & SDN infrastructure is cleaned up before starting a new run.

Please make sure the following items are cleaned up before starting a new run:

-   Clustered VM roles (FailoverClusterManager-&gt;Cluster-&gt;Roles)
-   All the VMs created by PCS
-   vNics created by PCS/SDN

    ![PowerShell showing vNic that needs to be cleaned up](../images/pcs_lan_azurestack_vnic_cleanup.png)

-   Storage/CSV-volumes on the cluster do not have any entries pertaining to PCS (C:\\ClusterStorage\\Volume1\\PCS).

## Actions

The table below lists the actions that are included in this test.

<table>
<tr>
<th>
Type

</th>
<th>
Action Name

</th>
<th>
Description

</th>
</tr>
<tr>
<td rowspan="8">
Traffic

</td>
<td>
NetRunEastWestCrossSubnetTrafficAction

</td>
<td>
Run traffic between two Tenant Vms in same VNetwork, but different Vsubnets

</td>
</tr>
<tr>
<td>
NetRunEastWestSameSubnetTrafficAction

</td>
<td>
Run traffic between two Tenant Vms in same Vsubnet

</td>
</tr>
<tr>
<td>
NetLoadBalancerEastWestInterTenantTrafficAction

</td>
<td>
Run traffic between load balanced tenants and another Vm in a different App Tier. Simulates load balanced traffic amongst frontent application (website) Vms.

</td>
</tr>
<tr>
<td>
NetLoadBalancerEastWestIntraTenantTrafficAction

</td>
<td>
Run traffic between load balanced tenants and a Vm in the same App Teir. Simulates load balanced traffic from backend application (DB) to frontent application (website).

</td>
</tr>
<tr>
<td>
NetLoadBalancerInboundTrafficAction

</td>
<td>
Run traffic from outside the Tenant network to a load balanced Vms (website).

</td>
</tr>
<tr>
<td>
NetLoadBalancerNorthSouthTrafficAction

</td>
<td>
Run traffic from inside the Tenant network to a load balanced Vms.

</td>
</tr>
<tr>
<td>
NetLoadBalancerOutboundTrafficAction

</td>
<td>
Run traffic from load balancedVms inside the Tenant network to a Vm outside.

</td>
</tr>
<tr>
<td>
NetAddInboundVipToLoadBalancerAction

</td>
<td>
Creates Virtual Ips for Tenant VMs dynamically, mainly for other traffic actions to use.

</td>
</tr>
<tr>
<td rowspan="5">
Virtual machine

</td>
<td>
VmLiveMigrationAction

</td>
<td>
Live-migrates the VM to another cluster node.

</td>
</tr>
<tr>
<td>
VmStateChangeAction

</td>
<td>
Changes the VM state (for example, to Paused).

</td>
</tr>
<tr>
<td>
VmStorageMigrationAction

</td>
<td>
Migrates VM storage (the VHD(s)) between cluster nodes.

</td>
</tr>
<tr>
<td>
VmGuestRestartAction

</td>
<td>
Restarts the VM.

</td>
</tr>
<tr>
<td>
VmGuestFullPowerCycleAction

</td>
<td>
Power-cycles the VM.

</td>
</tr>
</table>
**Duration**

-   PCS Actions (listed above) will run for 24 hours.
-   The complete run may take around 48-72 hours (including time for setup and cleanup).

## PrivateCloudSimulator - Device.Storage.HD.AzureStack

## System Requirements

## Solid State Drives

When certifying SSD's for use in Azure Stack the following is the minimum required hardware test harness that must be running a Windows Server 2016 Storage Spaces Direct cluster.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Component Being certified</td>
<td>SSD</td>
</tr>
<tr class="even">
<td>Setup Type</td>
<td>Hyper-converged setup with S2D storage
>[!NOTE]
An SDDC certified HBA is required.
</td>
</tr>
<tr class="odd">
<td>(Minimum) Number of Server Nodes</td>
<td>4 - all identical</td>
</tr>
<tr class="even">
<td>Server Spec</td>
<td>CPU: 16 physical cores (e.g. 2 socket with 8 cores), Memory: 128 GB, 64 GB free space on boot drive</td>
</tr>
<tr class="odd">
<td>Storage - Overall</td>
<td>4 TB free space per node on SSD</td>
</tr>
<tr class="even">
<td>SSD</td>
<td>Total SSD storage capacity on each node = 4 TB. Minimum of 2 SSD per node, but more may be needed to meet the 4 TB free space requirement and have enough spare disks for repair test case. To certify multiple SSD disk families in the same setup concurrently (aka with a single PCS run), you need 1 SSD of each family on each of the 4 nodes in the same enclosure slot.</td>
</tr>
<tr class="odd">
<td>HDD</td>
<td>None</td>
</tr>
<tr class="even">
<td>Network Card</td>
<td>10 GbE NIC with WS2016 Compatible certification/WS2012 R2 certification</td>
</tr>
<tr class="odd">
<td>Switch</td>
<td>10 GbE Switch supporting all NIC features</td>
</tr>
</tbody>
</table>

## Hard Disk Drives

When certifying HDD's for use in Azure Stack the following is the minimum required hardware test harness that must be running a Windows Server 2016 Storage Spaces Direct cluster.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td>Component Being certified</td>
<td>HDD</td>
</tr>
<tr class="even">
<td>Setup Type</td>
<td>Hyper-converged setup with S2D storage
>[!NOTE]
An SDDC certified HBA is required.
</td>
</tr>
<tr class="odd">
<td>(Minimum) Number of Server Nodes</td>
<td>4 - all identical</td>
</tr>
<tr class="even">
<td>Server Spec</td>
<td>CPU: 16 physical cores (e.g. 2 socket with 8 cores), Memory: 128 GB, 64 GB free space on boot drive</td>
</tr>
<tr class="odd">
<td>Storage - Overall</td>
<td>4 TB free space per node on HDD</td>
</tr>
<tr class="even">
<td>SSD</td>
<td>None</td>
</tr>
<tr class="odd">
<td>HDD</td>
<td>Total HDD storage capacity on each node = 4 TB. Minimum of 2 HDD per node, but more may be needed to meet the 4 TB free space requirement and have enough spare disks for repair test case. To certify multiple HDD disk families in the same setup concurrently (aka with a single PCS run), you need 1 HDD of each family on each of the 4 nodes in the same enclosure slot.</td>
</tr>
<tr class="even">
<td>Network Card</td>
<td>10 GbE NIC with WS2016 Certification</td>
</tr>
<tr class="odd">
<td>Switch</td>
<td>10 GbE Switch supporting all NIC features</td>
</tr>
</tbody>
</table>

## Setup

-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to install HLK client software on all cluster nodes
-   Follow the <xref hlink="https://technet.microsoft.com/library/mt693395.aspx">Windows Server 2016 Storage Spaces Direct cluster guide</b> to deploy a cluster

## Execute

-   Open HLK Studio
-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to create a machine pool
-   Navigate to the **Project** tab and click **Create Project**
-   Enter a project name and press Enter
-   Navigate to the **Selection** tab
-   Select the machine pool containing the disk device
-   Select **device manager**
-   Select the disk device that needs to be certified.

    ![HLK Studio showing Device.Storage.HD test with device selected](../images/pcs_device_storage_hd_select_device.png)

-   Right-click on the selected device and select **Add/Modify Features**

    ![HLK Studio showing Device.Storage.HD test with Add/Modify Features context menu](../images/pcs_device_storage_hd_add_modify.png)

-   In the features dialog, select **Device.Storage.HD.AzureStack** and click **OK**.

    ![HLK Studio showing Device.Storage.Hd.AzureStack feature selected](../images/pcs_device_storage_hd_azurestack.png)

-   Navigate to the **Tests** tab
-   Select **PrivateCloudSimulator - Device.Storage.HD.AzureStack**
-   Click **Run Selected**

    ![HLK Studio showing Device.Storage.HD tests](../images/pcs_device_storage_hd_before_run.png)

-   In the Schedule dialog,
    -   Enter values for the required test parameters
        -   DomainName: Test user's fully qualified domain name (FQDN).
        -   UserName: Test user's user name
        -   Password: Test user's password
        -   ComputeCluster: compute cluster name
        -   This location(s) will be on the disk device under test. Default value is "". It uses all the available CSVs from compute cluster. You can use different path by entering comma separated paths.

            Example: "C:\\ClusterStorage\\Volume1,C:\\ClusterStorage\\Volume2"

    -   Map machines to roles
        -   PrimaryNode: This is the node with the selected device
        -   Test Controller: Select PCS test controller machine
        -   OtherNodes: Select other cluster nodes

        ![HLK Studio showing test parameters and roles](../images/pcs_device_storage_hd_parameters_roles.png)
-   Click OK to schedule the test.
-   Please refer to <xref local="realtime">View PCS report in real-time through SQL Server Reporting Services</b> to view the real-time results for the test run.

## Actions

The profile defines the actions to execute to validate the disk drives for Microsoft AzureStack. The table below lists the actions that are included in this profile.

<table>
<tr>
<th>
Target object

</th>
<th>
Action

</th>
<th>
Description

</th>
</tr>
<tr>
<td rowspan="8">
Virtual machine

</td>
<td>
VmCloneAction

</td>
<td>
Creates a new VM.

</td>
</tr>
<tr>
<td>
VmLiveMigrationAction

</td>
<td>
Live-migrates the VM to another cluster node.

</td>
</tr>
<tr>
<td>
VmSnapshotAction

</td>
<td>
Takes a snapshot of the VM.

</td>
</tr>
<tr>
<td>
VmStateChangeAction

</td>
<td>
Changes the VM state (for example, to Paused).

</td>
</tr>
<tr>
<td>
VmStorageMigrationAction

</td>
<td>
Migrates VM storage (the VHD(s)) between cluster nodes.

</td>
</tr>
<tr>
<td>
VmGuestRestartAction

</td>
<td>
Restarts the VM.

</td>
</tr>
<tr>
<td>
VmStartWorkloadAction

</td>
<td>
Starts a user-simulated workload.

</td>
</tr>
<tr>
<td>
VmGuestFullPowerCycleAction

</td>
<td>
Power-cycles the VM.

</td>
</tr>
<tr>
<td>
Compute node

</td>
<td>
ClusterCSVMoveAction

</td>
<td>
Move the CSV disks to the best available node.

</td>
</tr>
<tr>
<td rowspan="7">
Storage node

</td>
<td>
StorageNodePoolMove

</td>
<td>
Moves a storage pool (created in Storage Spaces) to a different owner node in the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeRestart

</td>
<td>
Restarts a node in the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeBugcheck

</td>
<td>
Bug checks one node of the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeDiskReadTimeoutAction

</td>
<td>
This action goes through disks that tolerate errors (not readonly, clustered, no simple spaces) and waits for read IO. Once an IO is intercepted, it will cause the IO to timeout. If a single timeout is detected on any disk, the action is considered successful.

</td>
</tr>
<tr>
<td>
StorageNodeDiskWriteTimeoutAction

</td>
<td>
This action goes through disks that tolerate errors (not readonly, clustered, no simple spaces) and waits for write IO. Once an IO is intercepted, it will cause the IO to timeout. If a single timeout is detected on any disk, the action is considered successful.

</td>
</tr>
<tr>
<td>
StorageNodeBusResetAction

</td>
<td>
This action attempts to inject a bus reset to any of the physical disks backing the pool. First, a timeout to a read or write IO is attempted, if that is successful then the corresponding abort, reset LUN, and reset target commands are failed. If any of these succeed then a bus reset will be triggered. If any disk issues a bus reset, the action is then considered successful.

</td>
</tr>
<tr>
<td>
StorageNodeUpdateStorageProviderCacheAction

</td>
<td>
Calls update-storageprovidercache command in powershell

</td>
</tr>
</table>
**Duration**

-   PCS Actions (listed above) will run for 48 hours.
-   The complete run may take an additional 24-36 hours (including time for setup and cleanup).

## PrivateCloudSimulator - Device.Storage.Controller.AzureStack

## System Requirements

When certifying SAS HBA's for use in Azure Stack the following is the minimum required hardware test harness that must be running a Windows Server 2016 Storage Spaces Direct cluster.

|                                  |                                                                                                     |
|----------------------------------|-----------------------------------------------------------------------------------------------------|
| Component Being certified        | SAS HBA (for S2D)                                                                                   |
| Setup Type                       | Hyper-converged setup with S2D storage. HBA under test has to be separate from the Boot HBA         |
| (Minimum) Number of Server Nodes | 3 - all identical                                                                                   |
| Server Spec                      | CPU: 16 physical cores (e.g. 2 socket with 8 cores), Memory: 128 GB, 64 GB free space on boot drive |
| Storage - Overall                | 4 TB free space per node on HDD, 800 GB free space per node on SSD                                  |
| SSD                              | Minimum of 1 SSD per node                                                                           |
| HDD                              | Minimum of 2 HDD per node                                                                           |
| Network Card                     | 10 GbE NIC with WS2016 Certification                                                                |
| Switch                           | 10GbE Switch supporting all NIC features                                                            |

## Setup

-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to install HLK client software on all cluster nodes
-   Follow the <xref hlink="https://technet.microsoft.com/library/mt693395.aspx">Windows Server 2016 Storage Spaces Direct cluster guide</b> to deploy a cluster

## Execute

-   Open HLK Studio
-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to create a machine pool
-   Navigate to the **Project** tab and click **Create Project**
-   Enter a project name and press Enter
-   Navigate to the **Selection** tab
-   Select the machine pool containing the disk device
-   Select **device manager**
-   Select the disk device that needs to be certified.

    ![HLK Studio with LSI adapter storage device selected](../images/pcs_device_storage_controller_azurestack_storagecontroller.png)

-   Right-click on the selected device and select **Add/Modify Features**

    ![HLK Studio showing Add/Modify Features context menu](../images/pcs_device_storage_controller_azurestack_add_modify.png)

-   In the features dialog, select **Device.Storage.Controller.AzureStack** and click OK.

    ![HLK Studio showing features dialog](../images/pcs_device_storage_controller_azurestack_features.png)

-   Navigate to the Tests tab
-   Select **PrivateCloudSimulator - Device.Storage.Controller.AzureStack**
-   Click **Run Selected**

    ![HLK Studio showing AzureStack test](../images/pcs_device_storage_controller_azurestack_tests.png)

-   In the Schedule dialog,
    -   Enter values for the required test parameters
        -   DomainName: Test user's fully qualified domain name (FQDN).
        -   UserName: Test user's user name
        -   Password: Test user's password
        -   ComputeCluster: Name of compute cluster name
        -   StoragePath: This location(s) will be on the disk connected to the storage controller under test.

            Default value is "". It uses all the available CSVs from compute cluster. You can use different path by entering comma separated paths.

            Example: "C:\\ClusterStorage\\Volume1,C:\\ClusterStorage\\Volume2"

    -   Map machines to roles
        -   PrimaryNode: This is the node with the selected device
        -   Test Controller: Select PCS test controller machine
        -   OtherNodes: Select other cluster nodes

            ![HLK Studio showing parameters and roles dialog.](../images/pcs_device_storage_controller_azurestack_parameters_roles.png)
-   Click OK to schedule the test.
-   Please refer to <xref local="realtime">View PCS report in real-time through SQL Server Reporting Services</b> to view the real-time results for the test run.

## Actions

The profile defines the actions to execute to validate the disk drives for Microsoft AzureStack. The table below lists the actions that are included in this profile.

<table>
<tr>
<th>
Target object

</th>
<th>
Action

</th>
<th>
Description

</th>
</tr>
<tr>
<td rowspan="8">
Virtual machine

</td>
<td>
VmCloneAction

</td>
<td>
Creates a new VM.

</td>
</tr>
<tr>
<td>
VmLiveMigrationAction

</td>
<td>
Live-migrates the VM to another cluster node.

</td>
</tr>
<tr>
<td>
VmSnapshotAction

</td>
<td>
Takes a snapshot of the VM.

</td>
</tr>
<tr>
<td>
VmStateChangeAction

</td>
<td>
Changes the VM state (for example, to Paused).

</td>
</tr>
<tr>
<td>
VmStorageMigrationAction

</td>
<td>
Migrates VM storage (the VHD(s)) between cluster nodes.

</td>
</tr>
<tr>
<td>
VmGuestRestartAction

</td>
<td>
Restarts the VM.

</td>
</tr>
<tr>
<td>
VmStartWorkloadAction

</td>
<td>
Starts a user-simulated workload.

</td>
</tr>
<tr>
<td>
VmGuestFullPowerCycleAction

</td>
<td>
Power-cycles the VM.

</td>
</tr>
<tr>
<td rowspan="4">
Compute node

</td>
<td>
ClusterCSVMoveAction

</td>
<td>
Move the CSV disks to the best available node.

</td>
</tr>
<tr>
<td>
StorageNodePoolMove

</td>
<td>
Moves a storage pool (created in Storage Spaces) to a different owner node in the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeBusResetAction

</td>
<td>
This action attempts to inject a bus reset to any of the physical disks backing the pool. First, a timeout to a read or write IO is attempted, if that is successful then the corresponding abort, reset LUN, and reset target commands are failed. If any of these succeed then a bus reset will be triggered. If any disk issues a bus reset, the action is then considered successful.

</td>
</tr>
<tr>
<td>
StorageNodePortDisableAllAction

</td>
<td>
This action disables all the storage controllers in the node. All of the SCSI controllers are disabled, if one is successfully disabled then the action is considered passed. After the specified time, all of the controllers are then re-enabled.

This action is disabled for boot controllers

</td>
</tr>
</table>
**Duration**

-   PCS Actions (listed above) will run for 48 hours.
-   The complete run may take an additional 24-36 hours (including time for setup and cleanup).

## PrivateCloudSimulator - Device.Storage.Enclosure.AzureStack

## System Requirements

|                                  |                                                                                                     |
|----------------------------------|-----------------------------------------------------------------------------------------------------|
| Component Being certified        | Enclosure                                                                                           |
| Setup Type                       | Hyper-converged setup with S2D storage. HBA under test has to be separate from the Boot HBA         |
| (Minimum) Number of Server Nodes | 3 - all identical                                                                                   |
| Server Spec                      | CPU: 16 physical cores (e.g. 2 socket with 8 cores), Memory: 128 GB, 64 GB free space on boot drive |
| Storage - Overall                | 4 TB free space per node on HDD, 800 GB free space per node on SSD                                  |
| SSD                              | Minimum of 1 SSD per node                                                                           |
| HDD                              | Minimum of 2 HDD per node                                                                           |
| Network Card                     | 10 GbE NIC with WS2016 Certification                                                                |
| Switch                           | 10GbE Switch supporting all NIC features                                                            |

## Setup

-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to install HLK client software on all cluster nodes
-   Follow the <xref hlink="https://technet.microsoft.com/library/mt693395.aspx">Windows Server 2016 Storage Spaces Direct cluster guide</b> to deploy a cluster

## Execute

-   Open HLK Studio
-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to create a machine pool
-   Navigate to the **Project** tab and click **Create Project**
-   Enter a project name and press Enter
-   Navigate to the **Selection** tab
-   Select the machine pool containing the disk device
-   Select **device manager**
-   Select the disk device that needs to be certified.

    ![HLK Studio showing selected storage enclosure device.](../images/pcs_device_storage_enclosure_azurestack_storage_enclosure.png)

-   Right-click on the selected device and select **Add/Modify Features**

    ![HLK Studio showing Add/Modify Features context menu](../images/pcs_device_storage_enclosure_azurestack_add_modify.png)

-   In the features dialog, select **Device.Storage.Enclosure.AzureStack** and click OK.

    ![HLK Studio showing features dialog](../images/pcs_device_storage_enclosure_azurestack_features.png)

-   Navigate to the Tests tab
-   Select **PrivateCloudSimulator - Device.Storage.Enclosure.AzureStack**
-   Click **Run Selected**

    ![HLK Studio showing AzureStack test](../images/pcs_device_storage_enclosure_azurestack_tests.png)

-   In the Schedule dialog,
    -   Enter values for the required test parameters
        -   DomainName: Test user's fully qualified domain name (FQDN).
        -   UserName: Test user's user name
        -   Password: Test user's password
        -   ComputeCluster: Name of compute cluster name
        -   StoragePath: This location(s) will be on the disk connected to the storage controller under test.

            Default value is "". It uses all the available CSVs from compute cluster. You can use different path by entering comma separated paths.

            Example: "C:\\ClusterStorage\\Volume1,C:\\ClusterStorage\\Volume2"

    -   Map machines to roles
        -   PrimaryNode: This is the node with the selected device
        -   Test Controller: Select PCS test controller machine
        -   OtherNodes: Select other cluster nodes

            ![HLK Studio showing parameters and roles dialog.](../images/pcs_device_storage_enclosure_azurestack_parameters_roles.png)
-   Click OK to schedule the test.
-   Please refer to <xref local="realtime">View PCS report in real-time through SQL Server Reporting Services</b> to view the real-time results for the test run.

## Actions

The profile defines the actions to execute to validate the disk drives for Microsoft AzureStack. The table below lists the actions that are included in this profile.

<table>
<tr>
<th>
Target object

</th>
<th>
Action

</th>
<th>
Description

</th>
</tr>
<tr>
<td rowspan="8">
Virtual machine

</td>
<td>
VmCloneAction

</td>
<td>
Creates a new VM.

</td>
</tr>
<tr>
<td>
VmLiveMigrationAction

</td>
<td>
Live-migrates the VM to another cluster node.

</td>
</tr>
<tr>
<td>
VmSnapshotAction

</td>
<td>
Takes a snapshot of the VM.

</td>
</tr>
<tr>
<td>
VmStateChangeAction

</td>
<td>
Changes the VM state (for example, to Paused).

</td>
</tr>
<tr>
<td>
VmStorageMigrationAction

</td>
<td>
Migrates VM storage (the VHD(s)) between cluster nodes.

</td>
</tr>
<tr>
<td>
VmGuestRestartAction

</td>
<td>
Restarts the VM.

</td>
</tr>
<tr>
<td>
VmStartWorkloadAction

</td>
<td>
Starts a user-simulated workload.

</td>
</tr>
<tr>
<td>
VmGuestFullPowerCycleAction

</td>
<td>
Power-cycles the VM.

</td>
</tr>
<tr>
<td>
Compute node

</td>
<td>
ClusterCSVMoveAction

</td>
<td>
Move the CSV disks to the best available node.

</td>
</tr>
<tr>
<td rowspan="3">
Storage node

</td>
<td>
StorageNodePoolMove

</td>
<td>
Moves a storage pool (created in Storage Spaces) to a different owner node in the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeBusResetAction

</td>
<td>
This action attempts to inject a bus reset to any of the physical disks backing the pool. First, a timeout to a read or write IO is attempted, if that is successful then the corresponding abort, reset LUN, and reset target commands are failed. If any of these succeed then a bus reset will be triggered. If any disk issues a bus reset, the action is then considered successful.

</td>
</tr>
<tr>
<td>
StorageRetireAndRepairAction

</td>
<td>
This action retires a disk from a pool and starts repair. If spaces doesn't get healthy, the action fails. The action randomly picks a pool and tries to retire a disk in the pool. If the disk is set as readonly, or it is a simple space or is used for cluster purposes (i.e. quorum resource) then the action is skipped

</td>
</tr>
</table>
**Duration**

-   PCS Actions (listed above) will run for 48 hours.
-   The complete run may take an additional 24-36 hours (including time for setup and cleanup).

## PrivateCloudSimulator - System.Solutions.StorageSpacesDirect

## Setup

-   Setup your solution with the cluster deployment toolset supplied for WSSD program.
-   Minimum Configuration
    -   This config contains the minimum of cluster nodes, slowest supported processor, least memory and lowest storage capacity supported by the solution family.
    -   Please use the **PrivateCloudSimulator - System.Solutions.StorageSpacesDirect (MIN)** job to validate this setup
-   Maximum Configuration
    -   This config contains the maximum of cluster nodes and the maximum storage supported by the solution family.
    -   Processor and memory should be equal or higher than the lowest supported value for the solution, but need not be the maximum possible supported value. The processor and memory values should be representative of the most common skus for the solution.
    -   Please use the **PrivateCloudSimulator - System.Solutions.StorageSpacesDirect (MAX)** job to validate this setup

## Execute

-   Open HLK Studio
-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to create a machine pool
-   Navigate to the **Project** tab and click **Create Project**
-   Enter a project name and press Enter
-   Navigate to the **Selection** tab
-   Select the machine pool containing the system under test and PCS controller machine.
-   Select **systems** on the left panel and then select the PCS test controller (NOTE: Not the machine that needs to be certified).

    ![HLK Studio showing systems tab with pcs test controller selected](../images/pcs_system_solutions_storagespacesdirect_test_controller.png)

-   Right-click on the selected device and select **Add/Modify Features**

    ![HLK Studio showing add/modify features dialog](../images/pcs_system_solutions_storagespacesdirect_add_modify_features.png)

-   In the features dialog, select **System.Solution.StorageSpacesDirect** and click OK

    ![HLK Studio showing features dialog with storagespacesdirect selected](../images/pcs_system_solutions_storagespacesdirect_features.png)

-   Navigate to the Tests tab
-   Select **PrivateCloudSimulator – System.Solutions.StorageSpacesDirect (MAX)** or **PrivateCloudSimulator – System.Solutions.StorageSpacesDirect (MIN)** (based on the solution size you are testing)
-   Click **Run Selected**

    ![HLK Studio showing storage spaces direct tests](../images/pcs_system_solutions_storagespacesdirect_tests.png)

-   In the Schedule dialog,
    -   Enter values for the required test parameters
        -   DomainName: Test user's fully qualified domain name (FQDN).
        -   UserName: Test user's user name
        -   Password: Test user's password
        -   ComputeCluster: Name of compute cluster name
        -   StoragePath: This location(s) will be on the disk device under test. Default value is "". It uses all the available CSVs from compute cluster. You can use different path by entering comma separated paths.

            Example: "C:\\ClusterStorage\\Volume1,C:\\ClusterStorage\\Volume2"

    -   Map machines to roles
        -   Test Controller: Select PCS test controller machine

            ![HLK Studio showing parameters and roles dialog](../images/pcs_system_solutions_storagespacesdirect_parameters_roles.png)
-   Click **OK** to schedule the test.
-   Please refer to <xref local="realtime">View PCS report in real-time through SQL Server Reporting Services</b> to view the real-time results for the test run.

## Actions

The profile defines the actions to execute to validate the disk drives for Microsoft AzureStack. The table below lists the actions that are included in this profile.

<table>
<tr>
<th>
Target object

</th>
<th>
Action

</th>
<th>
Description

</th>
</tr>
<tr>
<td rowspan="8">
Virtual machine

</td>
<td>
VmCloneAction

</td>
<td>
Creates a new VM.

</td>
</tr>
<tr>
<td>
VmLiveMigrationAction

</td>
<td>
Live-migrates the VM to another cluster node.

</td>
</tr>
<tr>
<td>
VmSnapshotAction

</td>
<td>
Takes a snapshot of the VM.

</td>
</tr>
<tr>
<td>
VmStateChangeAction

</td>
<td>
Changes the VM state (for example, to Paused).

</td>
</tr>
<tr>
<td>
VmStorageMigrationAction

</td>
<td>
Migrates VM storage (the VHD(s)) between cluster nodes.

</td>
</tr>
<tr>
<td>
VmGuestRestartAction

</td>
<td>
Restarts the VM.

</td>
</tr>
<tr>
<td>
VmStartWorkloadAction

</td>
<td>
Starts a user-simulated workload.

</td>
</tr>
<tr>
<td>
VmGuestFullPowerCycleAction

</td>
<td>
Power-cycles the VM.

</td>
</tr>
<tr>
<td rowspan="13">
Compute node

</td>
<td>
ComputeNodeEvacuation

</td>
<td>
Drains all resources from one cluster node.

</td>
</tr>
<tr>
<td>
ClusterCSVMoveAction

</td>
<td>
Move the CSV disks to the best available node.

</td>
</tr>
<tr>
<td>
StorageNodePoolMove

</td>
<td>
Moves a storage pool (created in Storage Spaces) to a different owner node in the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeRestart

</td>
<td>
Restarts a node in the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeBugcheck

</td>
<td>
Bug checks one node of the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeDiskReadTimeoutAction

</td>
<td>
This action goes through disks that tolerate errors (not read-only, clustered, no simple spaces) and waits for read IO. Once an IO is intercepted, it will cause the IO to timeout. If a single timeout is detected on any disk, the action is considered successful. This action is invoked on storage nodes every 15 minutes.

</td>
</tr>
<tr>
<td>
StorageNodeDiskWriteTimeoutAction

</td>
<td>
This action goes through disks that tolerate errors (not read-only, clustered, no simple spaces) and waits for write IO. Once an IO is intercepted, it will cause the IO to timeout. If a single timeout is detected on any disk, the action is considered successful. This action is invoked on storage nodes every 15 minutes.

</td>
</tr>
<tr>
<td>
StorageNodeBusResetAction

</td>
<td>
This action attempts to inject a bus reset to any of the physical disks backing the pool. First, a timeout to a read or write IO is attempted, if that is successful then the corresponding abort, reset LUN, and reset target commands are failed. If any of these succeed then a bus reset will be triggered. If any disk issues a bus reset, the action is then considered successful.

</td>
</tr>
<tr>
<td>
StorageNodePortDisableAllAction

</td>
<td>
This action disables all the storage controllers in the node. All of the SCSI controllers are disabled, if one is successfully disabled then the action is considered passed. After the specified time, all of the controllers are then re-enabled.

</td>
</tr>
<tr>
<td>
StorageRetireAndRepairAction

</td>
<td>
This action retires a disk from a pool and starts repair. If spaces doesn't get healthy, the action fails. The action randomly picks a pool and tries to retire a disk in the pool. If the disk is set as readonly, or it is a simple space or is used for cluster purposes (i.e. quorum resource) then the action is skipped DisableNetworkAdapters Disables one of the network adapter that carries the storage traffic.

</td>
</tr>
<tr>
<td>
StorageNodeNetworkDisconnectAction

</td>
<td>
Disables one of the network adapters that carries the storage traffic.

</td>
</tr>
<tr>
<td>
StorageNodeDiskIoTimeoutOnceAction

</td>
<td>
Times out a single read or write across the storage node. This does not time out the retry attempt for this IO, so the disk will not go unresponsive.

</td>
</tr>
<tr>
<td>
StorageNodeUpdateStorageProviderCacheAction

</td>
<td>
Calls update-storageprovidercache command in PowerShell.

</td>
</tr>
</table>
**Duration**

-   PCS Actions (listed above) will run for 96 hours.
-   The complete run may take an additional 24-36 hours (including time for setup and cleanup).

## PrivateCloudSimulator - System.Solutions.AzureStack

## System Requirements

## Setup

-   Setup your solution with the cluster deployment toolset supplied for AzureStack program.
-   Minimum Configuration
    -   This config contains the minimum of cluster nodes, slowest processor, least memory and lowest storage capacity supported by the solution family.
    -   Please use the **PrivateCloudSimulator - System.Solutions.AzureStack (MIN)** job to validate this setup
-   Maximum Configuration
    -   This config contains the maximum of cluster nodes and the maximum storage supported by the solution family.
    -   Processor and memory should be equal or higher than the lowest supported value for the solution, but need not be the maximum possible supported value. The processor and memory values should be representative of the most common skus for the solution.
    -   Please use the **PrivateCloudSimulator - System.Solutions. AzureStack (MAX)** job to validate this setup

## Execute

-   Open HLK Studio
-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to create a machine pool
-   Follow the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">Windows HLK Getting Started guide</b> to create a machine pool
-   Navigate to the **Project** tab and click **Create Project**
-   Enter a project name and press Enter
-   Navigate to the **Selection** tab
-   Select the machine pool containing the system under test
-   Select **systems** on the left panel and then select the PCS test controller (NOTE: Not the machine that needs to be certified).

    ![HLK Studio with PCS test controller selected](../images/pcs_system_solutions_azurestack_test_controller.png)

-   Right-click on the selected device and select **Add/Modify Features**

    ![HLK Studio with Add/Modify Features context menu](../images/pcs_system_solutions_azurestack_add_modify.png)

-   In the features dialog, select **System.Solution.AzureStack** and click OK

    ![HLK Studio showing features dialog](../images/pcs_system_solutions_azurestack_features.png)

-   Navigate to the Tests tab
-   Select **PrivateCloudSimulator – System.Solutions.AzureStack**
-   Click **Run Selected** link

    ![HLK Studio showing tests tab with azurestack test selected](../images/pcs_system_solutions_azurestack_tests.png)

-   In the Schedule dialog,
    -   Enter values for the required test parameters
        -   DomainName: Test user's fully qualified domain name (FQDN).
        -   UserName: Test user's user name
        -   Password: Test user's password
        -   ComputeCluster: Name of compute cluster name
        -   StoragePath: This location(s) will be on the disk device under test. Default value is "". It uses all the available CSVs from compute cluster. You can use different path by entering comma separated paths.

            Example: "C:\\ClusterStorage\\Volume1,C:\\ClusterStorage\\Volume2"

    -   Map machines to roles
        -   Test Controller: Select PCS test controller machine

            ![HLK Studio showing parameters and roles dialog](../images/pcs_system_solutions_azurestack_parameters_roles.png)
-   Click **OK** to schedule the test.
-   Please refer to <xref local="realtime">View PCS report in real-time through SQL Server Reporting Services</b> to view the real-time results for the test run.

## Actions

The profile defines the actions to execute to validate the storage Enclosure for Microsoft AzureStack. The table below lists the actions that are included in this profile.

<table>
<tr>
<th>
Target object

</th>
<th>
Action

</th>
<th>
Description

</th>
</tr>
<tr>
<td rowspan="8">
Virtual machine

</td>
<td>
VmCloneAction

</td>
<td>
Creates a new VM.

</td>
</tr>
<tr>
<td>
VmLiveMigrationAction

</td>
<td>
Live-migrates the VM to another cluster node.

</td>
</tr>
<tr>
<td>
VmSnapshotAction

</td>
<td>
Takes a snapshot of the VM.

</td>
</tr>
<tr>
<td>
VmStateChangeAction

</td>
<td>
Changes the VM state (for example, to Paused).

</td>
</tr>
<tr>
<td>
VmStorageMigrationAction

</td>
<td>
Migrates VM storage (the VHD(s)) between cluster nodes.

</td>
</tr>
<tr>
<td>
VmGuestRestartAction

</td>
<td>
Restarts the VM.

</td>
</tr>
<tr>
<td>
VmStartWorkloadAction

</td>
<td>
Starts a user-simulated workload.

</td>
</tr>
<tr>
<td>
VmGuestFullPowerCycleAction

</td>
<td>
Power-cycles the VM.

</td>
</tr>
<tr>
<td rowspan="2">
Compute node

</td>
<td>
ComputeNodeEvacuation

</td>
<td>
Drains all resources from one cluster node.

</td>
</tr>
<tr>
<td>
ClusterCSVMoveAction

</td>
<td>
Move the CSV disks to the best available node.

</td>
</tr>
<tr>
<td rowspan="11">
Storage Node

</td>
<td>
StorageNodePoolMove

</td>
<td>
Moves a storage pool (created in Storage Spaces) to a different owner node in the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeRestart

</td>
<td>
Restarts a node in the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeBugcheck

</td>
<td>
Bug checks one node of the storage cluster.

</td>
</tr>
<tr>
<td>
StorageNodeDiskReadTimeoutAction

</td>
<td>
This action goes through disks that tolerate errors (not read-only, clustered, no simple spaces) and waits for read IO. Once an IO is intercepted, it will cause the IO to timeout. If a single timeout is detected on any disk, the action is considered successful. This action is invoked on storage nodes every 15 minutes.

</td>
</tr>
<tr>
<td>
StorageNodeDiskWriteTimeoutAction

</td>
<td>
This action goes through disks that tolerate errors (not read-only, clustered, no simple spaces) and waits for write IO. Once an IO is intercepted, it will cause the IO to timeout. If a single timeout is detected on any disk, the action is considered successful. This action is invoked on storage nodes every 15 minutes.

</td>
</tr>
<tr>
<td>
StorageNodeBusResetAction

</td>
<td>
This action attempts to inject a bus reset to any of the physical disks backing the pool. First, a timeout to a read or write IO is attempted, if that is successful then the corresponding abort, reset LUN, and reset target commands are failed. If any of these succeed then a bus reset will be triggered. If any disk issues a bus reset, the action is then considered successful.

</td>
</tr>
<tr>
<td>
StorageNodePortDisableAllAction

</td>
<td>
This action disables all the storage controllers in the node. All of the SCSI controllers are disabled, if one is successfully disabled then the action is considered passed. After the specified time, all of the controllers are then re-enabled.

</td>
</tr>
<tr>
<td>
StorageRetireAndRepairAction

</td>
<td>
This action retires a disk from a pool and starts repair. If spaces doesn't get healthy, the action fails. The action randomly picks a pool and tries to retire a disk in the pool. If the disk is set as readonly, or it is a simple space or is used for cluster purposes (i.e. quorum resource) then the action is skipped DisableNetworkAdapters Disables one of the network adapter that carries the storage traffic.

</td>
</tr>
<tr>
<td>
StorageNodeNetworkDisconnectAction

</td>
<td>
Disables one of the network adapters that carries the storage traffic.

</td>
</tr>
<tr>
<td>
StorageNodeDiskIoTimeoutOnceAction

</td>
<td>
Times out a single read or write across the storage node. This does not time out the retry attempt for this IO, so the disk will not go unresponsive.

</td>
</tr>
<tr>
<td>
StorageNodeUpdateStorageProviderCacheAction

</td>
<td>
Calls update-storageprovidercache command in PowerShell.

</td>
</tr>
</table>
**Duration**

-   PCS Actions (listed above) will run for 96 hours.
-   The complete run may take an additional 24-36 hours (including time for setup and cleanup)

## Analyze test results

While a PCS test pass is running, you can view and analyze data in real-time through SQL Server Reporting Services. After the test pass completes, you can get additional information in the logs generated by the PCS.

## View PCS report in real-time through SQL Server Reporting Services

While PCS operations are running, reports are saved in a SQL database on the PCS Controller. Each report lists all operations that were performed, their pass percentages, and all resources that were acquired and released during the test. A new database is created for each test run to enable you to review data from previous test runs at any time.

To view the report, follow these steps:

1.  By default, Internet Explorer Enhanced Security Configuration is enabled on Windows Server 2016. You need to disable it to view the report.

    Open Server Manager =&gt; Local Server =&gt; Click **IE Enhanced Security Configuration** to turn it off for administrators and users.

2.  Open IE from HLK controller and visit http://PcsControllerMachineName/Reports.

    If you open IE from PCS controller, you need to open IE with administrator privilege.

    ![PCS reporting page in Internet Explorer](../images/pcs_ie_reports_page.png)

3.  Click **PCS Reports** =&gt; **PCSRuns**.
4.  Each PCS run is identified by a unique **Pass Run ID**.

    ![IE reporting showing Pass Run IDs](../images/pcs_ie_reports_pass_run_id.png)

5.  Click a **Pass Run ID** (for example, click f44b3f88-3dbf-476e-9294-9d479ca0a369) to open a report from the PCS run.

    The data in these reports is live. While a test runs, you can monitor the progress of a test run in real-time.

    -   An overview of all resources (VMs and hosts) that participated in the test run.
    -   All actions that were performed on each resource. The Pass and Fail columns report the number of actions that passed and failed.

    ![IE reporting showing run information](../images/pcs_ie_reports_run_information.png)

6.  In the Overall Operation Information table, you can click links in the Action/Pass/Fail column to open detail pages, which give you more information about the action's results. For example, if you clicked the failure number 9 by the **VMLiveMigrationAction** entry, you would see the summary shown in the following illustration.

    ![IE reporting showing VmLiveMigrationAction](../images/pcs_ie_reports_vmlivemigrationaction.png)

    The first entry above provides the following information:

    -   **Failure ID:** When we encounter a failure in PCS, we generalize the Failure Message and generate a unique Hash for it. In above example the Failure ID is 97c12afd-23a8-3982-e304-a5dc6793950d
    -   **Failure Hash:** Generalized failure message.

        In the example above, the failure hash is the following:

        *Virtual Machine &lt;VIRTUAL MACHINE&gt; live migration failed at progress &lt;PERCENTAGE&gt; (migration state: Migrating)*

        *Error: Virtual machine migration operation for '&lt;VIRTUAL MACHINE&gt;' failed at migration destination '&lt;COMPUTE NODE&gt;'. (Virtual machine ID &lt;GUID&gt;)*

        *Failed to receive data for a Virtual Machine migration: This operation returned because the timeout period expired. (0x800705B4).*

    -   **Count Current Run:** The count of actions of a particular type that failed with this particular error message during this run. In the above example, **VMLiveMigrationAction** was run 3 times.
    -   **Count All Runs:** A count of actions that failed because of this particular failure across all PCS runs. For the **VMLiveMigrationAction**, this count was 3.
    -   **PCS Runs Affected:** Tells how many runs have been affected by this failure. For **VMLiveMigrationAction**, only 1 PCS run was affected.

7.  To look further into the error – you can click a failure ID on that screen to drill down to a global history of the failure type across all PCS runs. For example, click **97c12afd-23a8-3982-e304-a5dc6793950d** to display the following. The page lists all failed operations, grouped by failure type, which has the effect of highlighting key features that you might need to investigate.

    ![IE reporting showing failing actions by cause](../images/pcs_ie_reports_failing_actions.png)

8.  If you click the Action ID, you can drill down farther to see an Action Log Report. Errors are shown in red; Warnings are shown in yellow.

    ![IE reporting showing action log report](../images/pcs_ie_reports_action_log.png)

## Troubleshoot a PCS run from the PCS Controller

There are multiple stages in PCS Execution Flow. If PCS failed at Setup, Execute, or Cleanup stage, you can browse job logs by right click the job name =&gt; click Browse Job Logs. The log file names are PCS-E2Elaunch\_Setup.log, PCSE2Elaunch\_Execute.log, and PCS-E2Elaunch\_Cleanup.log. Log files contain information about failures.

![PCS controller showing task execution status](../images/pcs_task_execution_status.png)
When a PCS job fails, you can rerun Setup/Execute/Cleanup stage directly from PCS controller. This method is useful to for troubleshooting problems in these stages.

-   Open elevated command prompt
-   Run **ReRunPcsSetup.cmd**, **ReRunPcsExecute.cmd**, or **ReRunPcsCleanup.cmd** script

## Logs and Diagnose

PCS has three main stages: Setup, Execute, and Cleanup. HLK PCS job uses PCS-E2Elaunch.ps1 script to launch these three stages. Their log file names are called PCS-E2ELaunch\_Setup.log, PCS-E2ELaunch\_Execute.log and PCSE2ELaunch\_Cleanup.log.

When a PCS run has completed, PCS Run Analyzer analyzes logs and reports. The run succeeded when the following criteria are met, with the analyzed report saved as AnalyzerLog.log.

-   All PCS actions has 90% pass rate
-   No unexpected crash of any cluster node, except the ones initiated by PCS for testing purpose

The AnalyzerLog.log looks similar to the figure below:

![analyzer log](../images/pcs_analyzer_log.png)
A zip file (PcsLog-DateTime.zip) is created at the end of PCS Cleanup phase. This file contains all the logs and is copied to the HLK PCS job result folder when a test fails.

-   ClusterLog subfolder: contains cluster log files
-   Events subfolder: contains event files
-   MHTML subfolder: contains SQL summary page and failed actions.
-   PCSEventData subfolder: contains workload logs
-   ClusterName-PRE.mht.html/ClusterName-POST.mht.html file: cluster validation test is run before and after PCS execute stage to verify the cluster healthy status

You can run the following script from PCS controller to generate a ZIP file that contains required logs. This method is useful when HLK Studio canceled the job before PCS Cleanup phase has finished.

**Syntax**

`PS > C:\pcs\PCS-E2ELaunch.ps1 -DomainName <string> -UserName <string> -Password <string> -ComputeCluster <string> [-StorageCluster <string>] -CollectLog`
**Parameters**

-   DomainName: Test user's fully qualified domain name (FQDN).
-   UserName: Test user's user name
-   Password: Test user's password
-   ComputeCluster: Name of compute cluster name
-   StorageCluster: optional, Name of storage cluster name. Don't specify this parameter if Computer and Storage clusters are the same.
-   CollectLog: Required

While PCS is running, you can run the following cmdlets on PCS controller to generate a report that lists unexpected bugchecks from all nodes.

**Syntax**

`PS > Import-Module .\PrivateCloudSimulator-Manager.psm1` `PS > Get-PCSReport`
The above cmdlet generates a HTM file containing the report.

## Customize Action Logs

A PCS run has a RunId. A PCS action has an action ID. When a PCS action fails, PCS removes the variant (i.e. VM name) from the failure message and generates a unique hash value for it. Similar failures have same unique hash value. PCS then groups them together in SQL report site.

PCS uses .NET Trace Listeners to collect test results. These listeners are defined in Microsoft.PrivateCloudSimulator.exe.config.

-   SQLOnline: This listener logs the results into SQL database.
-   AnalyticalLogGather: This listener collects extra information when an action is failed.

When a particular action fails or a particular hash value is seen, you can configure AnalyticalLogGather listener to collect event logs, cluster logs, or call a script. This is defined in ActionFailureReactionPolicy.xml.

In ActionFailureReactionPolicy.xml, PCS supports two types of triggers and three types of reactions. Using this XML, you can define rules like "when trigger X is seen, take reactions Y and Z". Most actions would have NodeScope set to ReservedOnly and MaxLevel set to 3 (Critical, Error, and Warning events).

**Trigger:**

| Type         | Data           |
|--------------|----------------|
| ActionFail   | ActionFullName |
| KnownFailure | FailureHash    |

**Reaction:**

| Type                 | Data                                                                 |
|----------------------|----------------------------------------------------------------------|
| ETWCollection        | Channel, NodeScope, StorageLocation, MaxLevel                        |
| ClusterLogCollection | UseLocalTime, NodeScope, StorageLocation, MaxTimeDuration (optional) |
| CustomPS             | ScriptFullPath, NodeScope, Argument                                  |

Valid NodeScope values are the following:

-   AllNodes
-   ComputeOnly
-   StorageOnly
-   EdgeOnly
-   NCOnly
-   ReservedOnly

Valid MaxLevel values are the following:

-   0 (logs at all levels)
-   1 (Critical)
-   2 (Error)
-   3 (Warning)
-   4 (Information)
-   5 (Verbose)

**Examples:**

`<Trigger>   <Type>ActionFail</Type>   <Data Name="ActionFullName" Value="Microsoft.HyperV.Test.Stress.PrivateCloud.ComputeNode.Action.StorageNodeRestartAction">   </Data>   <ReactionMatchList>     <!-- Details of Reaction are Defined Below and are referenced using the ID attribute-->     <MatchingReaction ID ="1"></MatchingReaction>     <MatchingReaction ID ="2"></MatchingReaction>   </ReactionMatchList> </Trigger>49 <Reaction ID="1">   <Type>ETWCollection</Type>   <Data Name="Channel" Value="Microsoft-Windows-Hyper-V-VMMS-Analytic"></Data>   <Data Name="NodeScope" Value="ReservedOnly"></Data>   <Data Name="StorageLocation" Value="C:\PCS\PCSEventData\%NODE%\%ActionId%\EventLogs"></Data>   <Data Name="MaxLevel" Value="3"></Data> </Reaction>`
Action log files are saved to 'FORENSICLOGLOCATION' folder on PCS controller. By default, it is C:\\PCS\\PCSEventData.

For each failed action, the following information is collected from the reserved node(s). This log location can be seen in the action's SQL report page.

-   %MachineName%\\%RunId%\\ClusterLogs\\%ActionId%
-   %MachineName%\\%RunId%\\EventLogs\\%ActionId%
-   %MachineName%\\%RunId%\\CustomResponse\\%ActionId%

## Logs collected for each area

The following event and logs are collected in the PcsLog zip file.

## Cluster area

Cluster logs for compute and storage clusters are collected. The following events from cluster and compute cluster are collected:

<list nobullets="1">
<li>
Microsoft-Windows-FailoverClustering-ClusBflt/Management
</li>
<li>
Microsoft-Windows-FailoverClustering-ClusBflt/Operational
</li>
<li>
Microsoft-Windows-FailoverClustering-Clusport/Operational
</li>
<li>
Microsoft-Windows-FailoverClustering-CsvFs/Operational
</li>
<li>
Microsoft-Windows-FailoverClustering-Manager/Admin
</li>
<li>
Microsoft-Windows-FailoverClustering-Manager/Diagnostic
</li>
<li>
Microsoft-Windows-FailoverClustering-Manager/Tracing
</li>
<li>
Microsoft-Windows-FailoverClustering-NetFt/Operational
</li>
<li>
Microsoft-Windows-FailoverClustering-WMIProvider/Admin
</li>
<li>
Microsoft-Windows-FailoverClustering/Diagnostic
</li>
<li>
Microsoft-Windows-FailoverClustering/DiagnosticVerbose
</li>
<li>
Microsoft-Windows-FailoverClustering/Operational
</li>
</ul>
## File server

The following events from storage cluster are collected:

<list nobullets="1">
<li>
Microsoft-Windows-SmbClient/Connectivity
</li>
<li>
Microsoft-Windows-SMBClient/Operational
</li>
<li>
Microsoft-Windows-SmbClient/Security
</li>
<li>
Microsoft-Windows-SMBDirect/Admin
</li>
<li>
Microsoft-Windows-SMBServer/Audit
</li>
<li>
Microsoft-Windows-SMBServer/Connectivity
</li>
<li>
Microsoft-Windows-SMBServer/Operational
</li>
<li>
Microsoft-Windows-SMBServer/Security
</li>
<li>
Microsoft-Windows-SMBWitnessClient/Admin
</li>
<li>
Microsoft-Windows-SMBWitnessClient/Informational
</li>
<li>
Microsoft-Windows-SMBWitnessServer/Admin
</li>
</ul>
## Hyper-V

Some Hyper-V channels are not enabled by default. There is an option to enable/disable them during PCS setup phase.

The following events from compute cluster are collected. The default mode for Analytic events is 'do not overwrite events', and the size of log file is changed to 1GB.

<list nobullets="1">
<li>
Microsoft-Windows-Hyper-V-Config-Analytic
</li>
<li>
Microsoft-Windows-Hyper-V-Config-Admin
</li>
<li>
Microsoft-Windows-Hyper-V-High-Availability-Admin
</li>
<li>
Microsoft-Windows-Hyper-V-High-Availability-Analytic
</li>
<li>
Microsoft-Windows-Hyper-V-Hypervisor-Admin
</li>
<li>
Microsoft-Windows-Hyper-V-Hypervisor-Analytic
</li>
<li>
Microsoft-Windows-Hyper-V-Hypervisor-Operational
</li>
<li>
Microsoft-Windows-Hyper-V-VMMS-Analytic
</li>
<li>
Microsoft-Windows-Hyper-V-VMMS-Admin
</li>
<li>
Microsoft-Windows-Hyper-V-Worker-Analytic
</li>
<li>
Microsoft-Windows-Hyper-V-Worker-Admin
</li>
<li>
Microsoft-Windows-Hyper-V-Worker-VDev-Analytic
</li>
<li>
Microsoft-Windows-Hyper-V-SynthStor-Admin
</li>
</ul>
## Storage

The following Storage Space events from compute or storage clusters are collected:

<list nobullets="1">
<li>
System
</li>
<li>
CoreTestShim-Operational
</li>
<li>
Microsoft-Windows-StorageSpaces-Driver-Operational
</li>
<li>
Microsoft-Windows-StorageSpaces-Driver-Diagnostic
</li>
<li>
Microsoft-Windows-Storage-Storport-Operational
</li>
</ul>
## Network

The following SDN events from compute cluster are collected:

<list nobullets="1">
<li>
System
</li>
<li>
Microsoft-Windows-Hyper-V-VmSwitch-Operational
</li>
</ul>
## Create VMs that use differencing disks

PCS by default uses the provided guest OS VHD to create VMs that have fixed disks by default. To create VMs that have differencing disks instead, set the UseDiffDisks value to true, as highlighted below:

**PrivateCloudSimulator.xml file:**

![PrivateCloudSimulator.xml file with UseDiffDisks highlighted](../images/pcs_privatecloudsimulator_xml_file.png)
## Define actions for PCS to run

You can define and schedule your own actions for PCS to perform. Below shows a typical action definition in the **PrivateCloudSimulator.xml** file.

-   The value highlighted in yellow is the test name. This is the same test name that shows up on the report.
-   The **Interval** field sets the frequency with which the action runs. Use the format *hh:mm:ss*. For example, the value 02:00:00 repeats the action every 2 hours.
-   The **StartUpNumber** field defines the number of instances of that action to initiate on each node of the compute cluster.

![PrivateCloudSimulator.xml file with actions defined](../images/pcs_privatecloudsimulator_xml_file_define_actions.png)
## FAQ

***Where are HLK Studio and PCS controller installed?***

They are installed on additional machines that are not part of the cluster nodes.

![overall pcs topology](../images/pcs_topology.png)

***Do we need to install the HLK Client on cluster nodes?***

You need to install HLK Client on cluster nodes and on the PCS controller as well.

***What additional configuration is needed to run firmware update action for disks?***

StorageNodeiskFirmwareRolloutAction depends on the following:

1.  XML File - FirmwareRolloutSettings.xml
2.  The firmware files
    -   XML File: Please create a file named **FirmwareRolloutSettings.xml** and copy it to <inline_code devlang="cmd">C:\\Program Files (x86)\\Windows Kits\\10\\Hardware Lab Kit\\Tests\\amd64\\PCS\\StorageBin</inline_code> on the HLK controller.

        The file should have the following format.

        ` <?xml version="1.0"?> <Data>   <Table Id="Settings">     <ParameterTypes>       <ParameterType Name="Manufacturer">String</ParameterType>       <ParameterType Name="Model">String</ParameterType>       <ParameterType Name="TargetFirmwareVersion">String</ParameterType>       <ParameterType Name="TargetFirmwarePath">String</ParameterType>       <ParameterType Name="server">String</ParameterType>     </ParameterTypes>     <Row>       <Parameter Name="Manufacturer">Manufacturer</Parameter>       <Parameter Name="Model">Model</Parameter>       <Parameter Name="TargetFirmwareVersion">Version1</Parameter>       <Parameter Name="TargetFirmwarePath">\\%HLKControllerName%\tests\amd64\PCS\StorageBin\V1.bin</Parameter>       <Parameter Name="BackupTargetFirmwareVersion">Version2</Parameter>       <Parameter Name="BackupTargetFirmwarePath">\\%HLKControllerName%\tests\amd64\PCS\StorageBin\V2.bin</Parameter>       <Parameter Name="server">ServerNameWillBeUpdatedByTestAutomatically</Parameter>     </Row>   </Table> </Data>`

    -   Copy the firmware files to a location/share on the HLK controller. This location should be accessible by the PCS controller and the cluster nodes.

        This location will be the **TargetFirmwarePath** in the XML above (e.g. \\\\%HLKControllerName%\\tests\\amd64\\PCS\\StorageBin)

***The small boot disk of cluster node has very little free space due to a large pagefile.***

By default, Windows sets the page file max size to the amount of system memory. It s located at C:\\pagefile.sys by default. Make sure your boot drive has enough free disk space on each cluster node. Otherwise, you should change the pagefile settings to reduce the size of it or move it to another drive.

You can run the following command to change the pagefile size. You'll need to then restart the machine.

Example: set the size to 10240MB

`reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagingFiles /t REG_MULTI_SZ /d "C:\pagefile.sys 10240 10240" /f`

***What is the PCS support alias?***

Please send email to <xref hlink="mailto://pvsha@microsoft.com">pvsha@microsoft.com</b> for any queries related to PCS or WSSD, AzureStack hardware certification.

## Troubleshooting Failures

The issues seen or resulting from a PCS certification run has been observed to not be related to PCS itself many times, as the PCS is a reliability test suite and touches a number of OS and third party components - HyperV, Clustering, Storage, Networking etc. to name a few.

The below are put together as a basic guide to help narrow down some of the issues:

-   Run cluster validation and check report for errors.
-   On the failover cluster manager, check whether all the nodes+vDisk+Pool are in healthy condition. If they are not, it is fine to invest time on checking the logs/debugging before calling upon MSFT.
-   Open Hyper-V manager and make sure the VMs and vSwitches get enumerated (also possible by running Get-VM or Get-VMSwitch).
-   Make sure you are able create a vSwitch outside of PCS tests on one/all of the compute nodes.
-   Make sure you can create a Win2012R2 VM on one/all of the nodes and can attach a vmNetworkAdapter it to a vSwitch.
-   Look for dump files generated due to bugchecks by running “dir /s \*.dmp” from the %systemdrive% on the compute nodes.
-   Possible usage of <xref hlink="https://technet.microsoft.com/en-us/sysinternals/livekd.aspx">LiveKD</b> to look at kernel modules/threads that are stuck, if you do not have kernel debugger attached.
-   Check if compute nodes’ license is active, as Eval version license get reset every 180 days.

## Appendix: Software Defined Datacenter (SDDC) Additional Qualifiers (AQs)

All server systems and components used in Windows Server 2016 WSSD offers must be certified for the Windows Server 2016 logo and meet the Windows Server 2016 Software-Defined Data Center (SDDC) additional qualifiers (AQs). The required HLK Feature names are listed in the table below.

<table>
<tr>
<th>
Component
</th>
<th>
Required HLK Features
</th>
<th>
Software-Defined Data Center (SDDC) Standard AQ
</th>
<th>
Software-Defined Data Center (SDDC) Premium and Azure Stack AQ
</th>
</tr>
<tr>
<td rowspan="13">
NIC
</td>
<td>
Device.Network.LAN.10GbOrGreater
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.VMQ
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.RSS
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.LargeSendOffload
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.ChecksumOffload
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.Base
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.VXLAN
</td>
<td>
![](../images/red_x.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.VMMQ
</td>
<td>
![](../images/red_x.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.MTUSize
</td>
<td>
Required if using Encap offloads
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.KRDMA
</td>
<td>
![](../images/red_x.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.GRE
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.DCB
</td>
<td>
Required if using RoCE RDMA
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Network.LAN.AzureStack
</td>
<td>
![](../images/red_x.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td rowspan="5">
SAS HBA
</td>
<td>
Device.Storage.Controller
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Controller.Flush
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Controller.PassThroughSupport
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Controller.Sas
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Controller.AzureStack
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td rowspan="2">
NVMe Storage Devices
</td>
<td>
Device.Storage.ControllerDrive.NVMe
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.AzureStack
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td rowspan="8">
HDD (SAS)
</td>
<td>
Device.Storage.Hd
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.DataVerification
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.Flush
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.PortAssociation
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.Sas
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.Scsi.ReliabilityCounters
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.AzureStack
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.FirmwareUpgrade
</td>
<td>
![](../images/red_x.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td rowspan="7">
HDD (SAS)
</td>
<td>
Device.Storage.Hd.Sata
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.DataVerification
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.Flush
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.PortAssociation
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.AzureStack
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.FirmwareUpgrade
</td>
<td>
![](../images/red_x.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td rowspan="6">
SSD (SAS)
</td>
<td>
Device.Storage.Hd
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.DataVerification
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.PortAssociation
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.Sas
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.AzureStack
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
Device.Storage.Hd.FirmwareUpgrade
</td>
<td>
![](../images/red_x.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td rowspan="5">
Server
</td>
<td>
System.Fundamentals.Firmware
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
System.Server.Virtualization
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
System.Server.AzureStack.Security
</td>
<td>
![](../images/green_check.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
System.Server.Assurance
</td>
<td>
![](../images/red_x.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
<tr>
<td>
System.Server.AzureStack.BMC
</td>
<td>
![](../images/red_x.png)
</td>
<td>
![](../images/green_check.png)
</td>
</tr>
</table>




