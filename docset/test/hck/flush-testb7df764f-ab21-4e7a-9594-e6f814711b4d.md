---
author: joshbax-msft
title: Flush Test
description: Flush Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d6481e37-1e2d-4dc5-8154-d593d451a169
---

# Flush Test


This test leverages SNMP-controlled, programmable power strips to validate that the driver, controller, and underlying device honor the appropriate flush command by persisting data to the device.

It includes the following steps:

-   Write a known pattern directly to disk (by-passing the file system) and wait for writes to complete.

-   Send Flush command and wait for completion.

-   Immediately trigger sudden power loss.

-   On reboot, read back and verify that all data that was written to disk before the flush command.

-   Repeat cycle with a different write scenario (different size, pattern, location, etc.).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Flush.BasicFunction Device.Storage.ControllerDrive.NVMe.BasicFunction Device.Storage.Hd.Flush.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~480 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements for the type of storage controller that you are testing. See [Storage Adapter or Controller Testing Overview](storage-adapter-or-controller-testing-overview.md) for more information.

-   Flush test should be run on the non-boot Controller. Running on the boot controller (with a non-boot drive attached) gives unexpected results because of dirty shutdown of machine. In the case of certifying SAS controllers, we highly recommend installing OS and HCK client on SATA boot controller and attaching a non-boot SAS controller to run Flush test.

-   Setup required for the test: Connect a SNMP controlled programmable power strip to HCK test machine.

-   Power strip should have a valid IP address associated as the test uses both the IP address and the port to initiate sudden power loss.

-   Power strip can be connected locally/remotely to machine, please see power strip manual for configuration details.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

### Power-strip

Test communicates with power-strip using SNMP and power-strip needs to have a valid IP address and port number. Information on configuring power-strip is outside the scope of this document, please refer power-strip manual. In brief, get a static IP for power strip, login to power strip using tool like putty, follow instructions on the menu to set IP address, Default gateway and subnet mask.

### Sudden Power Loss and BIOS setting

Test runs about 21 scenarios initiating sudden power loss each time. When power-strip port is programmed for power off and delayed power on, systems may not power ON automatically as this is a BIOS setting and is usually available on desktop machines. Example: On HP Compaq DC7800 machine, In BIOS under Advanced-&gt;Power-On Options, there is a field called "After Power Loss", set it to ON.

For uninterrupted and automated way of running flush test, set the BIOS setting to power ON machine automatically when power is plugged in.

### Para-Virtualization Storage Drivers and SVVP Certification

When certifying devices in a virtual environment, HCK intentionally doesn’t consider virtual scenarios to ensure virtualization products work as closely as possible to the physical products. But, we do provide a workaround to execute Flush test in such cases. The test logs information before initiating dirty shutdown. Initiate the same manually by timing it when the log appears on the screen for all scenarios which run as part of Flush test.

Sample Log file example:

``` syntax
<SNIP>Message 4/23/2013 1:39:21.081 AM S5: Starting Random Write Scenario of 268435456 bytes (256MB). Message 4/23/2013 1:41:02.081 AM S0: Completed Sequential Write Scenario of 268435456 bytes (256MB) Message 4/23/2013 1:41:04.081 AM S5: Completed Random Write Scenario of 268435456 bytes (256MB) Message 4/23/2013 1:41:04.081 AM S4: Completed Striding Write Scenario of 268435456 bytes (256MB) Message 4/23/2013 1:41:04.081 AM S2: Completed Random Write Scenario of 268435456 bytes (256MB) Message 4/23/2013 1:41:04.081 AM S1: Completed Striding Write Scenario of 268435456 bytes (256MB) Message 4/23/2013 1:41:04.081 AM S3: Completed Sequential Write Scenario of 268435456 bytes (256MB) Message 4/23/2013 1:41:03.972 AM Flush Write Cache Message 4/23/2013 1:41:03.972 AM Flush Write Cache Complete Message 4/23/2013 1:41:03.972 AM Flush file system buffers and trigger sudden power loss<SNIP>Sudden Reboot triggered (At this time, manually trigger dirty shutdown within 2 seconds.) 
```

### Battery/Non-battery powered systems

Flush runs only on non-battery powered systems. If you are using a desktop machine, flush is applicable. If you are using a laptop machine (we assume battery is plugged in), flush is not applicable. Below are the options available for certifying devices against systems.

-   Certifying devices on desktop machines

    -   See options for BIOS power setting above

-   Certifying devices on laptop machines

    -   Select a laptop which has a BIOS power setting, remove battery and follow steps for running tests

    -   Or, Put laptop motherboard in a desktop casing (i.e., just like a desktop machine) and follow steps for running tests

![flush test setup diagram](images/hck-w8-storage-flush-test-setup-diagram.png)

## More information


These scenarios send a flush command to the device as soon as all outstanding I/O complete for a given scenario. Power loss occurs immediately after the flush command completes. If any data from the scenario did not persist to disk, the test will fail. The logo test will run each of these 21 scenarios.

1.  Flush and Reboot after 512MB of Syncronous Sequential Writes

    -   Small writes (512B – 4KB)

    -   Large writes (768KB – 1MB)

    -   Pseudorandom-sized writes (512B – 1MB)

2.  Flush and Reboot after 512MB of Syncronous Random Writes

    -   Small writes (512B – 4KB)

    -   Large writes (768KB – 1MB)

    -   Pseudorandom-sized writes (512B – 1MB)

3.  Flush and Reboot after 512MB of Syncronous Striding Writes

    -   Small writes (512B – 4KB)

    -   Large writes (768KB – 1MB)

    -   Pseudorandom-sized writes (512B – 1MB)

4.  Flush and Reboot after 1GB of Asyncronous Sequential Writes via 4 threads

    -   Small writes (512B – 4KB)

    -   Large writes (768KB – 1MB)

    -   Pseudorandom-sized writes (512B – 1MB)

5.  Flush and Reboot after 1GB of Asyncronous Random Writes via 4 threads

    -   Small writes (512B – 4KB)

    -   Large writes (768KB – 1MB)

    -   Pseudorandom-sized writes (512B – 1MB)

6.  Flush and Reboot after 1GB of Asyncronous Striding Writes via 4 threads

    -   Small writes (512B – 4KB)

    -   Large writes (768KB – 1MB)

    -   Pseudorandom-sized writes (512B – 1MB)

7.  Flush and Reboot after 1.5GB of Asyncronous Random, Sequential, and Striding Writes via 6 threads

    -   Small writes (512B – 4KB)

    -   Large writes (768KB – 1MB)

    -   Pseudorandom-sized writes (512B – 1MB)

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
<td><p>SNMP_IP_ADDRESS</p></td>
<td><p>The IP address of APC Remote PDU.</p></td>
</tr>
<tr class="even">
<td><p>SNMP_PORT</p></td>
<td><p>The port of the APC Remote DPU outlet.</p></td>
</tr>
<tr class="odd">
<td><p>SNMP_COMMUNITY</p></td>
<td><p>The SNMP community name of the APC Remote PDU.</p>
<p>Default value: private</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>/d</p></td>
<td><p>The device to test. Example: /Device &lt;physical device path&gt;</p></td>
</tr>
<tr class="even">
<td><p>/l</p></td>
<td><p>Log name to output. '.wtl' is appended automatically. By default, log name is 'storio'. Example: /l storio_flush_001</p></td>
</tr>
<tr class="odd">
<td><p>/p</p></td>
<td><p>The power manager to use. Example: /p SuddenReboot</p></td>
</tr>
<tr class="even">
<td><p>/seed</p></td>
<td><p>Seed for reproducing the same scenarios. Example: /seed 1234</p></td>
</tr>
<tr class="odd">
<td><p>/v</p></td>
<td><p>The level of logging verbosity. Larger values cause more verbose output. Example: /Verbosity 4</p></td>
</tr>
<tr class="even">
<td><p>/sync</p></td>
<td><p>Force scenarios to execute syncronousely. By default, each scenario runs asynchronously (in a separate thread)</p></td>
</tr>
<tr class="odd">
<td><p>/flush</p></td>
<td><p>Send flush after all I/O completes to force data to persist to disk.</p></td>
</tr>
<tr class="even">
<td><p>/test</p></td>
<td><p>1 or more scenarios to run. Each scenario runs in its own thread. Example: /test sw,sw,sw,xr. Runs 3 threads of sequential writes and one thread of random writes.</p></td>
</tr>
<tr class="odd">
<td><p>/validate</p></td>
<td><p>1 or more scenarios to validate. Scenarios are validated synchronously. Example: /validate sw,sw,sw,xr. Validates 3 sequential write scenarios and a random write scenario.</p></td>
</tr>
<tr class="even">
<td><p>/totalsize</p></td>
<td><p>Total amount of I/O to do (per scenario). Default=256MB. Example: /totalsize 256MB. May also specify size per scenario thread: /totalsize 256MB,128MB,1GB,1GB</p></td>
</tr>
<tr class="odd">
<td><p>/iomin</p></td>
<td><p>Minimum size of each I/O to do. Default=4KB. Example: /iomin 32KB</p></td>
</tr>
<tr class="even">
<td><p>/iomax</p></td>
<td><p>Maximum size of each I/O to do. Default=1MB. Example: /ioman 256KB</p></td>
</tr>
<tr class="odd">
<td><p>/queuedepth</p></td>
<td><p>Number of overlapping I/O for a scenario thread. Default=0. Example: / queuedepth 16. May also specifiy queue depth per scenario thread: /queuedepth 1,4,16,32.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type `/h`

 

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
<td><p>storio.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Flush%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




