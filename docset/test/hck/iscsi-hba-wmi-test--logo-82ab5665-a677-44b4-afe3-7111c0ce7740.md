---
author: joshbax-msft
title: iSCSI HBA WMI Test (LOGO)
description: iSCSI HBA WMI Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 09f73eb4-1b5a-4042-b438-a36baf8c4857
---

# iSCSI HBA WMI Test (LOGO)


This test verifies that an iSCSI host-bus adapter (HBA) driver implements the required Microsoft® Windows™ Management Instrumentation (WMI) interfaces. To qualify for the Windows Hardware Certification, iSCSI HBA drivers must support the WMI classes that are documented in the iSCSI Driver Development Kit (DDK) version 1.0.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Iscsi.Interface</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [iSCSI HBA Testing Prerequisites](iscsi-hba-testing-prerequisites.md).

If this is the first time you are running an iSCSI HBA test, iSCSI Target test, or MPIO test over iSCSI bus type on the HCK client, or if there is no iscsihctconfig.ini under \[HCK Path\]\\JobsWorkingDir\\ on the HCK client, you will receive a pop-up dialog box to input iSCSI configuration information and/or HBA information. For more information about this dialog box, see “Running the test” in [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

In addition:

1.  Look at the job results log file for test failures.

2.  Enter the required data in the configuration dialog box that appears when this job is scheduled. For more information, go to [iSCSI HBA Boot Test (LOGO)](iscsi-hba-boot-test--logo-ca7ad4d0-6950-4e2d-bdfe-b80c7873ba90.md).

This test always return Pass or Fail. To review test details, review the test log from the Windows HCK Manager.

## More information


The test enumerates all WMI classes that the HBA driver that you are testing exposes. The test verifies that there is an instance of each required class and logs a failure if a class is missing. In addition, for each class that is implemented, the test verifies the data items in the class contain valid values.

The required iSCSI initiator WMI classes include the following:

-   MSiSCSI\_HBAInformation

-   MSiSCSI\_InitiatorSessionInfo

-   MSiSCSI\_PersistentLogins

-   MSiSCSI\_TargetMappings

-   MSiSCSI\_LUNMappingInformation

-   MSiSCSI\_HBASessionConfig

-   MSiSCSI\_PortalInfoClass

-   MSiSCSI\_TCPIPConfig

-   MSiSCSI\_NICConfig

-   MSiSCSI\_BootConfiguration

-   MSiSCSI\_SecurityCapabilities

-   MSiSCSI\_DiscoveryConfig

-   MSiSCSI\_RADIUSConfig

-   MSiSCSI\_ConnectionStatistics

-   MSiSCSI\_SessionStatistics

-   MSiSCSI\_InitiatorLoginStatistics

-   MSiSCSI\_InitiatorInstanceStatistics

-   MSiSCSI\_MMIPSECStats

-   MSiSCSI\_QMIPSECStats

-   MSiSCSI\_NICPerformance

To run this test:

1.  Run the test as a Driver Test Manager (DTM) job.

2.  Enter the required data in the configuration dialog box that appears when this job is scheduled.

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>iscsiwmi.cmd</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>iscsiwmi.cmd</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\iscsi\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20iSCSI%20HBA%20WMI%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




