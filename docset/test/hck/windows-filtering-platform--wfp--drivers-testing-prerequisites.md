---
author: joshbax-msft
title: Windows Filtering Platform (WFP) Drivers Testing Prerequisites
description: Windows Filtering Platform (WFP) Drivers Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 663833ef-5591-4223-aeb2-c8df579b4a53
---

# Windows Filtering Platform (WFP) Drivers Testing Prerequisites


This topic describes the tasks that you must complete before you WFP drivers by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computers](#bkmk-configuration).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware requirements


The following hardware is required for network security software testing:

-   One test computer that meets the following requirements:

    -   Meets the Windows HCK prerequisites. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

    -   Has at least one network interface card that is connected. Ideally, the network interface card is on a private network with the Controller's network interface.

    -   Supports S1-S3 (Suspend) and S4 (Hibernate) power states.

    -   Is not joined to a domain.

**Note**  
To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. As long as the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that do not include a driver to test, such as hard disk drive tests, the Windows HCK scheduler constrains the tests that validate the device’s and driver’s Rebalance, D3 State and Multiple Processor Groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Test personnel must make sure that the first test computer in the list meets the minimum hardware requirements.

 

**Note**  
Except for para-virtualization drivers (as defined by Logo Program Requirement Policy-0020), you may not use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. All virtualization products do not support the underlying functionality that is required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

 

## <a href="" id="bkmk-softwarerequirements"></a>Software requirements


The following software is required to run the SoftwareDevice.FilterDriver.WindowsFilteringPlatform tests:

-   Network security software to test which utilizes WFP Callouts.

    **Warning**  
    Make sure that you install the product on the test computer before you install the Windows HCK Client.

     

The testing process involves three tests. One test verifies basic firewall capabilities, one test verifies that app containers are not unnecessarily blocked, and the last test validates interoperability with Transition Technologies (currently targeted at Teredo). As part of the test process, the following fields are copied to the test computer. You must add appropriate values for these tests as described in the [Test Computer Configuration](#bkmk-configuration) section.

**SoftwareDevice.FilterDriver.WindowsFilteringPlatform.WindowsFilteringPlatform\_Tests**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>File name</th>
<th>Origin or Removal</th>
<th>Location</th>
<th>Purpose</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Callout.Sys</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\Drivers\</p></td>
<td><p>This file is required for the callout functions that are used during the stream and injection tests.</p></td>
</tr>
<tr class="even">
<td><p>DrInstall.Exe</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is required to install the Sparta Miniport Driver.</p></td>
</tr>
<tr class="odd">
<td><p>NTLog.DLL</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is required to log output for the test environment.</p></td>
</tr>
<tr class="even">
<td><p>SpartaMini.Cat</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\Drivers\</p></td>
<td><p>This file is required to install the Sparta Miniport Driver.</p></td>
</tr>
<tr class="odd">
<td><p>SpartaMini.Inf</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job</p></td>
<td><p>%WinDir%\System32\Drivers\</p></td>
<td><p>This file is required to install the Sparta Miniport Driver.</p></td>
</tr>
<tr class="even">
<td><p>SpartaMini.Sys</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\Drivers\</p></td>
<td><p>This file is required to install the Sparta Miniport Driver.</p></td>
</tr>
<tr class="odd">
<td><p>WFPLogo.Answer</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is optional to partially automate the test process.</p></td>
</tr>
<tr class="even">
<td><p>WFPLogo.Exe</p></td>
<td><p>Copied as part of the Network Security Software tests' &quot;Basic Firewalls - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is required for the tests to run.</p></td>
</tr>
<tr class="odd">
<td><p>WFPLogo.Info</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is required to determine how best to run the tests for the Windows Filtering Platform.</p></td>
</tr>
<tr class="even">
<td><p>WFPLogo.NTLog</p></td>
<td><p>Created during test execution.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is created at runtime to log whether each test passes or fails.</p></td>
</tr>
<tr class="odd">
<td><p>WFPLogo.Trace</p></td>
<td><p>Created during test execution.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is created at runtime and is used to troubleshoot what WFP objects were added during the test run.</p></td>
</tr>
<tr class="even">
<td><p>WFPLogoSetup.JS</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Support &quot;WFP - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is used to install and configure the Sparta Miniport.</p></td>
</tr>
</tbody>
</table>

 

**SoftwareDevice.FilterDriver.WindowsFilteringPlatform.TransitionTechnologies\_Tests**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>File name</th>
<th>Origin or Removal</th>
<th>Location</th>
<th>Purpose</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>AutoSrv.Exe</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to run the tests that use the Sparta Miniport driver.</p></td>
</tr>
<tr class="even">
<td><p>AutoSrvC.DLL</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to run the tests that use the Sparta Miniport driver.</p></td>
</tr>
<tr class="odd">
<td><p>DevCon.Exe</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to install the Sparta Miniport driver.</p></td>
</tr>
<tr class="even">
<td><p>DrvInstall.Exe</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to install the Sparta Miniport driver.</p></td>
</tr>
<tr class="odd">
<td><p>InitAddress.VBS</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required by Teredo_WLK.wsf to run the test scenarios.</p></td>
</tr>
<tr class="even">
<td><p>InstallSpartaMini.Bat</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is used to install and uninstall the Sparta Miniport driver.</p></td>
</tr>
<tr class="odd">
<td><p>NetCapDrv6.Cat</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required by the Sparta Miniport driver to capture the network packets during the tests.</p></td>
</tr>
<tr class="even">
<td><p>NetCapDrv6.Inf</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required by the Sparta Miniport driver to capture the network packets during the tests.</p></td>
</tr>
<tr class="odd">
<td><p>NetCapDrv6.Sys</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required by the Sparta Miniport driver to capture the network packets during the tests.</p></td>
</tr>
<tr class="even">
<td><p>NetCapture.DLL</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required by the Sparta Miniport driver to capture the network packets during the tests.</p></td>
</tr>
<tr class="odd">
<td><p>NTLog.DLL</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to create output logs for the test environment.</p></td>
</tr>
<tr class="even">
<td><p>SpartaCM.DLL</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to install the Sparta Miniport driver.</p></td>
</tr>
<tr class="odd">
<td><p>SpartaExtensions.MSI</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to install the Sparta Miniport driver.</p></td>
</tr>
<tr class="even">
<td><p>SpartaMini.Cat</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to install the Sparta Miniport driver.</p></td>
</tr>
<tr class="odd">
<td><p>SpartaMini.Inf</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to install the Sparta Miniport driver.</p></td>
</tr>
<tr class="even">
<td><p>SpartaMini.Sys</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to install the Sparta Miniport driver.</p></td>
</tr>
<tr class="odd">
<td><p>TestCore.DLL</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta\</p></td>
<td><p>This file is required to run the tests.</p></td>
</tr>
<tr class="even">
<td><p>Common.VBS</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta_Test\Common</p></td>
<td><p>This file is required by Teredo_WLK.wsf to run the test scenarios.</p></td>
</tr>
<tr class="odd">
<td><p>DNS.VBS</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta_Test\DNS</p></td>
<td><p>This file is required by Teredo_WLK.wsf to run the test scenarios.</p></td>
</tr>
<tr class="even">
<td><p>Teredo_WLK.WSF</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job</p></td>
<td><p>%SystemDrive%\Sparta_Test\Tunnel\Teredo\</p></td>
<td><p>This script file is used to run the transition technologies tests. This file is required by the job, ” REQ - WFP-based products must support Teredo”</p></td>
</tr>
<tr class="odd">
<td><p>TeredoEmulator.VBS</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta_Test\Tunnel\Teredo\</p></td>
<td><p>This file is required by Teredo_WLK.wsf to run the test scenarios.</p></td>
</tr>
<tr class="even">
<td><p>TeredoPeer.VBS</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta_Test\Tunnel\Teredo\</p></td>
<td><p>This file is required by Teredo_WLK.wsf to run the test scenarios.</p></td>
</tr>
<tr class="odd">
<td><p>Tunnel.VBS</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.Scenarios.TransitionTechnologies.Support tests' &quot;Transition Technologies - Remove Binaries&quot; library job.</p></td>
<td><p>%SystemDrive%\Sparta_Test\Tunnel\</p></td>
<td><p>This file is required by Teredo_WLK.wsf to run the test scenarios.</p></td>
</tr>
</tbody>
</table>

 

## Feature Requirements


The following table maps filter features and requirements.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Feature</th>
<th>Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Applicable only for Firewalls</p></td>
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.FwpmFilters.MaintainOneTerminating Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.NetworkDiagnosticsFramework.HelperClass Filter.Driver.WindowsFilteringPlatform.Firewall.SupportMACAddressExceptions Filter.Driver.WindowsFilteringPlatform.Firewall.SupportMACFrameTypeExceptions Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions.IPAddressExceptions Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions.PortExceptions Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions.ProtocolExceptions Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions.ICMPExceptions Filter.Driver.WindowsFilteringPlatform.Firewall.SupportApplicationExceptions</p></td>
</tr>
<tr class="even">
<td><p>Applicable only if doing packet injection</p></td>
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.PacketInjection.NoDeadlocks</p></td>
</tr>
<tr class="odd">
<td><p>Applicable only if doing stream injection</p></td>
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.StreamInjection.NoStreamStarvation</p></td>
</tr>
<tr class="even">
<td><p>Applicable only if doing MAC layer filtering</p></td>
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportMobileBroadBand</p></td>
</tr>
<tr class="odd">
<td><p>Applicable only if doing filtering in the VSwitch</p></td>
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.InteropWithOtherExtensions Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.NoEgressModification Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.SupportLiveMigration Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.SupportRemoval Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.SupportReordering</p></td>
</tr>
</tbody>
</table>

 

**SoftwareDevice.FilterDriver.WindowsFilteringPlatform.AppContainers\_Tests**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>File name</strong></p></td>
<td><p><strong>Origin or Removal</strong></p></td>
<td><p><strong>Location</strong></p></td>
<td><p><strong>Purpose</strong></p></td>
</tr>
<tr class="even">
<td><p>DrInstall.Exe</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is required to install the Sparta Miniport Driver.</p></td>
</tr>
<tr class="odd">
<td><p>NTLog.DLL</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is required to log output for the test environment.</p></td>
</tr>
<tr class="even">
<td><p>SpartaMini.Cat</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\Drivers\</p></td>
<td><p>This file is required to install the Sparta Miniport Driver.</p></td>
</tr>
<tr class="odd">
<td><p>SpartaMini.Inf</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\Drivers\</p></td>
<td><p>This file is required to install the Sparta Miniport Driver.</p></td>
</tr>
<tr class="even">
<td><p>SpartaMini.Sys</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\Drivers\</p></td>
<td><p>This file is required to install the Sparta Miniport Driver.</p></td>
</tr>
<tr class="odd">
<td><p>HCK_NetISo_Tests.Exe</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is required to perform the tests.</p></td>
</tr>
<tr class="even">
<td><p>SpartaEchoSvc.Exe</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is required to answer TCP/IP traffic generated by the test.</p></td>
</tr>
<tr class="odd">
<td><p>SpartaEchoSvcInstall.JS</p></td>
<td><p>Copied as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Copy Binaries&quot; library job.</p>
<p>Removed as part of the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.Support &quot;AppContainers - Remove Binaries&quot; library job.</p></td>
<td><p>%WinDir%\System32\</p></td>
<td><p>This file is required to install the Sparta Echo Service.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-configuration"></a>Test computer configuration


To configure the test computer to test your WFP driver, follow these steps:

1.  Install the appropriate Windows operating system on the test computer, and then configure the computer for your test network (the network that contains the Windows HCK Studio and Windows HCK Controller.

2.  Install your WFP driver on the test computer.

3.  Install the Windows HCK client application on the test computer.

4.  Use Windows HCK Studio to create a computer pool, and then move the test computer to that pool.

**Important**  
You must set more configuration values for the individual WindowsFilteringPlatform tests before you can run the tests. See [AppContainers\_Tests](appcontainers-tests7bf87d0f-e328-4d69-855f-0a0efb469861.md) and [WindowsFilteringPlatform\_Tests](windowsfilteringplatform-testsa9a199cc-29b0-4805-9362-a2e7da39810c.md) for more information.

 

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set before it is run, a dialog box will be displayed for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When running tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

 

 






