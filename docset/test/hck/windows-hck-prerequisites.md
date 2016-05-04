---
author: joshbax-msft
title: Windows HCK Prerequisites
description: Windows HCK Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 998a73de-b7de-4d42-bbdb-73de1d149a85
---

# Windows HCK Prerequisites


Before you begin testing, make sure that the test environment meets the necessary requirements. Windows HCK is comprised of two components: an HCK test server and one or more test computers.

-   **HCK Test server.** Often referred to as the *controller*, a test server has two parts: Windows HCK Controller and Windows HCK Studio. The Controller software is the engine that manages tests that are run on test computers. The Studio software is the management tool that lets you select and schedule tests against any test computer connected to the test server. Controller and Studio are installed from the Windows HCK installation source. Once established, the test server contains separate installers to inllstall a remote Windows HCK Studio and Windows HCK Client.

    One controller governs a collection of client computers. Controllers can manage and access only the client computers that they govern.

-   **Test computer.** Also referred to as a client computer, each one can have a different configuration that's appropriate for various testing scenarios, including different hardware, operating systems, service packs, and drivers. Each test computer can only be associated with one test server. You configure each test computer by running the Windows HCK Client software installer directly from a shared network location on the test server.

## Deployment scenarios


There are two deployment scenarios for Windows HCK:

-   **Domain-joined environment.** In a domain-joined environment, a domain controller is present and all computers designated for Windows HCK features are joined to the same domain controller. If you plan to deploy Windows HCK in a domain-joined environment, you need a minimum of three computers: a Windows domain controller, a Windows HCK test server, and one Windows HCK test computer. Make sure that Microsoft Active Directory® is configured and running on the domain controller. Your domain controller and HCK test server cannot be on the same box.

-   **Workgroup environment.** A workgroup environment has no domain controller. If you plan to deploy Windows HCK in a workgroup, you need at least two computers: a test server and a test computer joined to the same workgroup. **Don't** use the Default Administrator account. In this configuration, you must enable the Guest account.

In addition, consider how you want to organize lab resources to best use the Windows HCK. You need to determine the number of test servers and the number of test computers connecting to them. These decisions are partly influenced by the type of devices or systems that you want to certify.

To test systems and filter drivers, you need at least 1 test server and 1 test computer.

To test external devices, you need at least 1 test server, 1 test computer, and the external device(s) to be tested.

You can choose to allocate fewer controllers, each with multiple clients connected to them, if you want less overhead administering the controllers and clients. A maximum of 150 clients can be connected to a single controller. Alternately, you can allocate more controllers and connect fewer clients to them. This allows any given controller to be more responsive because it has fewer clients communicating with it. For more information, see [HCK Controller and Client Organization](hck-controller-and-client-organization.md).

The following image shows an example test environment.

![example hck test environment](images/hck-win8-test-environment.png)

## System Requirements


### Test server

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Component</th>
<th>Minimum</th>
<th>Optimum</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Processor</p></td>
<td><p>Single Intel or AMD-based x64 platform with a speed of 2.0 GHz</p></td>
<td><p>Multicore or multiple x64-based processors running in x64 mode with a speed of 2.0 GHz or faster</p></td>
</tr>
<tr class="even">
<td><p>System memory</p></td>
<td><p>2 GB main memory</p></td>
<td><p>4 GB main memory</p></td>
</tr>
<tr class="odd">
<td><p>Hard disk capacity</p></td>
<td><p>300 GB minimum to accommodate the volume of logs that can be generated.</p></td>
<td><p>RAID configuration</p></td>
</tr>
<tr class="even">
<td><p>Network connection</p></td>
<td><p>100 megabits per second (Mbps)</p></td>
<td><p>1 gigabit per second (Gbps)</p></td>
</tr>
<tr class="odd">
<td><p>Operating system</p></td>
<td><p>English language and English local version of Windows Server 2008 R2 64-bit with service pack (SP1) or Windows Server® 2012. For information, see the [Windows Server](http://go.microsoft.com/fwlink/?LinkId=236055) website.</p>
<div class="alert">
<strong>Note</strong>  
<p>Controller isn't supported on Windows Server 2003, Windows Server 2008, Windows Vista, Windows XP, or Windows 2000.</p>
<p>Controller isn't supported on an installation that has already been set up as a domain controller.</p>
<p>Controller isn't supported in a virtual PC or any third-party Hypervisor environment.</p>
</div>
<div>
 
</div></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

### Test computer

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Component</th>
<th>Minimum</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Processor</p></td>
<td><p>The recommended processor for the operating system that you install.</p></td>
</tr>
<tr class="even">
<td><p>System memory</p></td>
<td><p>Refer to the recommended processor for the operating system that you install.</p></td>
</tr>
<tr class="odd">
<td><p>Hard disk capacity</p></td>
<td><p>300 GB minimum to accommodate the test files and logs that can be generated.</p>
<p>The client must be unique; you can't swap drives.</p></td>
</tr>
<tr class="even">
<td><p>Network connection</p></td>
<td><p>100 Mbps</p></td>
</tr>
<tr class="odd">
<td><p>Operating system</p></td>
<td><p>Install the Windows operating system that you are testing against.</p>
<p>Test computers are not supported in a virtual PC or any third-party Hypervisor environment.</p>
<p>If you are testing against a Windows “N” edition, you must also manually install Media Feature Pack.</p></td>
</tr>
<tr class="even">
<td><p>Additional requirements</p></td>
<td><p>Many of the tests require a test system to restart—often more than once—to complete a test run. So, we recommend that you:</p>
<ul>
<li><p>Configure test computers to boot from the regular boot sector of a hard drive and not from external devices, CDs, or DVD boot discs.</p></li>
</ul>
<p>For Workgroup environments, you must enable the guest account.</p>
<ol>
<li><p>On each computer, create a new user account and add it to the Administrator group.</p></li>
<li><p>On each computer, log on with the administrator account you just created and enable the Guest account.</p></li>
</ol>
<p>Testing may also require:</p>
<ul>
<li><p>HCK Filters.</p></li>
<li><p>Test-sign drivers.</p></li>
<li><p>Additional source code/Readme files that are requested at the end of package creation.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

### Optional remote/standalone Windows HCK Studio

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Component</th>
<th>Minimum</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Processor</p></td>
<td><p>The recommended processor for the operating system that you install.</p></td>
</tr>
<tr class="even">
<td><p>System memory</p></td>
<td><p>Refer to the recommended processor for the operating system that you install.</p></td>
</tr>
<tr class="odd">
<td><p>Hard disk capacity</p></td>
<td><p>300 GB minimum to accommodate the volume of logs that can be generated.</p>
<p>The client must be unique; you can't swap drives.</p></td>
</tr>
<tr class="even">
<td><p>Network connection</p></td>
<td><p>100 Mbps</p></td>
</tr>
<tr class="odd">
<td><p>Operating system</p></td>
<td><ul>
<li><p>Windows 8.1</p></li>
<li><p>Windows 8</p></li>
<li><p>Windows 7</p></li>
</ul>
<p>HCK Studio isn’t supported in a virtual PC or any third-party Hypervisor environment.</p></td>
</tr>
</tbody>
</table>

 

## Additional requirements


You might need to configure additional hardware for the device or system that you're testing. For more info, see the Prerequisites section for each feature that you're testing:

**Systems**

-   [System.Client Testing](systemclient-testing.md)

-   [System.Fundamentals Tests](systemfundamentals-tests.md)

-   [System.Server Testing](systemserver-testing.md)

**Devices**

-   [Device.Audio Testing](deviceaudio-testing.md)

-   [Device.BusController Testing](devicebuscontroller-testing.md)

-   [Device.Connectivity Tests](deviceconnectivity-tests.md)

-   [Device.Fundamentals Testing](devicefundamentals-testing.md)

-   [Device.Graphics Testing](devicegraphics-testing.md)

-   [Device.Imaging Testing](deviceimaging-testing.md)

-   [Device.Input Testing](deviceinput-testing.md)

-   [Device.Network Testing](devicenetwork-testing.md)

-   [Device.Media Testing](devicemedia-testing.md)

-   [Device.Portable Testing](deviceportable-testing.md)

-   [Device.Storage Testing](devicestorage-testing.md)

-   [Device.Streaming Testing](devicestreaming-testing.md)

**Filter Drivers**

-   [Filter.Driver Testing](filterdriver-testing.md)

 

 






