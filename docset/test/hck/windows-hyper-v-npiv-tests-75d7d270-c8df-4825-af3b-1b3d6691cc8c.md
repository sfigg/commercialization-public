---
author: joshbax-msft
title: Windows Hyper-V NPIV tests
description: Windows Hyper-V NPIV tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f264be29-c159-4c55-b0d9-845883691a12
---

# Windows Hyper-V NPIV tests


## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Fc.Npiv.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~60 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Hardware-based Raid Systems (Fibre Channel, SAS, SCSI, Serial ATA) Testing Prerequisites](hardware-based-raid-systems--fibre-channel-sas-scsi-serial-ata--testing-prerequisites.md).

## <a href="" id="manual"></a>Manual test cases


This section includes information about how to setup and run manual tests. Please submit the results of manual testing using the following tabular format along with your packaged submission.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Manual test</th>
<th>Test result (pass/fail)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>WWPN Conflict</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>LUN Mapping and Provisioning</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Cluster Migration - Live</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Cluster Migration - Quick</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

### Hardware prerequisites for manual test cases

-   Two servers that are running Windows Server 2012 or v6.3 X64. Each server should have the Fibre Channel HBA or Fibre Channel over Ethernet adapter under test installed.

-   At least one port on each adapter connected to a switch with NPIV enabled. Both servers should be connected to the same fabric.

-   Windows Server 2012 certified storage target, connected to same fabric.

### Common setup steps for manual test cases

1.  Create one Virtual SAN per fibre channel fabric by using Hyper-V Manager or the Windows PowerShell **-VMSan** commandlet.

2.  Assign all physical ports that are connected to that fabric to the same Virtual SAN.

3.  Make sure that all servers have the same Virtual SANs that are created by using the same name.

4.  Set up a Virtual Machine that is running Windows Server 2008 R2 or later version of the Windows Server operating system on each physical server.

### Required manual test cases

**WWPN Conflict**

1.  On two different servers, add a Virtual Fibre Channel adapter to each VM. Use the same values for the WWPN.

2.  Start the VM on one server and confirm that no errors are received.

3.  Start the VM on the second server (by using the same Virtual WWPN) and verify that VM startup fails. The failure of VM startup on the second server indicates a success.

**LUN Mapping and Provisioning**

1.  Make sure that the VM has at least one Virtual Fibre Channel adapter that is assigned by using unique WWPNs.

2.  Create a zone on the fabric that includes the following:

    -   The VM’s WWPNs “A” and “B”

    -   The target’s WWPNs

3.  Create a LUN and masking set on the target containing:

    -   The VM’s WWPNs “A” and “B”

4.  In the VM, perform a bus rescan and make sure that the newly assigned LUN is present in Disk Manager (or use the Windows PowerrrShell **Get-Disk** commandlet).

5.  Initialize, partition, and format the LUN.

6.  Make sure that files can be correctly written to and read from the LUN. Successful reading of files from the LUN and writing of files to the LUN indicates test pass success.

**Cluster Migration – Live**

1.  Create a cluster by using the two servers that were prepared in the previous manual test cases.

2.  Create a VM by using the Failover Clustering manager UI.

3.  Add a Virtual Fibre Channel Adapter to the VM.

4.  Make sure that Cluster Validation passes after the VM has been created. Correct any errors before proceeding.

5.  Start the VM.

6.  Provision a LUN to the VM and make sure that it is accessible (as in the Lun Mapping and Provisioning test case).

7.  In the Failover Cluster Manager UI, on the **Virtual Machine** role, select **Move** and then select **Live Migration -&gt; Select Node**. Select the other node in the cluster.

8.  Confirm that Live Migration succeeds.

9.  In the VM, confirm that files can be written to and read from the LUN. Successful reading of files from the LUN and writing of files to the LUN indicates test pass success.

**Cluster Migration – Quick**

1.  Continue from the steps in the Cluster Migration – Live test case.

2.  In the Failover Cluster Manager UI, on the **Virtual Machine role**, select **Move** and then select **Quick Migration -&gt; Select Node**. Choose the other node in the cluster.

3.  Confirm that Quick Migration succeeds.

4.  In the VM, confirm that files can be written to and read from the LUN. Successful reading of files from the LUN and writing of files to the LUN indicates test pass success.

## <a href="" id="auto"></a>Automated tests


### Hardware prerequisites for automated cases

-   Server running Windows Server 2012 or v6.3 X64.

-   Fibre Channel HBA or Fibre Channel over Ethernet adapter under test.

-   At least one port on adapter connected to a switch with NPIV enabled.

### <a href="" id="list-of-automated-test-cases-in-windows-hck-job--windows-hyper-v-npiv-tests-"></a>List of automated test cases in Windows HCK job “Windows Hyper-V NPIV Tests”

-   NPIV\_API\_Tests.NpivApiTests.HbaStatusTest. If the port's link is down, verify that creating a VirtualPort fails.

-   NPIV\_API\_Tests.NpivApiTests.CreatePortTest. Verify that a Virtual Port can be created by using valid parameters.

-   NPIV\_API\_Tests.NpivApiTests.CreateInvalidPortWWNTest. Verify that a Virtual Port cannot be created by using an invalid WWPN.

-   NPIV\_API\_Tests.NpivApiTests.CreatePhysicalWWPNTest. Verify that a Virtual Port cannot be created that conflicts with the physical port's WWPN.

-   NPIV\_API\_Tests.NpivApiTests.CreateWWPNInUseTest. Verify that the same WWPN cannot be created twice.

-   NPIV\_API\_Tests.NpivApiTests.CreateAndRemovePortExTest. Verify that a virtual port can be created and then removed by using valid parameters.

-   NPIV\_API\_Tests.NpivApiTests.RemoveBadPortTest. Verify that a non-existent virtual port cannot be removed.

-   NPIV\_API\_Tests.NpivApiTests.CreateRemovePortLoopTest. Verify that a valid virtual port can be repeatedly created and removed.

-   NPIV\_API\_Tests.NpivApiTests.CreateMaxPortTest. Verify that the max number of virtual ports (according to MSFC\_FibrePortNPIVCapabilities) can be successfully created.

-   NPIV\_API\_Tests.NpivApiTests.RescanPortTest. Create a virtual port and confirm that rescans succeed. Try to rescan non-existent ports and check for failure.

-   NPIV\_API\_Tests.NpivApiTests.RescanStressTest. Tests overlapped rescan operations on a virtual port.

-   NPIV\_API\_Tests.NpivApiTests.ConcurrentSamePortCreationTest. Makes sure that the same virtual port cannot be simultaneously created from multiple WMI callers.

-   NPIV\_API\_Tests.NpivApiTests.ConcurrentPortCreationTest. Makes sure that multiple valid virtual ports can be simultaneously created from multiple WMI callers.

-   NPIV\_API\_Tests.NpivApiTests.ConcurrentPortRemovalTest. Makes sure that the same virtual port cannot be simultaneously removed from multiple WMI callers.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

 

 






