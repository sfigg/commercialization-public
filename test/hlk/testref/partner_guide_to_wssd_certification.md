---
title: Partner Guide to WSSD Certification
Description: Partner Guide to WSSD Certification
ms.assetid: ABAA7069-52C3-4188-9246-6504146459EC
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Partner Guide to WSSD Certification

<fm><nav_sidebar><outline></outline></nav_sidebar></fm>

## Introduction

Windows Server 2016 offers a range of competitive and differentiated capabilities to enable lower-cost, cloud scale Software-Defined Datacenter (SDDC) scenarios. The goal of the Windows Server Software-Defined (WSSD) program is to ensure that customers have a seamless deployment and steady-state operational experience on validated hardware. To that end, the WSSD program will provide guidance around four distinct technical stages:

-   <mark type="bullet_intro">Design</b>: Reference architecture for configuration selection, design principles, and best practices
-   <mark type="bullet_intro">Validate</b>: Additional SDDC tests to ensure components and systems meet WSSD requirements
-   <mark type="bullet_intro">Deploy</b>: Initial deployment guidance with experience guides and scripts for automation
-   <mark type="bullet_intro">Operate</b>: Experience guides for steady-state operational management using System Center Virtual Machine Manager (VMM) and System Center Operations Manager (OM)

This topic focuses on the guidance required to complete WSSD Certification as part of the <mark type="bullet_intro">Validate</b> stage above.

## Audience

This topic is for WSSD Solution Vendors and OEMs and is not intended to provide specific guidance for IHVs or those doing individual component-level certification (i.e. SDDC AQs).

## Overview of Windows Server software-defined offerings

WSSD provides three offerings:

-   <mark type="bullet_intro">Hyper-converged Infrastructure (HCI) Standard</b> - Combines compute and storage in the same cluster of server nodes to provide a highly-virtualized solution that’s easy to deploy, manage, and scale. This deployment option simplifies IT infrastructure since customers no longer need traditional IT silos of compute, shared storage (SAN/NAS), and networking. It’s best suited for small to mid-sized IT environment running virtualized (Hyper-V) workloads.
-   <mark type="bullet_intro">Converged Software-Defined Storage (SDS)</b> – Provides a lower cost, enterprise-grade, shared storage alternative to traditional SAN/NAS. Built using a cluster of server nodes, it’s easy to deploy, manage, and scale out to build storage capacity as customer’s needs grow over time. On one hand, its simplicity and low cost would appeal to small/mid-sized IT environments, it’s scale, flexibility, and cloud-scale traits would benefit large service providers and enterprise IT. Any workloads that are compatible with SMB storage are a good fit for this offer.
-   <mark type="bullet_intro">Hyper-converged Infrastructure (HCI) Premium</b> - Provides a comprehensive software-defined “datacenter in a box”. Building on the same foundation as HCI-Standard, these offers add Software-Defined Networking (SDN) and Assurance to the stack. These offerings provide the perfect building blocks for customers – typically a large enterprise, service provider or hoster – that want to build on premise SDDC that emulates large public clouds like Azure. While SDN provides the benefit to deploy, provision and manage networking services at scale, Assurance provides essential tenant isolation and services for running a secure on-premises multi-tenant cloud.

## Workflow steps for WSSD validation with PCS

<table>
<tr>
<th>
Step

</th>
<th>
Detail

</th>
<th>
Link

</th>
<th>
Location

</th>
<th>
Estimated time

</th>
<th>
Redeploy order\*

</th>
</tr>
<tr>
<td>
1

</td>
<td>
Ensure all components and systems have achieved Windows Server 2016 Logo Certification

</td>
<td>
<xref hlink="https://www.windowsservercatalog.com/results.aspx?bCatID=1283&amp;cpID=0&amp;avc=85&amp;ava=0&amp;avq=0&amp;OR=1&amp;PGS=25">Certified Hardware</b>

</td>
<td>
N/A

</td>
<td>
Varies

</td>
<td>
N/A

</td>
</tr>
<tr>
<td>
2

</td>
<td>
Ensure all components and systems have achieved Windows Server Software Defined Datacenter Additional Qualifications (SDDC AQ) for either Standard or Premium (depending on the selected topology)

</td>
<td>
-   HLK playlists for SDDC Standard and Premium AQs are published <xref hlink="http://aka.ms/hlkplaylist">here</b>
-   Component and System SDDC AQs are listed in the Windows Server Catalog <xref hlink="https://www.windowsservercatalog.com/">here</b>
-   <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn939963">Windows Hardware Lab Kit User's Guide</b>

>[!NOTE]
Microsoft will make updates to the HLK content and documentation available and needed. Those updates will be required for certification when released.


</td>
<td>
N/A

</td>
<td>
Varies

</td>
<td>
N/A

</td>
</tr>
<tr>
<td>
3

</td>
<td>
Choose WSSD topology

</td>
<td>
WSSD Reference Architecture – Section 1.1

</td>
<td>
N/A

</td>
<td>
N/A

</td>
<td>
1

</td>
</tr>
<tr>
<td>
4

</td>
<td>
Install Stamp

</td>
<td>
<xref hlink="https://docs.microsoft.com/en-us/windows-server/storage/storage-spaces/hyper-converged-solution-using-storage-spaces-direct">Hyperconverged deployment guide</b>

</td>
<td>
Target stamp

</td>
<td>
~3 hours

</td>
<td>
2

</td>
</tr>
<tr>
<td>
5

</td>
<td>
Deploy PCS infrastructure

</td>
<td>
<xref local="deploy">Deploy PCS</b> (in this topic)

</td>
<td>
</td>
<td>
</td>
<td>
N/A

</td>
</tr>
<tr>
<td>
<entity type="nbsp"></entity><entity type="nbsp"></entity>5a

</td>
<td>
Deploy Windows Hardware Lab Kit

</td>
<td>
<xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">HLK</b>

</td>
<td>
Standalone system, outside of stamp

</td>
<td>
1 hour

</td>
<td>
N/A

</td>
</tr>
<tr>
<td>
<entity type="nbsp"></entity><entity type="nbsp"></entity>5b

</td>
<td>
Install HLK Supplemental Package

</td>
<td>
In the **Supplemental Content for Windows HLK Private Cloud Simulator (PCS) Tests** section of the <xref hlink="https://developer.microsoft.com/en-us/windows/hardware/windows-hardware-lab-kit">HLK downloads</b> page, download PCSFiles.vhd, and follow the associated instructions to install

</td>
<td>
HLKController VM

</td>
<td>
15 minutes

</td>
<td>
N/A

</td>
</tr>
<tr>
<td>
<entity type="nbsp"></entity><entity type="nbsp"></entity>5c

</td>
<td>
Deploy HLK Client software

</td>
<td>
<xref local="deploy">HLKClientScript</b>

</td>
<td>
Stamp/Targets, PCSController VM

</td>
<td>
15-30 minutes

</td>
<td>
3 - Stamp/Targets

</td>
</tr>
<tr>
<td>
<entity type="nbsp"></entity><entity type="nbsp"></entity>5d

</td>
<td>
Download and install Windows Hardware Lab Kit (HLK) Supplemental Test Content

</td>
<td>
<xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn383615">HLK Supplemental Test Content</b>

</td>
<td>
HLKController VM

</td>
<td>
15 minutes

</td>
<td>
N/A

</td>
</tr>
<tr>
<td>
<entity type="nbsp"></entity><entity type="nbsp"></entity>6

</td>
<td>
Obtain and install the current version of the PCS playlist

</td>
<td>
<xref hlink="http://aka.ms/hlkplaylist">PCS Playlist</b>

</td>
<td>
</td>
<td>
</td>
<td>
N/A

</td>
</tr>
<tr>
<td>
7

</td>
<td>
Execute PCS Tests

</td>
<td>
</td>
<td>
HLKController VM

</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td>
<entity type="nbsp"></entity><entity type="nbsp"></entity>7a

</td>
<td>
Prepare cluster for PCS Tests by taking cluster resources offline

</td>
<td>
<xref local="execute">Offline</b>

</td>
<td>
Stamp/Targets

</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td>
<entity type="nbsp"></entity><entity type="nbsp"></entity>7b

</td>
<td>
Prepare clients for additional PCS tests

</td>
<td>
<xref local="execute">LoadGenWorkaround</b>

</td>
<td>
HLKController VM

</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td>
<entity type="nbsp"></entity><entity type="nbsp"></entity>7c

</td>
<td>
Validate Setup with HLK initial test

</td>
<td>
<xref local="lan10gb">LAN10Gb</b>

</td>
<td>
HLKController VM

</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td>
<entity type="nbsp"></entity><entity type="nbsp"></entity>7d

</td>
<td colspan="2">
Execute required PCS certification tests

| Test Name                                                          | Length   |
|--------------------------------------------------------------------|----------|
| S2D - Prepare Machines for Tests                                   | 1 hour   |
| S2D - Basic Verification Tests                                     | 2 hours  |
| S2D - Stress Tests                                                 | 1 hour   |
| PrivateCloudSimulator - System.Solutions.StorageSpacesDirect (Min) | 96 hours |
| PrivateCloudSimulator - System.Solutions.StorageSpacesDirect (Max) | 96 hours |

</td>
<td>
HLKController VM

</td>
<td>
</td>
<td>
</td>
</tr>
<tr>
<td>
8

</td>
<td>
Collect and submit results

</td>
<td>
<xref local="submissions">Submissions</b>

</td>
<td>
HLKController VM

</td>
<td>
15 minutes

</td>
<td>
6

</td>
</tr>
</table>
>[!NOTE]
\*Redeploy order specifies whether the stamp is to be redeployed along with the order of steps


## Overview of tests required for WSSD certification

All requirements are detailed in WSSD Reference Architecture Appendix.

-   Ensure all components and systems have achieved Windows Server 2016 Logo certification
-   Ensure all components and systems have achieved Windows Server Software Defined Datacenter Additional Qualifications (SDDC AQ) for either Standard or Premium (depending on the selected topology)
    1.  HLK playlists for SDDC Standard and Premium AQs are published on Connect:
        -   <xref hlink="https://connect.microsoft.com/site1304/Downloads">https://connect.microsoft.com/site1304/Downloads</b>
    2.  Component and System SDDC AQs are listed in the Windows Server Catalog:
        -   <xref hlink="https://www.windowsservercatalog.com">https://www.windowsservercatalog.com</b>

The assembled solution/offering must pass the following Windows Hardware Lab Kit / Private Cloud Simulator tests to achieve WSSD Certification:

| Test Name                                                          | Length   |
|--------------------------------------------------------------------|----------|
| S2D - Prepare Machines for Tests                                   | 1 hour   |
| S2D – Basic Verification Tests                                     | 2 hours  |
| S2D – Stress Tests                                                 | 1 hour   |
| PrivateCloudSimulator – System.Solutions.StorageSpacesDirect (Min) | 96 hours |
| PrivateCloudSimulator – System.Solutions.StorageSpacesDirect (Max) | 96 hours |

More details are located here:

-   <xref hlink="https://msdn.microsoft.com/library/windows/hardware/mt219240">https://msdn.microsoft.com/library/windows/hardware/mt219240</b>

Many of the required tests can be selected by loading the appropriate playlist after obtaining the playlist from the Connect partner site. It is recommended to use the playlist after completing the <mark type="bullet_intro">S2D – Prepare Machines for Tests</b> test. Below is a sample of the <mark type="bullet_intro">SDDC\_Standard\_Playlist</b> after loading into the Windows Hardware Lab Kit Studio.

![](../images/wssd_sddc_standard_playlist.png)

## Choose WSSD topology

1.  Hyper-converged Infrastructure (HCI) Standard
2.  Hyper-converged Infrastructure (HCI) Premium
3.  Converged Software-Defined Storage (SDS)

## Deploy OS and associated software

-   Based on leveraging WSSD scripted process (itself based on MASD scripts)
-   Two options/approaches – Brownfield or Greenfield

## Brownfield

-   Presumes the existence of:
    -   Active Directory
    -   DNS
    -   System Center Virtual Machine Manager
        -   Requires pre-existing logical switch and uplink port profile (used in deployment script as parameters)
    -   System Center Operations Manager
-   Deploys:
    -   WDS
    -   DHCP
    -   Windows Server Essentials
    -   IIS

## Greenfield

-   No presumption of pre-existing infrastructure/services

## Deploy and configure HLK infrastructure with PCS

-   HLKController
    -   Deploy Windows Hardware Lab Kit as per <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn915002">these instructions</b>.
    -   Install HLK Supplemental Package.
    -   Deploy client software as per instructions here.
        -   To aid in deploying the client across several nodes in a large stamp, leverage the following sample script: <snippet devlang="psh" type="syntax">\# Script to install the HLK Client on target systems \# Array of servers to target for installation $Servers = @( "3171R16-18", "3171R16-20", "3171R16-22", "3171R16-24", "3171R16-26", "3171R16-28", "3171R16-30") \# Definition of user credentials to be used in the installation $AdminUser = "Contoso\\administrator" $Password = "&lt;PASSWORDHERE&gt;" $securePassword = $Password | ConvertTo-SecureString -AsPlainText -Force $domainCred = New-Object System.Management.Automation.PSCredential -ArgumentList $AdminUser, $securePassword \# These two sections are required to set the CredSSP Client status on local system and CredSSP Server role on specified target systems \# These are required to work around the 'double-hop' issue foreach ($Server in $Servers) { Enable-WSManCredSSP Client -DelegateComputer $Server -Force} foreach ($Server in $Servers) { Invoke-Command -Computername $Server -ScriptBlock {Enable-WSManCredSSP -role server -Force}} \# This command initiates the HLK Client installation on named servers in the defined array above \# Edit the Source Path as per your installation “\\\\hlk1-3\\” foreach ($Server in $Servers) { Invoke-Command -Computername $Server -ScriptBlock { & "\\\\hlk1-3\\HLKInstall\\Client\\Setup.cmd" /qn ICFAGREE=Yes } -Authentication Credssp -Credential $domainCred } \# This command initiates the HLKSupplemental Client package copy and intall foreach ($Server in $Servers) { Copy-item -path C:\\HlkSupplementalPackage -destination "\\\\$server\\C$" -recurse -force } foreach ($Server in $Servers) { Invoke-Command -Computername $Server -ScriptBlock { & "C:\\HlkSupplementalPackage\\UpdateHlkClient.ps1" } -Authentication Credssp -Credential $domainCred } foreach ($Server in $Servers) { Restart-Computer -ComputerName $server }</code>
    -   Download and install Windows Hardware Certification Kit (HCK) Supplemental Test Content as per <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn383615">these instructions</b>
    -   Download and install the current version of the PCS playlist from the following location:
        -   <xref hlink="https://aka.ms/hlkplaylist">https://aka.ms/hlkplaylist</b>

## Execute tests

Use these links for additional reference:

-   <xref hlink="https://connect.microsoft.com/site1304/Downloads/DownloadDetails.aspx?DownloadID=63248">Primary Validation Guide</b>
-   <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn942347">Additional high-level overview</b>

The additional steps below supplement this content.

Prior to scheduling or running any tests in the HLK, complete the following steps:

-   Connect to the target cluster, and take the following resources offline in this order:
    -   All online roles (SOFS, etc.)
    -   All Volumes
    -   All Pools
-   Follow the steps documented <xref hlink>here</b> for the LoadGen SC LMS Workaround. Changes to the original process are ***bolded and italicized*** below.

## Run Hardware Lab Kit - Prepare client for submission job on every machine in the machine pool

1.  Open HLK Manager
2.  On the **Explorers** menu, click **Job Explorer**.
3.  In **Job Explorer**, press CTRL+Q to open the query pane, and search for jobs where **Name Equals Windows Logo Kit- Prepare client for submission**.
4.  In the **Results** pane, note the **Job ID** for the matching job.
    >[!NOTE]
    The Job ID will be 1416.
    
5.  ***Right-click on the job in the Jobs panel, and select Edit***

    ![](../images/wssd_jobs_window_edit.png)

6.  ***In the Job window, select the Tasks tab***

    ![](../images/wssd_jobs_window_tasks.png)

7.  ***Select the Task Set CrashDump to Kernel CrashDump and click Edit...***

    ![](../images/wssd_jobs_window_set_crashdump.png)

8.  ***In the Edit Task Details window, change the Command line on the Execute tab from 0002 to 0007***

    ![](../images/wssd_jobs_window_edit_task_details.png)

    ![](../images/wssd_jobs_window_edit_task_details_2.png)

9.  ***Click OK***
10. ***At the top of the Job window, click Save Job***

    ![](../images/wssd_jobs_window_save_job.png)

11. On the **Explorers** menu, click **Job Monitor**.
12. In **Job Monitor**, navigate to the machine pool that contains the SUT, MC, and SCs that will be used, and highlight all target machines. Make sure to select all stress clients.
13. Right-click the machine selection and click **Schedule by Job ID**.
14. In the prompt area, enter the **Job ID** from step 4, and then click **OK**.
15. In the **Schedule Jobs** window, in the **Local Parameters** pane, set the **WdkSubmissionId** parameter equal to **Client Prepared**.
16. In the toolbar, click **Create Schedule**.
17. Wait for the job to run and all of the selected machines to return to the **Ready state**.

After scheduling and executing the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/dn974493">LoadGen SC LMS Workaround</b> (jobs 1416 and 1418), proceed with an initial test run of <mark type="bullet_intro">PrivateCloudSimulator – Device.Network.LAN.10GbOrGreater</b> (Device.Network.LAN.10GbOrGreater.CloudStress). This test will help ensure your environment is setup and configured properly.

Next, proceed with additional tests as per the required playlist for the chosen certification path.

![](../images/wssd_additional_tests.png)
## Log submission and certification

After completion of a test, right-click the test, and select **Create Partial Package of Highlighted Tests** and submit results via the <xref hlink="https://msdn.microsoft.com/library/windows/hardware/mt786453">Sysdev dashboard</b>.



