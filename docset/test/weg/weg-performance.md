
# Performance – Windows 10 Engineering Guide

Microsoft Corporation

August, 2015

### Abstract

The Performance Windows Engineering Guidance (WEG) provides partners
with a roadmap to delivering high-performing and power-efficient PCs to
customers. This document identifies opportunities to measure, analyze,
and improve performance in key areas, including battery life, browsing
experience, and streaming media. OEM, ODM, and IHV partners can also
find guidance in this WEG on developing and selecting Windows Store apps
that run efficiently on your system, and links to related documentation.

Version: 1.1

### Copyright Information

This document is provided "as-is". Information and views expressed in
this document, including URL and other Internet website references, may
change without notice.

Some examples depicted herein are provided for illustration only and are
fictitious. No real association or connection is intended or should be
inferred.

This document does not provide you with any legal rights to any
intellectual property in any Microsoft product. You may copy and use
this document for your internal, reference purposes. You may modify this
document for your internal, reference purposes. This document is
confidential and proprietary to Microsoft. It is disclosed and can be
used only pursuant to a non-disclosure agreement.

© 2016 Microsoft. All rights reserved.

### Trademark Information

Microsoft and Windows are trademarks of the Microsoft group of
companies. For a complete list of Microsoft trademarks, see the
[Microsoft Trademarks
list](http://go.microsoft.com/fwlink/?LinkID=287088)
(http://www.microsoft.com/en-us/legal/intellectualproperty/Trademarks/EN-US.aspx)
online. All other trademarks are property of their respective owners.



# Introduction

As we look to the next generation of technology, customers continue to
expect high-performing and power-efficient PCs. Customers demand that
today's PCs provide the richness of a modern web experience, long
battery life, and a diverse portfolio of powerful software. More
customers expect new devices to provide the always-on and
always-connected experience that they have with their mobile phones and
that can only be enabled in a connected-standby PC.

The Performance Windows Engineering Guide (WEG) provides guidance on how
to deliver a great Windows experience on a high-performing PC. This
document identifies opportunities to measure, analyze, and improve
performance in key areas, including battery life, web browsing, and
streaming media. OEM, ODM, and IHV partners can also find guidance in
this WEG on developing and selecting Windows Store apps that run
efficiently on your systems.

This document provides tools and guidance to make full use of Windows
features for hardware, mechanical, firmware, software, and manufacturing
engineers and does not address business and marketing audiences. Topics
include how to optimize for performance while following manufacturing
best practices and while developing and deploying drivers, apps,
firmware, and hardware. This guidance applies to traditional x86-based
PCs as well as devices that offer connected standby. It applies to both
the consumer and commercial markets.

![Important](images/note-important.gif)**Important**&nbsp;&nbsp;&nbsp;The Performance WEG is not intended to communicate the Windows Hardware
Compatibility Requirements and OEM Policy Document (OPD). Both WHCR and
OPD take precedence to any information in the Performance WEG. You must
comply with the WHCR and OPD.

## Document updates

| Date updated | Description |
|--------------|------------------------------------------|
| April 2015   | Version 1.0 first release for Windows 10 |
| April 2015   | Version 1.1 added url text to links |


# Delivering a great experience with low memory

The amount of memory available will have a significant affect on the
overall user experience, ranging from overall responsiveness of the
system, responsiveness when switching between Windows Store style apps,
and battery life. These are all very important factors to consider when
evaluating the overall experience with low memory.
(Low memory is 1 GB of RAM on 32-bit Windows and 2 GB of RAM on 64-bit Windows.)

## Considerations

There are several things that an OEM, IHV, and ISV need to consider when
targeting a low memory device.

### Drivers and apps

#### Overall baseline memory footprint

The typical baseline 32-bit retail Windows image consumes approximately 400 MB in
terms of in-use memory post-boot (as measured using the Memory Footprint assessment in the ADK).
Allowing for 10% headroom or 100 MB on 1 GB, this leaves memory for 2-3 apps to be in physical memory,
enabling fast switching between the apps. The larger the base operating
system memory footprint, the lesser the memory available to the user and apps.

Key factors that impact baseline OS memory footprint are drivers and
pre-loaded software including antimalware apps, device desktop apps, and
software updaters to name a few.

-   **Driver footprint:** This includes driver code and
    associated allocations. Non-pageable memory (or contents that need
    to be in physical memory and cannot be paged out) is extremely
    important as it constitutes a fixed cost in terms of memory
    utilization throughout the lifetime of the system as most drivers
    exist in memory at all times. Current hardware certification
    requirements cover non-pageable allocations - MDL/Contiguous memory
    allocations, non-paged driver code, and non-paged pool on a per
    driver basis.

	[Device.DevFund.Memory.DriverFootprint](http://msdn.microsoft.com/en-us/library/windows/hardware/jj124553.aspx)


-   **Hardware Memory Reservation:** This includes memory ”carve-outs,”
    which reduces the amount of OS visible memory that is available to
    Windows and is extremely important in the context of low
    memory devices. Current hardware certification requirements provide
    budgets for different RAM configurations:

	[System.Fundamentals.Firmware.HardwareMemoryReservation](http://msdn.microsoft.com/en-us/library/windows/hardware/jj128256.aspx)


-   **Pre-loaded software and antimalware apps:** These include
    services/additional processes that start up during boot and remain
    active during the lifetime of a session. The set of pre-loaded
    software that introduces processes at startup need to be carefully
    considered and budgeted.

From an OS perspective, several improvements have been made to reduce
run-time memory footprint on Windows to make more memory available
for users and their apps. 
(For more information, see [Reducing runtime memory in Windows 8](https://blogs.msdn.microsoft.com/b8/2011/10/07/reducing-runtime-memory-in-windows-8/), a blog post on MSDN.) 
It is important to ensure that OEMs, IHVs, ISVs and Microsoft partner to improve the 
footprint in each of these areas and configure devices with careful consideration to 
deliver a great customer experience.

### Storage

#### Disk performance: 

In a low-memory configuration, Windows relies on paging and swapping of
content from memory and thus the performance of the underlying disk is
critical in delivering a smooth and responsive user experience. Hardware
certification requirements provide guidance on key performance metrics
for storage on Connected Standby devices. (For more information, see
[Device.Storage Requirements](https://msdn.microsoft.com/en-us/library/windows/hardware/jj134356.aspx) 
on MSDN.)

Windows has mechanisms to reduce memory usage of suspended Windows Store
apps and resume them via efficient sequential disk IO. (For more information, 
see [Reclaiming memory from Metro style apps](https://blogs.msdn.microsoft.com/b8/2012/04/17/reclaiming-memory-from-metro-style-apps/), 
a blog post on MSDN.) For example,
consider a 120-MB app that needs to be read from disk on resume - a disk
that delivers sequential read performance of 60 MB/s will take 2 seconds
for that app to be read back off the disk whereas a disk that delivers
120 MB/s will take only 1 second to bring its contents into memory. eMMC
and SSD storage provide sequential read rates of approximately 120-150MB/s, while
typical rotational disks have speeds of approximately 50 MB/s. Run-time policies in
Windows make trade-offs based on storage performance and slower disks
(e.g., HDD and HHDD) which will result in potentially slower app
switch/multitasking experience and increased app terminations.

#### Disk endurance

The endurance or lifetime of non-rotational storage like SSDs and eMMC
disks are proportional to the total volume of data written to the device
along with several other factors (workload, alignment of writes, etc.).
On a 1 GB device, there will be a larger volume of writes to storage
given the memory constraints, which is an important consideration when
selecting parts.

Endurance varies significantly based on manufacturers (block size
selection, types of flash memory, etc.); currently, there are no
standardized ways of measuring endurance. It is recommended that
partners evaluate disk endurance before making device selection
decisions.

## Recommended goals

Note: The following table provides goals for systems running 32-bit
Windows. The storage performance guidance is applicable to the boot
storage media and tested with the smaller of 2% or 1 GB of free disk
space.

<table>
<thead>
<tr class="header">
<th>Category</th>
<th>Metric</th>
<th>Goals</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<th rowspan="9">Baseline Memory Footprint</th>
<td colspan="2"><strong>System Level</strong></td>
<!--Empty cell in colspan-->
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;Driver Non Paged Code</p>
</td>
<td>&lt;20 MB</td>
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;Driver Non Paged allocations</p>
</td>
<td>&lt;30 MB</td>
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;Hardware Memory Reservation</p>
</td>
<td>&lt;130 MB</td>
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;Total Active Private Pages of Startup Apps, Services, Tasks</p>
</td>
<td>&lt; 40 MB</td>
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td colspan="2"><strong>Per Driver (Non-paged allocations)</strong></td>
<!--Empty cell in colspan-->
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>&nbsp;&nbsp;&nbsp;Driver Locked/Contiguous memory allocations</td>
<td>12 MB for all driver types</td>
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td>&nbsp;&nbsp;&nbsp;Non-paged allocations</td>
<td>
<p>&lt;=6 MB for GPU driver</p>
<p>&lt;=4 MB for other drivers</p>
</td>
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>&nbsp;&nbsp;&nbsp;Non-paged driver code</td>
<td>&lt;=10 MB for GPU drivers &lt;=1.66 MB for other drivers</td>
</tr>
<tr class="even">
<th>Startup apps memory footprint</th>
<td><strong>Startup applications, services, and tasks (including Antimalware)</strong></td>
<td>&lt; 40 MB</td>
</tr>
<tr class="odd">
<th rowspan="13">Disk Performance</th>
<td colspan="2"><strong>Random Performance</strong></td>
<!--Empty cell in colspan-->
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;4 KB Write IOPs, measured over a 1-GB area</p>
</td>
<td>&gt;= 200 IOPs</td>
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;4 KB Write IOPs, measured over a 10-GB area</p>
</td>
<td>&gt;= 50 IOPs</td>
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;64 KB Write IOPs, measured over a 1-GB area</p>
</td>
<td>&gt;= 25 IOPs</td>
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;4 KB Read IOPs, measured over a 10-GB area</p>
</td>
<td>&gt;= 2000 IOPs</td>
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;4 KB 2:1 read/write mix IOPs, measured over 1-GB area</p>
</td>
<td>&gt;= 500 IOPs</td>
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;4 KB 2:1 read/write mix IOPs, measured over a 10-GB area</p>
</td>
<td>&gt;= 140 IOPs</td>
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td colspan="2"><strong>Sequential Performance</strong></td>
<!--Empty cell in colspan-->
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;Write speed (64 KB I/Os), measured over a 10-GB area</p>
</td>
<td>&gt;= 40 MB/s</td>
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;Write speed (1 MB I/Os), measured over a 10-GB area</p>
</td>
<td>&gt;= 40 MB/s</td>
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;Read speed (64KB I/Os), measured over a 10-GB area</p>
</td>
<td>&gt;= 60 MB/s †(120 MB/s)</td>
</tr>
<tr class="even">
<!--Empty cell in rowspan-->
<td colspan="2"><strong>Device I/O Latency</strong></td>
<!--Empty cell in colspan-->
</tr>
<tr class="odd">
<!--Empty cell in rowspan-->
<td>
<p>&nbsp;&nbsp;&nbsp;Max Latency</p>
</td>
<td>&lt; 500 milliseconds</td>
</tr>
<tr class="even">
<th>Disk Endurance</th>
<td><strong>Lifetime</strong></td>
<td>&gt;=2-3 years</td>
</tr>
</tbody>
</table>

## Measuring memory using the Windows Assessment and Deployment Kit (ADK)

The memory footprint assessment in the ADK provides a quantitative
evaluation of baseline memory footprint for different configurations
compared to a retail OS image.

### Related resources

-   Guidance on running the Memory Footprint assessment and collecting
    data: [http://msdn.microsoft.com/en-us/library/windows/hardware/hh825365.aspx](http://msdn.microsoft.com/en-us/library/windows/hardware/hh825365.aspx)

-   Understanding the results: [http://msdn.microsoft.com/en-us/library/windows/hardware/jj130826.aspx#BKMK_Goals](http://msdn.microsoft.com/en-us/library/windows/hardware/jj130826.aspx#BKMK_Goals)

## Guidance

<!-- No content provided here in the original Word file. -->

### For OEM

OEMs have a significant influence over the choice of hardware/drivers
and pre-loaded software which directly impact the memory footprint of
the system.

-   Before you deploy, understand and quantify the impact of drivers and
    software you install on top of a clean image and ensure that they
    are within the recommended goals above:

<!-- -->

-   Driver footprint: This can be achieved by reducing the number of
    drivers or selecting hardware/drivers that have lower memory
    requirements

-   Pre-loaded software/Antivirus: Reducing the number of default
    ‘run-always’ startup processes (introduced by pre-loaded software)
    along with providing guidance to consumers on enabling specific
    applications or functionality if needed

<!-- -->

-   Consider using a different driver or software vendor that can supply
    you with equivalent functionality with lower impact on system memory

<!-- -->

-   Consult your driver and software vendors for the latest versions of
    their software to see if they can reduce the impact on memory

    -   Provide feedback to your partners on specific drivers or
        software that have higher than recommended memory usage along
        with traces/logs from the assessment toolkit

### For IHV/ISV

IHVs that can deliver memory efficient drivers enable OEMs to build 1 GB
systems that provide a great experience to consumers.

-   Ensure that hardware parts meet certification requirements above
    (particularly nonpageable footprint for drivers, performance for
    storage hardware, and memory usage of run-always apps
    for applications)

-   Be efficient with memory usage using a ‘pay for play’ model by
    enabling functionality only as and when needed

    -   Avoid configuring drivers to support features that are only
        needed for 1GB systems (for example, create platform- specific
        driver packages that detect hardware and load code specific
        to it)

    -   Minimize runtime cost - Allocate the minimum memory required
        when needed and free as soon as you are done (for example,
        buffers for supporting RAID storage are not required unless the
        user explicitly configures it)

-   Leverage tools to understand and improve memory footprint.

    -   The following talk describes the approach to reducing footprint
        along with available tools\
        Reducing the memory footprint of drivers and Apps:
        <http://channel9.msdn.com/events/BUILD/BUILD2011/HW-141T>

### For antimalware app ISV

Antimalware apps can significantly impact baseline the OS memory
footprint and user experience when not optimized for performance.

-   Ensure that the number and footprint of ‘run-always’
    services/processes are as minimal as possible. For example:

<!-- -->

-   Ideally only one process/service for real-time scanning

-   Other processes for updating antivirus definitions, showing UI for
    the user etc. should be created only when needed in response to user
    input or notifications and should exit after operations are complete

<!-- -->

-   Be efficient with memory usage for the ‘run-always’ process

    -   Maintain a data structure to represent signatures and only load
        specific portions on demand

    -   UI should not be launched unless explicitly requested by the
        user (for example, popups that open immediately after boot)

<!-- -->

-   Windows has provided a core set of Windows APIs and associated
    documentation to optimize for performance

    -   Optimize signature loading and maintenance via the use of
        compression
        <http://msdn.microsoft.com/en-us/library/ee915356(v=PROT.13).aspx>

    -   Maintain caches for previously scanned files to minimize work

    -   Use low CPU/Disk and Memory priorities for minimizing impact

        -   SetPriorityClass\
            <http://msdn.microsoft.com/en-us/library/ms686219.aspx>

        -   SetThreadPriority\
            <http://msdn.microsoft.com/en-us/library/ms686277.aspx>

-   Focus on idle memory footprint to ensure that memory footprint at
    idle is &lt; 15 MB as well as during full system scans and during
    real time scanning to reduce memory footprint as much as possible
    during those scenarios.

## Validation

In order to evaluate and validate memory usage by processes and drivers,
use the Memory Footprint assessment in the ADK. Once the assessment has
executed, open the report in the Windows Assessment Console tool (WAC)
and extract the relevant metrics using the following guidance.

### System level 

You can find system-wide memory metrics in the assessment report. The
following screenshot highlights **Total In-Use Memory**, **Driver
Non-Paged Code** and **Allocations** metrics.

![Memory footprint shown in the Windows Assessment Console.](images/weg-wac-memory-footprint-highlighted.png)

### Per driver

#### Non-Paged code

To obtain the specific non-paged code contribution of individual
drivers, expand the **Driver Non-Paged Code** metric.

![Memory usage by drivers in non-paged code shown in the Windows Assessment Console (WAC).](images/weg-wac-driver-non-paged-code.png)

#### Non-Paged allocations

To obtain the specific non-paged allocations of individual drivers,
expand the **Driver Non-Paged Allocations** metric and select **Group by
-&gt; (None)**.

![Non-paged allocations for drivers shown in the Windows Assessment Console (WAC).](images/weg-wac-driver-non-paged-allocations.png)

### <span id="_Toc375143139" class="anchor"><span id="_Toc375143455" class="anchor"><span id="_Toc375165809" class="anchor"><span id="_Toc426441280" class="anchor"></span></span></span></span>Per process

To obtain the amount of active private pages of individual processes
(applications, services, or tasks) on the system, expand the **Process
Private Pages** metric, and select the **Active** sub-metric.

In the following screenshot, Windows Defender (MsMpEng.exe process)
consumes 14.9 MB of memory through its private working set.

In order to validate that the 40MB target for startup applications, and
services and tasks are achieved, identify every process in this list
associated with preloaded software and calculate the sum.

![Active private pages of processes shown in the Windows Assessment Console (WAC).](images/weg-wac-process-private-pages-in-use.png)

# Delivering a great startup and shutdown experience

This section provides an overview of the fast startup experience and our
recommendations to partners to deliver the best on/off experience for
customers.

PCs are turned on and off many times a day. A PC might shut down, sleep,
or hibernate depending on usage patterns and the battery life capability
of the device. Boot is the first experience users have with their device
and is a recurrent experience for the lifetime of the device. Customer
telemetry tells us that users boot and shut down their PC at least once
a day. Connected standby capability reduces the frequency with which a
device must be booted, but booting might still be required for
software/firmware updates, low battery, and major configuration changes
to the device.

Starting with Windows 8.x, the speed of the on/off transition is
significantly faster than previous Windows versions. The user
interaction model used previously was to interrupt boot with key presses
to indicate alternate boot paths. With a much faster boot time, boot
interruptions are impractical and negatively affect the boot experience.
Historically, it was important to stop the boot process as early as
possible for decision points, such as booting to an alternative
operating system, because going backwards was a long and slow process.
It was also much easier with slow boot times to create periods of time
in which those key presses could be detected and activated. This is no
longer the case in Windows 8.x and Windows 10.

The default boot performance has improved dramatically by leveraging
hibernate technology. To understand the improvements made to the
performance of the on/off experience, see [Hibernate (S4) suspend
and resume](#hibernate-s4-suspend-and-resume), later in this topic. The considerations in this
section outline the user model for the fast on/off transitions, options
related to those transitions, and the components required by OEMs/ODMs
to deliver the experience.

## Considerations

The main source of boot delays is the OEM software preload. Fast startup
post on/off represents around 50% of the overall boot time and is
directly affected by first- and third-party processes started on boot.

-   Services might continue to resume

-   Startup apps: Tray-running shortcuts, OEM status indicators, and so on

-   Antivirus activity

All of the above consume system resources (CPU and disk) result in
bottlenecking on one, the other, or both. This can make the device
unresponsive, delay app launch times, or make them lag or sluggish.

Consider these things when optimizing on/off performance:

-   Determine what non-inbox 1^st^- or 3rd-party processes are loaded and running on your systems.

-   Determine what is started on boot through registry run keys.

	-   IHV hardware–related processes are mostly found here.

-   Avoid including managed code processes in the boot path.

-   Use techniques to delay start processes on boot.

-   Consider converting traditional desktop apps to Windows Store apps, as they don’t cause any impact on boot.

	-   Work with IHVs to leverage Windows Store device apps.

-   Understand memory consumption effect on/off transition times.

	-   Optimize memory consumption to reduce the size of the hiberfile.

	-   Use the new Hiberfile Diagnostics mode.

	-   We don’t recommend that you enable hybrid sleep on laptops and
		ultraportables because this generates a hiberfile on Standby
		suspend (S3).

-   Migrate updater processes to use AM to reduce the number of
    loaded processes.

-   Understand that disk throughput is critical to on/off performance.

	-   On average, Hiberfile read/write times represent 50% of the boot to
		Start screen time.

	-   Most systems are disk-bound on boot.

	-   A faster HDD/SSD can mitigate the effect of a significant software
		preload being loaded and initialized on boot.

	-   You should balance CPU, disk performance, and memory capacity.

-   Understand that hybrid drives are beneficial to on/off performance.

	-   Uses the new Hybrid Drive Hinting feature.

### Fast startup

Starting with Windows 8.x, the default shutdown and restart scenario was
updated and named as fast startup. Fast startup begins with the shutdown
process and includes writing data to disk in a way that’s similar to the
way hibernate works. A key difference is that all user sessions (Session 1) 
are logged off, and the remaining information is written to the
hiberfile. When booting the PC from this state, instead of going through
the full boot process where Windows, drivers, devices, and services are
initialized, Windows loads the previously initialized state by reading
from the hiberfile. This speeds up the process of getting to the lock or
Start screen.

The use of hibernate technology is expanded to create a new default
startup and shutdown experience that is much faster than a full boot.

![Diagram of the phases in fast startup and shutdown.](images/weg-diagram-fast-startup-boot-shutdown.png)

The faster startup and shutdown sequence uses the hibernate
infrastructure to place the PC in hibernate. Unlike a full shutdown and
boot, the user session is closed and then a hibernate is performed. As a
result, the hibernate file is much smaller, making the hibernate and
resume process much faster. This sequence also takes advantage of the
parallelization optimizations.

Developers creating drivers, or apps with a system service, and system
integrators should also be particularly careful of driver quality issues
like memory leaks. While driver quality has always been important, the
up time between kernel reboots might be significantly longer than on
previous versions of Windows because on user initiated shutdowns, the
kernel, drivers, and services will be preserved and restored, not
restarted.

### Full boot

The following list contains considerations that enable the best startup
experience.

-   Balance CPU performance, disk performance, and memory capacity.

-   Optimize the UEFI read routing performance.

-   Ensure that drivers of leaf node devices follow fast
    resume guidelines.

-   Ensure that drivers complete their S0 set-power IRPs as quickly as
    possible to prevent other devices from getting their S0
    set-power IRPs.

-   Validate drivers and services against memory leak.

-   Register a service to receive power management events notification
    only if absolutely necessary.

-   Drivers should not wait to complete the S\_IRP until the D\_IRP is
    completed because this will prevent other devices from receiving
    their S\_IRPs, which will cause serialization delays and increase
    overall suspend time.

### Shutdown API behavior

To ensure the best compatibility with apps while enabling the best
possible experience for new apps, new flags to request a shutdown for
fast startup have been created. This table describes the new flags and
the behavior of the shutdown APIs. Details on these APIs and flags are
available on MSDN.

| API                          | Shutdown behavior |
|------------------------------|------------------------------------------------------------------------------------|
| **InitiateSystemShutdownEx** | Always performs a full shutdown |
| **InitiateSystemShutdown**   | Always performs a full shutdown |
| **InitiateShutdown**         | Performs a shutdown for fast startup with the use of the SHUTDOWN\_HYBRID flag |
| **ExitWindowsEx**            | Performs a shutdown for fast startup with the use of the EWX\_HYBRID\_SHUTDOWN flag |

### Distinguishing when a hibernate or a shutdown for fast startup will occur

Device drivers will receive a notification to transition to an S5 target
power state on shutdown rather than a hibernate state of S4, which is
the actual power state. This allows the drivers to set a different wake
behavior for fast startup after a shutdown. Target and effective states
are found in the System\_Power\_State\_Context structure.

For most devices, the distinction between S4 and S5 wake behavior is
controlled at the bus driver layer. If you implement your own bus driver
and need to distinguish these, please contact your Microsoft
representative for additional information. Here are some best practices
that help deliver a fast startup experience:

-   Balance CPU performance, disk performance, and memory capacity

-   Optimize the UEFI read routing performance

-   Ensure that drivers of leaf node devices must fast resume guidelines

-   Ensure that drivers complete their S0 set-power IRPs as quickly as
    possible to prevent other devices from getting their S0 set-power
    IRPs

-   Avoid launching apps on boot, except for antimalware and
    device apps.

-   Never launch apps on boot using RunOnce

-   Avoid managed code apps in the boot path

-   Delay startup of non-critical apps by using Task Scheduler

-   Validate drivers and services against memory leak

-   Register a service to receive power management events notification
    only if absolutely necessary

-   Drivers should not wait to complete the S\_IRP until the D\_IRP is
    completed because this will prevent other devices from receiving
    their S\_IRPs, which will cause serialization delays and increase
    overall suspend time

### Hibernate (S4) suspend and resume

In a hibernate transition, all the contents of memory are written to a
file on the primary system drive. This process preserves the state of
Windows, apps, and devices. When the combined memory footprint consumes
all physical memory, the hibernate file must be large enough to ensure
that there’s enough space to save all the contents of physical memory.
Since data is written to non-volatile storage, the DRAM doesn’t need to
maintain self-refresh and can be powered off. This results in very low
power draw, similar to the PC being in the off state.

#### User scenarios for hibernate 

These are the critical scenarios that require hibernate technology in
PCs running Windows today:

-   **Doze to Hibernate:** A system is left idle and transitions to
    hibernate automatically.

-   **Critical Battery:** Windows automatically hibernates the PC to
    prevent data loss when battery power has run out.

-   **Thermal Condition:** A system reaches a predefined temperature
    that requires automatic system power down to protect circuitry.

-   **User Initiated:** A user selects hibernate to save the current
    user state with very minimal power draw.

Although this list may evolve as the needs and capabilities of PCs
evolve, it’s expected that many PCs will continue to use hibernate,
especially when connected standby isn’t possible.

#### Hibernate phase

![Diagram of the hibernate phase.](images/weg-diagram-hibernate-phase.png)

In this phase, Windows progresses through notifying the various
components that a hibernate phase is happening and then saves the user's
context and system state. The data is compressed and written out to the
disk. The system uses all the processor cores on the system to compress
all the data in memory and uses one processor when writing the data to
disk. Once all of the data is written to disk, Windows notifies the
firmware that it is ready for power down.

The firmware notification is done by writing to the Sleep Type Registers
with values that were provided in the S4 object as defined in ACPI 4,
Section 4.5, Table 4-13, and Section 7.3.4. This indicates to the
firmware that on next power on, a resume will be attempted rather than a
full boot.

#### Resume phase

![Diagram of the resume phase.](images/weg-diagram-resume-phase.png)

Hibernate resume starts with the firmware POST that is similar to a full
boot. The Windows boot manager detects that a resume from hibernate is
required by detecting a valid hibernate file and directs the system to
resume, restoring the contents of memory and all architectural
registers. In the case of a hibernate resume, the contents of the memory
are read from the disk, decompressed, and restored, putting the system
in the exact state it was in when it was hibernated. After the memory
content is restored, the devices are restarted and the machine returns
to a running state, ready for login.

Note that although device drivers and services are notified, they’re not
restarted. They’re simply restored to the state they were in when the
hibernate phase occurred.

The restoration of the system memory is broken into 2 phases. The first
phase is done to restore a minimal portion of the kernel, which is then
used to complete the memory restore for the rest of the system. The
first phase has to be done with a single processor environment core. But
once the minimal portion of the system memory is restored, all processor
cores can be used to parallelize the decompression and restoration of
data for the remainder of the resume, thereby significantly speeding up
the process.

The process is further improved by right-sizing the
encryption/decryption algorithm, based on the capabilities of the
processor.

The parallelization optimizations are available only on systems on which
the system can guarantee that it will have all the data it might need
from the minimal environment available to it. So it can’t be used if
components added to the crash dump stack, which is used during the
hibernate resume operation, haven’t also been declared to be part of
that minimal environment. If you’re creating such a component, such as a
crash dump filter driver or a device that uses a separate crash dump
path, please contact Microsoft so that we can lead you through this
process.

### Firmware POST

Faster POST times reduce the overall time from power on to usable state.
Because Windows fast startup is significantly faster, POST time can
become a more significant proportion of the total boot time. Additional
information on POST time requirements is documented in the Windows
Hardware Certification requirements. Our analysis shows that the POST
time requirements are achievable on platforms that fully enumerate and
enable a full complement of hardware components in the pre–operating
system environment.

Since Windows 8, all PCs are required to ship their firmware based on
the Unified Extensible Firmware Interface (UEFI) specification 2.3.1 or
later. Because many systems are based on older, legacy firmware designs,
there are opportunities to optimize the firmware design to better
accommodate faster POST times.

![Diagram of initialization flow through UEFI architecture.](images/weg-diagram-uefi-firmware-flow.png)

The UEFI architecture flows through several phases of firmware and
platform initialization. Based on these well-defined phases, there are
several design considerations that could reduce POST time.

#### Security (SEC)

In the SEC phase, a platform performs extraction, decompression, and
validation of platform microcode stored on a SPI NOR flash. At this
point of power-on, the platform is initialization RAM and its bus. The
following are considerations for this phase.

-   Is the microcode specific to the SKU or general to multiple
    platforms? The size of the microcode will affect decompression,
    transfer to RAM, and validation.

	Consider refactoring microcode to be as small as possible.

-   Can the SPI NOR flash bus speed be increased? Many platforms support
    multiple clock speeds for the SPI NOR flash part. They are often
    operating at a lower clock frequency (for example, 16 MHz) and can
    be increased.

	Consider increasing bus speed to reduce latency in microcode transfer
	from NOR flash to RAM.

-   Does the platform have enough NOR flash? To save costs, many
    platforms are designed with the bare minimum NOR part, resulting
    in higher compression of microcode and greater cost
    for decompression.

-   Consider a larger NOR flash part to store code with
    less compression.

Balancing compression, design, and transfer of microcode might improve
performance of POST times. At the end of SEC, the validated microcode
copies the rest of the UEFI kernel and environment from NOR flash into
RAM.

#### Pre-EFI Initialization (PEI)

Once the kernel is RAM, the platform initializes the kernel and starts
to validate the integrity of the code, system table, and other elements.
Consider designing a UEFI kernel that’s optimized for your platform and
not a generic non-optimized kernel. Optimizations can include:

-   Compiling flags during kernel builds that optimize memory buffers.

-   Linking to modules that aren’t required for platform initialization.

Consult with your firmware designers for ideas on how to optimize the
UEFI kernel.

#### Driver Execution Environment (DXE)

At this point of initialization, core UEFI drivers and 3rd party DXE
drivers are loaded. Using tools provided by your firmware designers, the
owner can identify which are the least performant DXE drivers and assess
whether that code can be optimized.

Another consideration in this phase rests in the number of DXE drivers
loaded. The platform should load only drivers that it needs to guarantee
a boot and not depend on optional hardware. Final design depends on
target boot selection.

#### Boot Device Selection (BDS)

Boot device selection is the final step in platform initialization
before hand-off to Windows. During this step, the firmware determines
which boot devices are present and which one to hand off execution.
Careful design and optimizations of the boot variables will affect the
transition to the Windows boot loader.

#### USB Enumeration

USB enumeration is a portion of POST that tends to take a significant
length of time. With new changes introduced in Windows 8, USB
enumeration will no longer be required in the default boot case. You can
contact your silicon and firmware vendor for additional POST time
optimizations.

However, we do recommend that the USB be enumerated if the boot sequence
is set to boot to any other path, such as:

-   If there are other options higher in the boot order, such as when
    Windows To Go Startup Options inserts a USB class boot entry at
    the top of the boot order.

-   A boot next variable is set, causing a different boot device to
    be used.

-   Failures occurring on the immediately preceding boots.

### Apps

Desktop apps that are in the boot path will impact on/off transition and
energy efficiency. Task Manager will also flag desktop apps that have a
high impact and notify the user about desktop apps that are always
running. For more information, see [Startup
Apps](http://go.microsoft.com/fwlink/?LinkId=309749)
(https://msdn.microsoft.com/library/hh848065.aspx). Instead of
automatically starting desktop apps, we strongly recommend that you use
automatic maintenance and run them only when needed.

## Recommended goals

![Important](images/note-important.gif)**Important**&nbsp;&nbsp;&nbsp;All goals defined exclude BIOS initialization time.

To deliver a great on/off experience, it is recommended that a PC meets
these goals:

| **Scenario**             | **Tablet (CS)** | **Convertible** | **Notebook** | **All-in-One** |
|--------------------------|-----------------|-----------------|--------------|----------------|
| Fast startup (seconds)   | &lt; 25         | &lt;= 15        | &lt;= 15     | &lt;= 15       |
| Hiberfile size (MB)      | &lt; 300        | &lt;= 300       | &lt;= 300    | &lt;= 300      |
| Standby resume (seconds) | Not applicable  | &lt;= 7         | &lt;= 7      | &lt;= 5        |

<br/>
<table>
<tr>
<th>Metric</th>
<th>Unit</th>
<th>Goal</th>
</tr>
<tr>
<td>
<p><strong>Number of processes started through registry Run keys</strong></p>
<p>Defined as the total number of processes started on every boot using Run keys. Has a direct impact on post-on/off resource utilization (CPU and disk).</p>
<p>Can be found by looking at some ETW events in the fast startup traces (using the Generic Events table):</p>
<p>Provider Name: Microsoft-Windows-Shell-CoreTask: Explorer\_ExecutingFromRunKeyOpcode: win:Start</p>
<p>Field \#1 of the event (Command) provides the command line used to launch the processes.</p>
</td>
<td>
<p>count</p>
</td>
<td>
<p>&lt; 10</p>
</td>
</tr>
<tr>
<td>
<p><strong>Normal priority read disk IO during fast startup Post On/Off</strong></p>
<p>This metric can be obtained directly from the assessment results in the Windows Assessment Console, under:</p>
<p>Total Boot &gt; Post On/Off &gt; Total Disk Usage &gt; Normal Priority Reads (Bytes)</p>
</td>
<td>
<p>MB</p>
</td>
<td>
<p>&lt; 30</p>
</td>
</tr>
</table>


## Validation and testing

You can use the Windows Assessment Toolkit to improve the performance of
your PC beyond minimum requirements. Windows assessments related to
on/off experience include:

-   Fast Startup assessment

-   Full Boot and Shutdown assessment

-   Standby assessment

-   Hibernate assessment

The new versions of the Fast Startup and Hibernate assessments include a
*Hiberfile Diagnostics* mode. This mode helps detect drivers and apps
that contribute to large hiberfile size and detects storage drivers that
don’t implement multi-stage resume.

There are two main categories of memory pages going into the hiberfile
with respect to system evaluation: driver non-paged pool pages and
app/services private working sets pages.

The new mode will help you to understand which software components need
to be improved for memory usage.

Tools and technical reference
ms.author: windows-hardware-design-content
ms.date: 05/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
-----------------------------

You can learn more about the on/off experience, and download tools to
help you analyze performance from these resources:

| Resource title                     | Content type | Description                                                                                                                                                                                                                 | Link |
|------------------------------------|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Startup Apps                       | Article      | Highlights some of the effects that startup apps have on a Windows device, and provides guidance to developers (ISV/IHV) and OEMs to rethink the usage patterns of startup apps to improve battery life and responsiveness. | [MSDN](http://go.microsoft.com/fwlink/?LinkID=309749) (https://msdn.microsoft.com/library/hh848065.aspx) |
| Results for the On/Off Assessments | Document     | Helps you interpret the results produced by the On/Off assessments (Boot Performance (Fast Startup), Boot Performance (Full Boot), Standby Performance, and Hibernate Performance.                                          | [MSDN](http://msdn.microsoft.com/en-us/library/windows/hardware/jj130812.aspx) (https://msdn.microsoft.com/en-us/library/windows/hardware/jj130812.aspx) |


# Delivering a great browsing experience

This section focuses on some of the performance challenges and what you
can do to deliver a great Internet Explorer web browsing experience for
your customers.

Because all web browsers in today’s marketplace support similar
standards, performance quickly becomes a key differentiator for
customers. Consumers are keenly interested in the performance of all of
the apps that they use, including browsers.

## Considerations

Antimalware apps affect Internet Explorer web browsing performance. Page
load time, a measurement of how long it takes to launch the browser and
navigate to a web page, is an important part of the user experience.
It’s important that you understand and consider what you’re installing
on your PC, how it affects your customers, and what perception they get
of your product’s performance.

### How antimalware apps affect browsing

Antimalware software affects browsing speed and fluidity in four major
categories. Some examples of how antimalware can slow down a browser
include:

<ol style="list-style-type: decimal">
<li>
<p>Network and disk interference</p>
<ul>
<li>
<p>Outbound network traffic delays</p>
</li>
<li>
<p>Disk access interference</p>
</li>
<li>
<p>Reduced network parallelism</p>
</li>
</ul>
</li>
<li>
<p>JavaScript interference</p>
<ul>
<li>
<p>Reverting to legacy JavaScript script engine</p>
</li>
<li>
<p>Redirecting JavaScript calls</p>
</li>
<li>
<p>Participating in dynamic JavaScript execution</p>
</li>
</ul>
</li>
<li>
<p>Visual interference</p>
<ul>
<li>
<p>Redundant layout work</p>
</li>
<li>
<p>Competing with website code</p>
</li>
</ul>
</li>
<li>
<p>General interference</p>
<ul>
<li>
<p>Synchronous server communication</p>
</li>
<li>
<p>Altering Internet Explorer assumptions</p>
</li>
</ul>
</li>
</ol>

### Selecting antimalware apps

There are multiple factors to consider when choosing an antimalware
product to include on your PC. You can use the ADK assessments or other
test tools to quantify the impact to the overall performance of your PC
and to battery life.

Keep in mind that you do not have to sacrifice performance to have a
high level of protection. Many top-rated antimalware products also
perform very well in our assessment.

![Important](images/note-important.gif)**Important**&nbsp;&nbsp;&nbsp;The ADK assessments do not measure the level of security provided by
antimalware products. Many third parties produce reports measuring and
comparing the effectiveness of various antimalware packages.

## Recommended goals

To deliver a great Internet Explorer experience, a PC should meet the
following goals:

| **Scenario**                                                        | **Tablet (CS)** | **Convertible** | **Notebook** | **AIO**   |
|---------------------------------------------------------------------|-----------------|-----------------|--------------|-----------|
| IE Security Software Impact assessment: Page display time (seconds) | &lt;= 1.5       | &lt;= 0.5       | &lt;= 0.5    | &lt;= 0.5 |
| IE startup (User Perceived)(seconds)                                | &lt;= 1.0       | &lt;= 0.5       | &lt;= 0.5    | &lt;= 0.5 |

## Validation and testing

You can use the Windows Assessments Toolkit to improve performance of
your PC beyond minimum requirements. Windows assessments related to
Internet Explorer include:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Internet Explorer Startup Performance assessment</strong></dt>
<dd>
<p>Identifies components that can affect the time it takes to start
Internet Explorer. The assessment measures the time to fully render a
blank page, including the load time of the IExplore.exe process and the
frame-creation and tab-creation intervals. It also measures the effect
of all extensions, add-ins, and toolbars installed on the system. It
does not measure any network or browsing performance.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Internet Explorer Security Software Impact assessment</strong></dt>
<dd>
<p>Measures aspects of Internet Explorer that are typically affected by
antimalware apps and other browser add-ins. The assessment measures the
impact of security software on the display time, CPU time, and resource
utilization of Internet Explorer.</p>
</dd>
</dl>

### Internet Explorer Security Software Impact assessment

The IE Security Software Impact Assessment is intended to measure more
relevant browsing scenarios and focuses on the antimalware impact on
Internet Explorer browsing performance.

Antimalware and browser add-ins have a large impact on the Windows
experience. By expanding the number of assessments that reflect their
impact, we help you develop a clearer picture of their overall impact on
your users.

![Note](images/note-regular.gif)**Note**&nbsp;&nbsp;&nbsp;We recommend that you always compare its results to a clean Windows
image (with Windows Defender running) on the same system in order to
quantify the impact introduced by the selected 3rd-party antimalware
solution.

This assessment covers page navigation and JavaScript performance, both
of which are central to the browsing experience. It launches a page to
exercise a number of key performance bottlenecks:

-   Significant use of JavaScript

-   Significant network usage

-   Complex page formatting

When doing the analysis, focus on Complete Page Load Duration and Page
Usable metrics:

-   Complete Page Load Duration

-   Reports the total time that elapses before the test webpage is fully
    loaded in Internet Explorer. It measures the duration from page
    load until Internet Explorer CPU usage is relatively stable.

-   Page Load to Usable

-   Estimates the time that elapses between loading the page and when
    the page is usable. This metric is based off of
    performance events.

Multiple types of impacts can be detected:

- **Network and disk interference** typically appears in network request metrics and in total CPU usage.

- **JavaScript interference** can show up in JavaScript metric or in network request metrics.

- **Visual interference** shows up in document paints metrics.


# Delivering a great media experience

An exceptional media playback and capture experience is glitch free, low
latency, and energy efficient. You can assess the performance of media
playback, real-time communications, and webcam capture scenarios on your
Windows devices using tests in the ADK and HLK.

## Considerations

A device that delivers a great media experience delivers on glitch-free audio, glitch-free video, and long-battery life.


### Glitch-free audio

To achieve glitch-free audio, there must be no audible pops or
discontinuities in the audio stream. For real-time communication
scenarios, the audio must be glitch-free and also meet the same low
latency that users experience when talking on a traditional phone.

Some audio glitches are caused during the processing of the audio
samples before they are rendered to the audio driver. The media pipeline
is instrumented with events to log these glitches using Event Tracing
for Windows (ETW). Tools such as Media eXperience Analyzer (MXA) can be
used to narrow down the cause of the glitches.

### Glitch-free video

There are two types of video quality:

-   *Temporal quality* is degraded when the media engine pipeline is
    stalled and there is a discontinuity in the processing of
    video frames. Video frames are either dropped or presented late, and
    this might be noticeable to the human eye.

	Examples of temporal video glitches include delays in the hardware and
	media pipeline threads that are introduced by bottlenecks or higher
	priority work on the system.

	Temporal quality affects:

	-   Fast startup. How quickly the video loads and starts to play.

	-   Audio/Video sync. Whether the audio and video streams start and stop
		simultaneously and keep the same pace.

	-   Seek latency. How quickly advance and reverse functions respond to
		user commands.

		The playback and capture pipelines are instrumented with video
		glitch and data drop events that can be used to measure the temporal
		video quality. The pipeline takes advantage of the Multimedia Class
		Scheduler (MMCSS) service. This service is built into the scheduler
		and ensures that time-sensitive processing in the media pipeline
		receives prioritized access to CPU resources. Multimedia apps can
		use as much of the CPU as possible without denying CPU resources to
		lower-priority apps. Learn more about MMCSS on
		[MSDN](http://msdn.microsoft.com/en-us/library/windows/desktop/ms684247.aspx) (https://msdn.microsoft.com/en-us/library/windows/desktop/ms684247.aspx).

-   *Spatial quality* refers to any corruption in the video stream
	during media playback or when the content is encoded. The decoding
	or video processing phases of video playback can introduce
	horizontal or vertical tearing or macro blocking.

### Long battery life

Windows supports hardware offload and several other power savings
features that enable you to deliver competitive battery life during
media workloads. These features include:

-   *Audio Offload* - Leverage audio offload on platforms that have
    offload support.

-   *Multi-plane overlay (MPO)* - Several chipsets provide support for
    MPO which offloads video processing to hardware. This feature
    reduces memory bandwidth requirements by approximately 50%,
    resulting in power savings and increased glitch resilience.

-   *[Direct
    Flip (https:/msdn.microsoft.com/en-us/library/windows/hardware/dn653329.aspx)](https://msdn.microsoft.com/en-us/library/windows/hardware/dn653329.aspx)
    & [Independent
    Flip](http://msdn.microsoft.com/en-us/library/windows/hardware/dn457716.aspx) (https://msdn.microsoft.com/en-us/library/windows/hardware/dn457716.aspx)* -
    Bypassess the DWM and flips surfaces directly to the GPU, removing
    memory copies during full screen video playback.

-   *Low refresh rate playback* - Media Engine apps drop the refresh
    rate to the lowest multiple that the panel supports when in
    full screen. For example, when playing 24fps video content in the
    XBox Video app on a system that has an LCD that supports 48hz
    refresh rates, the media pipeline will drop the refresh rate from 60
    to 48hz.

-   *Batching* - In Full Screen playback mode, Media Engine based apps
    process and queue-up several frames to be presented. 

You can use Media eXperience Analyzer, an analysis tool, to validate
whether the features listed above are engaged. It also enables you to
correlate power usage generated by power instrumented systems with
system activity captured in an ETW log.

![Charts of power data and system activity shown in Media eXperience Analyzer.](images/weg-mxa-screen-regions-power-data-system-activity.png)

### Impact of third-party drivers and apps

Third-party drivers and apps are often designed to perform a task
quickly and, to accomplish these tasks; they might run at a priority
that introduces resource constraints for the media pipeline. In some
cases, there are third-party drivers that run at dispatch level for long
periods of time (10+ ms) and, in other cases, utilities hard code the
priority of their threads to run at priority 22. As described in the
following validation and testing section, third-party apps and drivers
can introduce delays in the media pipeline and cause audio and video
glitches.

## Recommended goals

To deliver a great media playback experience, a Windows device should
meet the following goals. These performance and quality goals apply to
Windows Store apps and desktop apps. They apply to both inbox and
third-party playback apps.

|   Metric priority   |   Metric                                                   | Exceptional          |
|---------------------|------------------------------------------------------------|----------------------|
| 0                   | Audio glitches during steady state playback                | 0                    |
| 0                   | Video glitches and data drops during steady state playback | 0                    |
| 1                   | Audio & video glitches, data drops at startup or shutdown  | 0                    |
| 1                   | Audio/video sync                                           | &lt; 25 ms           |
| 1                   | ISR/DPC duration                                           | &lt; 25 microseconds |
| 2                   | Startup latency                                            | &lt; 1 sec           |
| 2                   | Seek latency                                               | &lt; 500 ms          |

To deliver a great real-time communication and capture experience, a
Windows device should meet the performance goals outlined in the Windows
Hardware and Certification (HCK) tests listed in the validation and
testing section below.

## Validation and testing

You can use the Hardware Lab Kit (HLK) to make sure that your Windows
device meets Windows requirements.

HLK tests related to media playback include:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Glitch-Free HD Playback Test</strong></dt>
<dd>
<p>Plays back 1080p video content and reports the number of audio and
temporal video glitches. This test can optionally generate verbose
performance traces that can be analyzed in performance analysis tools
like Media eXperience Analyzer.</p>
</dd>
</dl>

You can use the Windows Assessment Toolkit to improve the performance of
your Windows device beyond minimum requirements. Windows assessments
related to media playback include: 

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Streaming Media Performance</strong></dt>
<dd>
<p>Measures the streaming media quality of HTML5 video playback in Internet
Explorer. Verbose ETW logs contain information necessary for diagnosing
the cause of the performance issues identified by the test. We recommend
that you set up the streaming server on a system that is different from
the client.</p>
<ul>
<li>
<p>Requires second system on the network to host streaming server process</p>
</li>
<li>
<p>Follow the instructions in [Set Up a Remote Server for the Streaming Media Performance Assessment](http://msdn.microsoft.com/en-us/library/windows/hardware/hh825310.aspx) on MSDN (https://msdn.microsoft.com/en-us/library/windows/hardware/hh825310.aspx) to set up the server.</p>
</li>
<li>
<p>Change the assessment parameters to reflect the server configuration. For example:
![Settings in Windows Assessment Console (WAC) for assessing the performance of a streaming media server.](images/weg-wat-settings-streaming-media-performance.png)</p>
</li>
</ul>
</dd>
<dt><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Local Media Playback Energy Efficiency Workload</strong></dt>
<dd>
<p>Measures the battery life during HTML5 playback of 1080p H.264 content.</p>
</dd>
</dl>


### Analyzing audio and video glitches

Media eXperience Analyzer is a trace visualization tool available on MS
Download Center. It can be used to identify the root cause of temporal
quality issues. The general approach to glitch analysis can be broken
down into four steps:

1.  Collect an ETW log using the Windows Performance Recorder (WPR)
    during a Media playback workload.

2.  Zoom into audio and video glitch or data drop events.

3.  Search for bottlenecks or unexpected delays in the CPU, GPU, disk,
    or network.

4.  Collect supporting information like call stacks and analysis
    screen shots.

5.  Notify and follow up with owners of the components introducing
    delays or glitches.

Audio and video data drops or glitches can be broken down into three
categories: downstream, midstream, and upstream.

#### Downstream

Occurs when the source can’t read from the disk or network fast enough
to keep up with real-time decoding and rendering. For example, the disk
might be pegged by a hard page fault and as a result, samples can’t be
read from the disk in real-time or faster. Source side starvation often
results in data drop events.

#### Midstream

Delays decrypting a protected stream, decoding is slower than real-time,
or delays presenting the frames to the GPU. This can be caused by a
bottleneck in the hardware or software decoder or when other system
activity interferes with these media components.

#### Upstream

At this phase, the pipeline has decoded and presented the frame, but
there might be delays in the Desktop Window Manager (DWM) or the
graphics stack. Upstream bottlenecks can happen when the GPU is pegged
or experiencing slow memory transfers. This Media eXperience Analyzer
screenshot is an example of how to visualize an upstream bottleneck in
an ETW log.

![Visualization in Media eXperience Analyzer of an upstream bottleneck with regions of the screen marked for identification.](images/weg-mxa-screen-visualization-upstream-bottleneck.jpg)

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Panel A</dt>
<dd>
<p>The vertical lines are video glitch events fired by the Media Engine.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Panel B</dt>
<dd>
<p>This graph shows one of the GPU nodes is running at 99% utilization.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Panel C</dt>
<dd>
<p>Each row shows the GPU DMA operations on each node. The node
in the middle with the events marked in green are memory transfers.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Panel D</dt>
<dd>
<p>This graph shows the amount of time spent in the GPU’s CPU
queue while processing the DWM operations. This is an example of an
upstream bottle neck where the GPU is too busy processing memory
transfers and render operations to keep up with the real-time
requirement of presenting the video frames to the screen.</p>
</dd>
</dl>

You can use Media eXperience Analyzer, a performance analysis and
visualization tool, to analyze issues with media performance on your Windows
device. Media eXperience Analyzer contains specialized views for
diagnosing performance issues during capture and playback scenarios.
Some of the common causes for audio and video glitches that you might
find with this tool include:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Long-running Interrupt Service Routines (ISR) and Deferred Procedure Calls (DPC)</dt>
<dd>
<p>An *ISR* happens when the kernel's interrupt dispatcher transfers
control to a device driver routine when a device issues an interrupt. In
the Windows I/O model, ISRs run at a high device interrupt request level
(IRQL), so that they perform as little work as possible to avoid
blocking lower-level interrupts unnecessarily. An ISR usually queues a
DPC, which runs at a lower IRQL, to execute the rest of interrupt
processing. DPCs shouldn’t run longer than 100 microseconds, and ISRs
shouldn’t run longer than 25 microseconds.</p>
<p>In addition to other system performance effects, long-running ISRs and
DPCs can cause delays in the audio engine that result in audio glitches.
An ISR or DPC running for longer than 1 to 3 ms can affect media
performance on a system. Like long-running ISRs and DPCs, frequent ISRs
and DPCs (an ISR/DPC storm) can have similar effects on performance.
Usually such ISR and DPC problems are found in network, storage, and
graphics drivers. The assessment generates a warning for long-running
ISR/DPCs between 1 and 3 ms and an error for durations longer than 3 ms.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kernel worker thread running at dispatch level</dt>
<dd>
<p>In addition to DPCs, some kernel worker threads might also be running at
dispatch level (IRQL = 2). These can also cause delays that result in
audio glitches. To detect such delays, look for low priority system
threads that run non-stop for long durations without being preempted.</p>
</dd>
</dl>

The following guidance checklists should be integrated into OEM’s design
and test phases of new Windows devices.

Power Savings guidance checklist

-   Use hardware offload and low refresh rate panels

-   Optimize Content Adaptive Backlight Control (CABC) settings

-   Optimize default screen brightness settings

-   Remove printf debug logging from drivers

-   Run Windows ADK energy efficiency local video playback assessment,
    comparable energy efficiency test tool or a comparable test to
    measure reasonable consumer usage scenarios and environments

-   Minimize heavy background activity during key media scenarios

-   Test key media experiences on AC and DC

Glitch-free guidance checklist for media playback

-   Stream premium content with HDMI out to TV

-   Play premium content on DLNA TV using Play To and Miracast

-   Verify Xbox Video and Xbox Music experiences

Glitch-free guidance checklist for real-time communications and webcam
capture

-   Fine-tune firmware to optimize audio and video quality processing

-   Validate front and back cameras using inbox & 3rd-party capture apps

-   Use the HLK and Skype/Lync certification tests to deliver an
    exceptional experience

-   Refer to the Hardware Windows Engineering Guidance document for
    detailed guidance on how to resolve spatial quality issues like
    cameras capturing blurry or dark images

## Tools and technical reference

<!--No content provided here in the original Word file.-->

### Media eXperience Analyzer

Media eXperience Analyzer is the recommended performance analysis tool
for diagnosing audio and video glitches. This tool is a performance
analysis tool that provides specialized views for diagnosing
discontinuities in the multimedia space and delays in the graphics
stack. It enables a broader set of performance analysts to diagnose
temporal performance and quality issues that are reported by HCK tests
or manual testing. Media eXperience Analyzer processes ETW traces
collected during the execution of audio and video playback scenarios.
The tool visualizes a wide range of kernel and user-mode events fired
during the tracing session. You can easily correlate instrumentation
data from various components and perform root cause analysis. This tool
doesn’t suggest concrete resolutions for the identified issues, but it
provides in-depth data and evidence for developers, partners, or
component owners.

| Resource title                                                                 | Content type       | Description                                                                                                                                                                                                                                                                                                                                                                                                                                     | Link
|--------------------------------------------------------------------------------|--------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Optimizing Windows Devices                                                     | Video & Slide Deck | Introduces the performance tools and test kits used to optimize performance on Windows devices. This overview lays the groundwork for building a Windows device that delivers fast boot and browser launch, snappy and responsive UI, and glitch free multimedia experiences.                                                                                                                                                                   | [Channel 9](http://channel9.msdn.com/Events/WinHEC/2015/OWD204) (http://channel9.msdn.com/Events/WinHEC/2015/OWD204) |
| WinHEC Media Lab                                                               | Doc                | WinHEC Media lab that covers delivering a low latency and glitch resilient experience, audio & video playback quality, Glitch Free Playback test in the Hardware Lab Kit (HLK), How to verify audio is offloaded.                                                                                                                                                                                                                               | [Channel 9](http://channel9.msdn.com/Events/WinHEC/2015/OWDHOL301) (http://channel9.msdn.com/Events/WinHEC/2015/OWDHOL301) |
| Battery Life Overview                                                          | Video & Slide Deck | Overview of the various aspects of designing and shipping a system that delivers a long battery life when the system is on and in standby. Topics include: Power modeling and tuning, Optimizing the power floor during screen on and standby, Standby modes: Connected Standby (CS), and Modern Standby (MS), Energy Estimation Engine and reporting the impact software pre-loads have on battery life, and Introduction to Battery Saver UX. | [Channel 9](http://channel9.msdn.com/Events/WinHEC/2015/OWD202) (http://channel9.msdn.com/Events/WinHEC/2015/OWD202) |
| Media Playback Apps - Audio and Video Performance                              | Article            | When you develop an app that uses audio and video, you should be aware of some important performance considerations. This document summarizes key design areas for getting high-performing media playback in Windows Store apps using JavaScript.                                                                                                                                                                                               | [MSDN](https://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh848311.aspx) (https://msdn.microsoft.com/en-us/library/windows/apps/xaml/hh848311.aspx) |
| How to optimize video rendering (Windows Store apps using JavaScript and HTML) | Article            | Includes information about the msIsLayoutOptimalForPlayback attribute.                                                                                                                                                                                                                                                                                                                                                                          | [MSDN](http://go.microsoft.com/fwlink/?LinkId=311550) (https://msdn.microsoft.com/library/windows/apps/hh452785.aspx) |
| Hardware-Offloaded Audio Processing                                            | Article            | Provides information about audio offloading in Windows 8 and how this support allows an audio driver to expose offloaded audio capabilities to the Windows audio stack.                                                                                                                                                                                                                                                                         | [MSDN](http://go.microsoft.com/fwlink/?LinkId=311551) (https://msdn.microsoft.com/en-us/library/windows/hardware/dn302038.aspx) |

# Delivering a great app experience

<!--No content provided here in the original Word file.-->

## Building fast, fluid, and power-efficient Windows Store apps

Delivering a great Windows experience is not limited to firmware and
hardware components. The quality of apps is a key component in
delivering a great Windows experience. This section lists our
recommendations and considerations on app development.

### Tools and technical reference

| Resource title                                                                         | Content type | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Download link
|----------------------------------------------------------------------------------------|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| MS Press Programming Windows 8 Apps with HTML, CSS, and JS                             |  Book        |  Free online book that has several pointers on how to design and build Windows Apps with good performance                                                                                                                                                                                                                                                                                                                                                                                                                                           |  [MSDN](http://blogs.msdn.com/b/microsoft_press/archive/2012/10/29/free-ebook-programming-windows-8-apps-with-html-css-and-javascript.aspx) (http://blogs.msdn.com/b/microsoft\_press/archive/2012/10/29/free-ebook-programming-windows-8-apps-with-html-css-and-javascript.aspx) |
| Building high performance Windows Store apps using HTML5                               |  Video       |  BUILD video on building high performance Windows Store apps using HTML5                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |  [Channel 9](http://channel9.msdn.com/Events/Build/BUILD2011/APP-162T) (http://channel9.msdn.com/Events/Build/BUILD2011/APP-162T) |
| 50 performance tricks to make your Windows Store apps and sites using HTML5 faster     |  Video       |  BUILD video on 50 performance tricks to make your Windows Store apps and sites using HTML5 faster                                                                                                                                                                                                                                                                                                                                                                                                                                                  |  [Channel 9](http://channel9.msdn.com/Events/Build/BUILD2011/PLAT-386T) (http://channel9.msdn.com/Events/Build/BUILD2011/PLAT-386T) |
| Performance best practices for Windows Store apps using C++, C\#, and Visual Basic     |  Article     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/apps/Hh750313.aspx) (https://msdn.microsoft.com/en-us/library/windows/apps/Hh750313.aspx) |
| General Best Practices For Performance                                                 |  Article     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/apps/hh994633.aspx) (https://msdn.microsoft.com/en-us/library/windows/apps/hh994633.aspx) |
| Performance best practices for Windows Store apps using JavaScript                     |  Article     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/apps/hh465194.aspx) (https://msdn.microsoft.com/en-us/library/windows/apps/hh465194.aspx) |
| Analyzing the performance of Windows Store apps                                        |  Article     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/apps/hh696636.aspx) (https://msdn.microsoft.com/en-us/library/windows/apps/hh696636.aspx) |
| How to improve performance in your Metro style app                                     |  Article     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://blogs.msdn.com/b/windowsappdev/archive/2012/04/03/how-to-improve-performance-in-your-metro-style-app.aspx) (http://blogs.msdn.com/b/windowsappdev/archive/2012/04/03/how-to-improve-performance-in-your-metro-style-app.aspx) |
| Tackling performance killers: Common performance problems with Metro style apps        |  Article     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://blogs.msdn.com/b/windowsappdev/archive/2012/04/05/tackling-performance-killers-common-performance-problems-with-metro-style-apps.aspx) (http://blogs.msdn.com/b/windowsappdev/archive/2012/04/05/tackling-performance-killers-common-performance-problems-with-metro-style-apps.aspx) |
| Timing and Performance APIs                                                            |  Article     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/apps/hh767418.aspx) (https://msdn.microsoft.com/en-us/library/windows/apps/hh767418.aspx) |
| Analyzing memory usage in Windows Store apps                                           |  Article     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/apps/jj819177.aspx) (https://msdn.microsoft.com/en-us/library/windows/apps/jj819177.aspx) |
| Analyzing the code quality of Windows Store apps with Visual Studio code analysis      |  Article     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/apps/hh441471.aspx) (https://msdn.microsoft.com/en-us/library/windows/apps/hh441471.aspx) |
| HTML Performance Tool in Visual Studio 2012 Update 2                                   |  Tool        |  This tool is meant to help developers solve issues with UI responsiveness (why is my UI thread blocked?) and latency in visual updates (my UI thread is responsive but visual changes are taking longer than expected to display). It does this by presenting a holistic set of "events" (logical categorization of CPU utilization) that occurred during a period of time, which includes both application logic as well as platform behavior that occurred on behalf of your application (e.g. layout, GC, network request, image decoding time).|  [Microsoft.com](http://support.microsoft.com/kb/2797912) (https://support.microsoft.com/en-us/kb/2797912/) | 
| Performance Analyzer for HTML5 apps                                                    |  Tool        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/apps/jj553524.aspx) (https://msdn.microsoft.com/en-us/library/windows/apps/jj553524.aspx) |
| Windows App Certification Kit                                                          |  Kit         |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://msdn.microsoft.com/en-US/windows/apps/jj572486) (https://dev.windows.com/en-us/develop/app-certification-kit) |
| HTML ListView optimizing performance sample                                            |  Code Sample |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://code.msdn.microsoft.com/windowsapps/ListView-performance-39fb71f0) (https://code.msdn.microsoft.com/windowsapps/ListView-performance-39fb71f0) |
| Optimize Presentation Performance – DXGI Swapchain rotation sample                     |  Code Sample |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://code.msdn.microsoft.com/windowsapps/DXGI-swap-chain-rotation-21d13d71) (https://code.msdn.microsoft.com/windowsapps/DXGI-swap-chain-rotation-21d13d71) |
| XAML ListView sample pack                                                              |  Code Sample |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |  [MSDN](http://code.msdn.microsoft.com/windowsapps/XAML-ListView-sample-pack-0ec6b60f) (http://code.msdn.microsoft.com/windowsapps/XAML-ListView-sample-pack-0ec6b60f) |

## Analyzing Windows Store apps performance with the ADK

Windows Performance Analyzer in the ADK 8.1 introduces new
features/graphs to specifically analyze the performance of Windows Store
apps.

| Resource title                                                          | Content type | Description                                                                                                                                                                                                                                                       | Download link |
|-------------------------------------------------------------------------|--------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| App Performance: The Mental Model for Interacting with the Platform     | Video        | This session offers a deeper understanding of how your app interacts with the platform. With this knowledge you'll be able to use the tools to resolve performance issues                                                                                         | [Channel 9](http://channel9.msdn.com/Events/Build/2013/3-097) (http://channel9.msdn.com/Events/Build/2013/3-097) |
| App Performance: Planning Costs Less Than Rearchitecting                | Video        | This session will illustrate the value of assessing and designing with perf in mind early in the development process. You'll learn about tools and techniques for assessing performance in both managed apps that use XAML and apps that use HTML5.               | [Channel 9](http://channel9.msdn.com/Events/Build/2013/2-098) (http://channel9.msdn.com/Events/Build/2013/2-098) |
| App Performance: From UX to API for 5 Key Scenarios                     | Video        | This talk will provide a scenario-centric view into the end-to-end of how to deliver great performance in 5 key scenarios – Launch, Resume, Panning, Resize, and Suspension. Time permitting, we may discuss Animations, General Responsiveness, and App Install. | [Channel 9](http://channel9.msdn.com/Events/Build/2013/3-099) (http://channel9.msdn.com/Events/Build/2013/3-099) |
| App Performance: The Windows Performance Toolkit                        | Video        | This session is an introduction to the Windows Performance Toolkit (WPT). We’ll walk through the tool’s powerful capabilities. We’ll show you how to analyze your Windows Store app so that you can improve your customers’ experience                            | [Channel 9](http://channel9.msdn.com/Events/Build/2013/3-100) (http://channel9.msdn.com/Events/Build/2013/3-100) |


# Delivering an image with high quality Windows Store apps

For more information about deploying Windows Store apps in your Windows
images, see the Windows Engineering Guide for Apps and Store. Once the
apps are deployed, you can measure the activation and resume times of
every app preloaded on the image.

## Recommended goals

The following table shows minimum targets for app activation, based on
our user research.

| Scenario/workload                            | Target |
|----------------------------------------------|----------------------------|
| App activation time (launch from cold state) | Between 1 and 3 seconds |
| App resume time                              | Between 500ms and 1 second |


## Validation and testing

You can use the Windows Assessment Toolkit to improve the performance of
your apps beyond minimum requirements. Windows assessments related to
apps experience include:

-   Windows Store apps performance assessment

-   To measure the app resume times, use the default
    recommended settings.

-   To measure the app activation (launch from cold state) times, make
    sure to select the “Restart each Windows Store app” option in the
    assessment parameters.

## Tools and technical reference

| Resource title                | Content type | Description                       | Download link |
|-------------------------------|--------------|-----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Windows Store App Performance | Article      | Official Assessment Documentation | [MSDN](http://msdn.microsoft.com/en-us/library/windows/hardware/dn246955.aspx) (https://msdn.microsoft.com/en-us/library/windows/hardware/dn246955.aspx?f=255&MSPPError=-2147217396) |


# Delivering a great energy efficiency experience with Modern Standby

The number of systems capable of S0 low power idle is dramatically
increasing. We expect more systems to use the always on, instantly
available power model instead of the traditional S3/S4 power model.
Windows 10 introduces some changes to support this trend.

The new power model in Windows 10, called Modern Standby (MS), allows
systems that have a hard disk drive, and/or a NIC that doesn’t support
all of the requirements for Windows 8.x Connected Standby to still take
advantage of the low power idle model. *Windows 8.x Connected Standby
can be considered as a special case of Windows 10 Modern Standby.*

To learn more about this new power, please consult [Introduction to
Modern
Standby](https://connect.microsoft.com/site1304/Downloads/DownloadDetails.aspx?DownloadID=55993)
(https://connect.microsoft.com/site1304/Downloads/DownloadDetails.aspx?DownloadID=55993), white paper.

*Deepest run-time idle platform state* (DRIPS) is when the system is
consuming the lowest amount of power possible, limited by the power
floor. When the screen is turned off, the connected standby session
starts and the system goes through multiple phases to move into a
low-power state. When the system is in the lowest-power state, we say
the system is in DRIPS. The system is not in DRIPS when performing tasks
like receiving emails, updating live tiles with fresh content, receiving
VoIP calls, or any other background task that consumes power. The more
time the system spends in DRIPS before the screen is turned back on, the
longer the battery life is.

![Note](images/note-regular.gif)**Note**&nbsp;&nbsp;&nbsp;Total Modern Standby session time = DRIPS time + non-DRIPS time

The Performance WEG provides information to help you:

-   Demonstrate that a system has great battery life when running in
    Modern Standby.

-   Identify and resolve issues that affect Modern Standby.

For more information about how Modern Standby works, see these resources:

| Resource title                                                       | Content type | Description                                                                                                                                                                                                                                                                        | Download link |
|----------------------------------------------------------------------|--------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Introduction to Modern Standby                                       | White paper  | The new power model in Windows 10, called Modern Standby (MS), allows systems that have a hard disk drive, and/or a NIC that doesn’t support all of the requirements for Windows 8.x Connected Standby to still take advantage of the low power idle model.                        | [Connect](https://connect.microsoft.com/site1304/Downloads/DownloadDetails.aspx?DownloadID=55993) (https://connect.microsoft.com/site1304/Downloads/DownloadDetails.aspx?DownloadID=55993) |
| WinHEC 2015 Battery Life Optimization Overview Talk                  | Video        | Power modeling and tuning, Optimizing the power floor during screen on and standby                                                                                                                                                                                                 | [Channel9](http://channel9.msdn.com/Events/WinHEC/2015/OWD202) (http://channel9.msdn.com/Events/WinHEC/2015/OWD202) |
| WinHEC 2015 Battery Life: Debugging Power Problems with Standby Talk | Video        | Windows 10 CS/MS power transition flow, System integration, Impact of subcomponents on system, Power management of storage, networking and USB connected devices, Process for analyzing battery drain issues, and SleepStudy and Windows Performance Analyzer (WPA) tools overview | [Channel9](http://channel9.msdn.com/Events/WinHEC/2015/OWD200) (http://channel9.msdn.com/Events/WinHEC/2015/OWD200) |
| WinHEC 2015 Battery Life: Debugging Power Problems with Standby Lab  | Lab document | This lab demonstrates how to validate the energy efficiency of a Connected Standby or Modern Standby system                                                                                                                                                                        | [Channel9](http://channel9.msdn.com/Events/WinHEC/2015/OWDHOL304) (http://channel9.msdn.com/Events/WinHEC/2015/OWDHOL304) |
| Introduction to Connected Standby                                    | Document     | Details the connected standby experience, software impacts of connected standby, and hardware requirements to enable connected standby on qualified systems.                                                                                                                       | [MSDN](http://go.microsoft.com/fwlink/?LinkId=306985) (https://msdn.microsoft.com/en-us/library/windows/hardware/dn481216.aspx) |
| Understanding Connected Standby                                      | Video        | This session provides an overview of connected standby, including key user scenarios, system architecture, and technical requirements.                                                                                                                                             | [Channel9](http://go.microsoft.com/fwlink/?LinkId=306986) (http://channel9.msdn.com/events/BUILD/BUILD2011/HW-456T) |
| Desktop Activity Moderator                                           | Article      | Overview of DAM feature                                                                                                                                                                                                                                                            | [MSDN](http://go.microsoft.com/fwlink/?LinkId=306987) (https://msdn.microsoft.com/en-us/library/hh848040.aspx) |


## Considerations

To optimize your platform power efficiency, you need to consider the following:

- [How hardware affects Modern Standby](#how-hardware-affects-modern-standby)
- [How to design an OEM image to improve the Modern Standby experience](#how-to-design-an-oem-image-to-improve-the-modern-standby-experience)
- [How apps affect Modern Standby](#how-apps-affect-modern-standby)
- [How to get realistic test results](#how-to-get-realistic-test-results)
- [How to calculate power consumption](#how-to-calculate-power-consumption)

### How hardware affects Modern Standby

Hardware components use varying rates of power in active modes and
Modern Standby. You can assess the performance of hardware components to
see if they degrade the Modern Standby experience, and work with the
manufacturer to improve efficiency.

### How to design an OEM image to improve the Modern Standby experience

The design of a complete Windows image can improve or degrade the Modern
Standby experience. You can run tests during all phases of image design
and development to identify performance problems early and make design
decisions based on the results.

### How apps affect Modern Standby

Windows Store apps connect to many sources and integrate with hardware
devices directly. Apps can perform certain tasks during Modern Standby,
like updating live tiles or playing background music. These tasks draw
more power from the battery.

In some cases, a Windows Store app needs to finish an operation started
by the user before being suspended for Modern Standby. For this type of
activity, there are specific affordances that let the app continue
running for a period of time. Some apps can also prevent a device from
entering Modern Standby. You can assess apps in your Windows image to
see if they degrade the Modern Standby experience, and work with the app
developer to improve efficiency.

### How to get realistic test results

You can customize tests based on the hardware and software configuration
of your PC to get more accurate results. For example, you can run tests
with antimalware software enabled on the PC.

### How to calculate power consumption

You can estimate the rate of power consumption for your PC in different
scenarios, including Modern Standby. You can then use tests to verify
these estimates and identify performance problems caused by individual
components. To learn how to calculate power consumption, see the Battery
Considerations document.

## Self-hosting and user testing

We recommend that you have a self-host program to find bugs and improve
final quality for Modern Standby systems. Some bugs can be identified
only through self-host and real user testing. Areas to focus should
include the following scenarios:

-   CS enter/exit reliability and performance
-   Thermals
-   Responsiveness/performance
-   Connectivity
-   Battery life


## Recommended goals

The device's battery capacity and power draw should be carefully
analyzed to meet your battery life goals. Measure reasonable consumer
usage scenarios and environments to accurately project your device’s
battery life.

The following table shows minimum targets for battery life, based on our
user research. You should also compare your battery life goals with
in-market products.

| Scenario/workload            | Target |
|------------------------------|------------------------------|
| Modern Standby               | &gt;= 9 days of battery life |
| audio playback (display off) | &gt;=125 hours |

DRIPS% is a key metric to determine if a given system exhibits good or
bad battery life during a Modern Standby session.

| DRIPS %   | Evaluation |
|-----------|------------|
| 98 – 100  | Excellent |
| 95 – 97.9 | Very good |
| 90 – 94.9 | Good |
| 80 – 89.9 | Fair |
| &lt; 80   | Poor |


## Validation and testing

<!--No content was provided here in the original Word file.-->

### Generating a report on battery life estimates and history by using PowerCfg.exe

The PowerCfg.exe tool is installed with Windows. You can use the
PowerCfg.exe tool to identify battery life inconsistencies on your PC.
PowerCfg.exe uses system tracing in the Windows operating system to
report details of battery usage, including power states over a 72-hour
period. The battery usage report shows power usage data even when the PC
was not in an active state.

To generate a battery usage report, open an elevated command prompt and
run the following command: **powercfg.exe /batteryreport /output c:\\reports\\batterylife.html**

The battery usage report provides information about batteries installed
in the PC, power states and battery drains over the last 72 hours, a
history of battery usage and changes in charge capacity of the battery
going back several months, and a battery life estimate based on the
actual history of the PC.

For more information about the PowerCfg.exe tool, see [PowerCfg
command-line options](http://go.microsoft.com/fwlink/?LinkId=264942)
(https://technet.microsoft.com/en-us/library/hh824902.aspx).

### Generating a report on Modern Standby issues by using SleepStudy

SleepStudy is a new Windows diagnostics tool that supports Modern
Standby. It monitors a Modern Standby PC’s behavior and provides
actionable diagnostics on Modern Standby battery life. It’s available
only on CS-enabled PCs.

SleepStudy generates a summary of top issues causing poor Modern Standby
battery life. To get the report, run the powercfg /sleepstudy command in
an elevated command prompt. This new tool can be useful if you plan to
have a self-hosting program to find and triage bugs.

For more information about the PowerCfg /SleepStudy tool, see [Connected
standby
SleepStudy](https://msdn.microsoft.com/en-us/library/windows/hardware/dn495346.aspx)
(https://msdn.microsoft.com/en-us/library/windows/hardware/dn495346.aspx).

Here’s an example. This screen shows PC info, including device name,
firmware, and build version. The chart shows the drain rate while in
Modern Standby.

![Example chart of the rate of power drain shown in Sleep Study.](images/weg-sleepstudy-chart-drain-rate.jpg)

This is the per session table. In this example, session 3 has the
highest drain rate. Clicking it opens the next level of detail to
identify the possible offenders.

The **Energy Change** column represents the amount of energy drained
from the battery (in mWh) during a specific CS session. The **Change
Rate** column represents the average power consumption (in mW) during a
specific CS session.

![Table in Sleep Study showing data about the rate of power drain in an example.](images/weg-sleepstudy-table-drain-rate.jpg)

In this example, there’s a UART driver that’s active the entire time in
this session. This can be used as a starting point for a more thorough
investigation.

![Top offenders shown in an example in Sleep Study.](images/weg-sleepstudy-screen-top-offenders.jpg)

#### Automating connected standby testing by using PwrTest.exe

You can use the PwrTest.exe tool in the Microsoft Windows Drivers Kit
(WDK) to cycle through power states, including connected standby, to
record processor power management and battery information from the
system over a period of time.

**To run a connected standby scenario with PwrTest.exe**

1. Install the [WDK](http://go.microsoft.com/fwlink/?LinkId=226411)(https://msdn.microsoft.com/en-US/windows/hardware/gg454513).

2. At a command prompt, navigate to the PwrTest.exe version that matches the architecture of the PC. For example, type: **cd C:\\WDK\\Tools\\PowerManagement\\i386**

3. Run PwrTest.exe with the **/cs** option. You can also specify the number of cycles (**/c**), delay time between transitions in seconds (**/d**), and exit time in seconds (**/p**). For example, type: **pwrtest.exe /cs /c:4 /p:120 /d:150**

![Note](images/note-regular.gif)**Note**&nbsp;&nbsp;&nbsp;The connected standby scenario requires the virtual power button driver.
This driver is installed by the Windows Device Testing Framework (WDTF),
which is found in WDK 8.

The PwrTest.exe connected standby scenario log file provides information
about transitions between power states.

The Connected Standby Stress hardware compatibility test also lets you
specify parameters like the number of test cycles and delays between
test cycles.

For more information, see
[PwrTest](http://go.microsoft.com/fwlink/?LinkId=306989)
(https://msdn.microsoft.com/en-us/library/windows/hardware/ff550682.aspx).

# Delivering a great energy efficiency experience

Battery life and energy efficiency are among the most active topics in
modern computing. Recent studies indicate that 76% of consumers rate
battery life as "extremely important" when choosing a tablet and mobile
PC. Because of its role as a competitive differentiator, battery life is
crucial.

It’s important to take a holistic approach to optimize the power
consumption (watts used) across the Windows base hardware platform,
Windows image, and extensions (drivers, software preload, services, and
so on).

## Considerations

The energy efficiency and battery life of your PC is affected at every
step of the design and development process.

### How to select battery capacity

Determine your battery life goals, industrial design, target cost, and
the target market for your PC to help you select an appropriate battery
capacity. Consider this early in your planning and development phase so
that you don’t end up with too small of a battery to meet your goals.
For more information about modeling battery life runtime, see the
*Battery Guidelines* document included with the WEGs on Connect.

### How to design an OEM image to improve battery life

The design of a complete Windows image can improve or degrade battery
performance. For example, your selection of apps, drivers, and power
plans can change the power consumption of the PC.

You can run tests during all phases of image design and development to
identify performance problems early and make design decisions based on
the results.

## Recommended goals

The goals described in this section are intended to help you design a
fully integrated platform that delivers a competitive battery life while
running Windows. The goals described aren’t a commitment for Windows to
deliver, they are targets for you to meet on your hardware. The goals
will continually be adjusted based on feedback from ecosystem partners,
Windows development, and platform power management validation.

Carefully analyze the device's battery capacity and power draw to meet
your battery life goals. Measure reasonable consumer usage scenarios and
environments to accurately project your device’s battery life.

The following tables show what our user research indicates is the
minimum quality bar according to user expectations. You should also
compare your battery life goals with in-market products. You can use the
Windows battery assessment test available in the Windows Assessment and
Deployment Kit (ADK), a comparable energy efficiency test tool or a
comparable test to measure reasonable consumer usage scenarios and
environments to validate battery life.

| Scenario                                                                      | Tablet (CS)     | Convertible     | Notebook |
|-------------------------------------------------------------------------------|-----------------|-----------------|--------------|
| Battery life video playback @ 150 - 200 nits (hours) depending on form factor | &gt;= 12        | &gt;= 6         | &gt;= 5 |


| Metric                               | Target |
|--------------------------------------|--------|
| System timer resolution              | 15 ms |
| Maximum processor state on DC and AC<br/>(Processor Power Management)<br/>Doesn’t apply to connected standby–capable systems. |   100% |

                                         


## Validation and testing

You can use the Windows Assessment Toolkit, a comparable energy
efficiency test tool or a comparable test to measure reasonable consumer
usage scenarios and environments to improve performance of your PC
beyond minimum requirements. Windows assessments related to active
workload battery life include:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Idle Energy Efficiency Job</strong></dt>
<dd>
<p>Identifies issues with software, drivers, and devices during system idle
that reduce your system’s energy efficiency.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Battery Run Down Job</strong></dt>
<dd>
<p>Measures battery life during a typical system usage scenario and reports
energy efficiency issues during idle periods of the system.</p>
<p>This job includes both the Idle Energy Efficiency workload and a Local
Video Playback Energy Efficiency workload.</p>
</dd>
</dl>


### Changes in Energy Efficiency job parameters for ADK 8.1

There have been some modifications to the Energy Efficiency job
parameters UI in the ADK 8.1:

-   If the **Loop workloads until specified battery level** checkbox is
    selected, then the assessment will run only one loop of all
    chosen workload.

-   If you choose to **Generate diagnostic information** then you will
    get **diagnostics**, which will collect traces during the
    workload runs.

	-   **Create Power Profile Issues** will collect Powercfg.exe /energy
		data and add it to the report.

	-   **Collect analysis Trace** will allow you to collect an advanced
		Idle analysis trace which runs for 3 minutes and gathers CPU
		sampling stacks.

The ADK 8.0 scenarios can then be translated into the following:

-   Rundown without diagnostics

	-   Choose **Loop workloads until specified battery level**.

		Uncheck **Generate diagnostic information**.

-   Rundown with diagnostics

	-   Choose **Loop workloads until specified battery level**.

	-   Check **Generate diagnostic information**, along with **Create Power
		Profile Issues** and **Collect Analysis Trace**.

-   Diagnostics only

	-   Uncheck **Loop workloads until specified battery level**.

	-   Check **Generate diagnostic information**, along with **Create Power
		Profile Issues** and **Collect Analysis Trace**.

### Configure your PC for testing

A processor-intensive driver, an incorrect firmware setting, or a poorly
configured power setting can cause a significant increase in power
consumption. When designing and testing your system, experiment with
multiple configurations of these aspects to achieve the best balance of
performance and energy efficiency. Use your test results to drive
improvements back into the design of your PC and your Windows image to
deliver a great active workload battery life.

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Analyze hardware components</strong></dt>
<dd>
<p>Ask hardware manufacturers for their
power-consumption test results for each hardware component.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Analyze drivers</strong></dt>
<dd>
<p>Validate each new driver for battery impact. As
each new driver is added to the system, observe its effect on power
consumption. One poorly performing driver can greatly affect system
performance.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Analyze apps, services, and other software</strong></dt>
<dd>
<p>Validate each new app
and system service for battery impact. As each new app is added to the
system, observe the effect to power consumption. One poorly performing
app can greatly affect system performance.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Configure power plans</strong></dt>
<dd>
<p>Optimize Windows power-plan settings to
balance performance needs and battery life. This is not applicable to
connected standby–enabled systems.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Test the power of the PC</strong></dt>
<dd>
<p>Compare the overall power of the PC to the
power consumed using a Windows installation with only drivers installed.
Some PCs have shown a 40% decrease in battery performance when
preinstalled apps and power policies are added to the image.</p>
</dd>
</dl>

We recommend that you use the following environment settings when you
test battery life on your PC. These settings will help you to get
consistent and reliable data for realistic user scenarios.

<table>
<thead>
<tr class="header">
<th>Component</th>
<th>Setting</th>
<th>Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Display setting</strong></td>
<td>Brightness = 150 - 200 nits depending on form factor</td>
<td>Brightness is measured on a white desktop background with the brightness meter placed in the center of the screen</td>
</tr>
<tr class="even">
<td><strong>Power policy</strong></td>
<td><p>Balanced</p>
<p>Display dimming timeout disabled</p>
<p>Display off timeout disabled</p>
<p>Adaptive brightness disabled</p>
<p>S3 timeout disabled (does not apply to systems capable of connected standby)</p>
<p>S4 timeout disabled</p></td>
<td>n/a</td>
</tr>
<tr class="odd">
<td><strong>Radios</strong></td>
<td><p>Wi-Fi on <em>and</em> connected</p>
<p>All other radios on but not connected</p></td>
<td>Connect to a consumer class wireless router that has Internet access</td>
</tr>
<tr class="even">
<td><strong>Other networking</strong></td>
<td>Ethernet disconnected</td>
<td><p>Disconnect before starting test</p>
<p>Reconnect after battery rundown is complete</p></td>
</tr>
</tbody>
</table>



## Tools and technical reference

You can learn more about battery life and download tools to help you
analyze performance from these resources:

| Resource title                                               | Content type | Description                                                                                                                                                                                                                                                                | Download link |
|--------------------------------------------------------------|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Windows Assessment and Deployment Kit<br/><br/>Idle Energy Efficiency and Battery Run Down jobs | Tool | The Windows ADK helps you measure energy efficiency on your PC. | Use the latest Windows ADK drop from Connect |
| Windows Engineering Readiness Training: Battery Life Session | Reference    | Includes information on user research, using the ADK tools, and selecting a battery.  | [Connect](http://go.microsoft.com/fwlink/?LinkId=306535) (https://connect.microsoft.com/site1304/Downloads/DownloadDetails.aspx?DownloadID=48261) |
| Delivering Great Performance and Battery Life                | Video        | Describes how to create high-performance and energy efficient experiences on the full spectrum of Windows 8 platforms. Learn app design and development practices that maximize the performance of apps and power consumption as a whole.                                  | [Channel9](http://go.microsoft.com/fwlink/?LinkId=306082) (http://channel9.msdn.com/events/BUILD/BUILD2011/HW-459T) |
| Improving Battery Life and Energy Efficiency                 | Video        | Demonstrates how the Windows ADK has made it easy to consistently measure battery life, and to identify and fix energy efficiency problems. Learn how to configure battery life assessments, and design assessment workflows, for multiple scenarios.  |  [Channel9](http://go.microsoft.com/fwlink/?LinkId=306083) (http://channel9.msdn.com/events/BUILD/BUILD2011/HW-149P) |
| Results for Idle Energy Efficiency                           | Document     | This topic helps you interpret the results produced by an Energy Efficiency job that uses the Idle workload. |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/hardware/jj130809.aspx) (https://msdn.microsoft.com/en-us/library/windows/hardware/jj130809.aspx)  |
| Mobile Battery Life Solutions                                | Document     | Outlines issues and solutions for advancing battery life for portable computers that run the Windows 7 operating system. Provides system design, power policy guidelines, and preinstallation configuration recommendations as well as test configuration recommendations. | [MSDN](http://go.microsoft.com/fwlink/?LinkId=306534) (https://msdn.microsoft.com/en-us/library/windows/hardware/dn641606.aspx) |
| Using PowerCfg to Evaluate System Energy Efficiency          | Document     | Provides information about functionality in the PowerCfg utility for evaluating system energy efficiency for the Windows family of operating systems.  | [MSDN](http://go.microsoft.com/fwlink/?LinkId=306533) (https://msdn.microsoft.com/en-US/library/windows/hardware/dn550976) |


# Instrumenting Your Code with ETW

Event Tracing for Windows (ETW) is a high speed tracing facility built
into Windows. Using a buffering and logging mechanism implemented in the
operating system kernel, ETW provides an infrastructure for events
raised by both user mode (apps) and kernel mode components (drivers).
ETW can be used for system and app diagnosis, troubleshooting, and
performance monitoring. Historically, tracing was used to diagnose
unexpected behavior both in hardware and apps. Recently there has been
increasing demand for managing and monitoring system stability and
performance to meet business demands. As a result, performance analysis
in development and production environments became a critical part of the
computing world. In contrast to failures and errors, performance related
issues are difficult to detect and diagnose because they’re often
dependent on configuration and workload. Tracing in a production
environment provides valuable data for detecting root-cause performance
related issues, as well as capacity planning and evaluation.

The ETW mechanism lets you control tracing sessions dynamically, which
makes it possible to capture detailed tracing in production environments
without system reboot or app restart.

This section will show you how to use ETW to do precise performance
measurement and analysis.

-   Kernel-mode driver code
-   Traditional desktop processes and services
-   Windows Store apps (C\#)

## Overview

Following are some of the beneficial characteristics of ETW:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Robust</strong></dt>
<dd>
<p>It provides efficient buffering and logging mechanisms.
    The tracing buffer is managed by the kernel. Tracing through ETW is
    immune to app crashes and hangs. In case of system failure, unsaved
    events are accessible in a memory dump file.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Dynamic</strong></dt>
<dd>
<p>Tracing sessions can be started, stopped, reconfigured,
    and paused dynamically without system reboot or app restarts. ETW
    offers multiple modes to meet various demands.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Built into Windows</strong></dt>
<dd>
<p>Other than the controller app, you don’t
    need additional tools. Windows has a few inbox controllers as well
    as consumer apps.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Lightweight</strong></dt>
<dd>
<p>The overhead of historical tracing and saved log
    files are highly optimized so they don’t affect app or
    system performance. The logging mechanism uses kernel mode buffers
    that will be written to disk by a separate writer thread so that
    overhead from tracing is limited.</p>
</dd>
</dl>

Only basic text-based tracing mechanisms were available in Windows
before Windows 2000. They were **DbgPrint**() and **DebugPrint**() APIs. They
required debuggers and typically weren’t dynamically controllable. The
Windows tracing mechanism evolved over time, and there are four
different tracing mechanisms available today. ETW and Event Log API sets
were merged into the Unified Event Logging API set in Windows Vista.
This gives users and developers a unified mechanism for raising events.

There are three types of events:

1.  Windows software trace preprocessor (WPP) and Classic ETW

2.  Managed Object Format (MOF): The MOF is a way to describe WMI objects and enable and decode events.

3.  Manifest based: An XML-based unified tracing definition was
    introduced in Windows Vista. An XML file contains elements for
    events that a provider writes. For more information, see [Writing an
    Instrumentation
    Manifest](http://go.microsoft.com/fwlink/?LinkId=309789) (https://msdn.microsoft.com/library/dd996930.aspx).

![Note](images/note-regular.gif)**Note**&nbsp;&nbsp;&nbsp;The guidance in this section will focus solely on manifest-based event
instrumentation.

Here are some important characteristics of ETW:

-   Developers can choose the right sets of implementation based on intended usage (e.g., Printf, like WPP implementation, is easy to add for debugging purpose events)

-   The infrastructure manages commonly used information like timestamps, function names, and source file line numbers

-   The same implementation is used for user mode apps and kernel mode components

-   It’s accessible in crash dumps and live debug

-   It can be redirected to the kernel debugger for a real-time view

-   Real-time view

-   Log files are saved in a binary log file (an ETL file)

-   It supports multiple processes logging

-   High throughput

-   Log files can be viewed on another machine

-   It supports circular buffering for continuous logging and monitoring

-   It can be grouped into one of the channels based on the target audience

## ETW architecture

There are four main components in ETW: provider, session, controller,
and consumer.

![Diagram of the four main components of the ETW architecture.](images/weg-diagram-etw-architecture-four-components.png)

### Provider

A *provider* is an instrumented component that generates events. A
provider can be a user mode app, a kernel mode driver, or the Windows
kernel itself. In addition to fixed event data (header), an event can
carry user data.

An *event* is an event-based representation of data. The data can be
used for in-depth analysis. An event can also be used to produce
counters. *Counters* provide a sample-based view of data. They typically
contain a small set of data to show current state, for example I/O bytes
per second and interrupts per second.

A provider must register with ETW and send events from its code by
calling the ETW Logging APIs. Providers register a callback function for
enable and disable notification so that tracing can be enabled and
disabled dynamically.

### Session

The ETW session infrastructure works as an intermediate broker that
relays the events from one or more providers to the consumer. A session
is a kernel object that collects events into kernel buffer and sends
them to a specified file or real-time consumer process. Multiple
providers can be mapped to a single session, which allows users to
collect data from multiple sources.

### Controller

A controller starts, stops, or updates a trace session. A session is a
unit for tracing. Providers are mapped (or enabled) to a specific
session. A controller enables and disables providers so that they can
start sending events to ETW. Controller functionalities can be invoked
with tools provided by Microsoft, or you can write your own app.

Logman.exe is an in-box controller app. Windows Performance Recorder
(WPR) in the Windows Performance Toolkit is the recommended controller
process.

### Consumer

A *consumer* is an app that reads a logged trace file (ETL file), or
captures events in an active trace session in real time, and processes
events. Event Viewer and Resource Monitor are in-box ETW consumer apps.

Windows Performance Analyzer (WPA) in the Windows Performance Toolkit is
the recommended consumer process.

## Implementing ETW instrumentation

<!--There was no content provided here in the original Word file.-->

### Plan your instrumentation

Decide where you’ll log ETW events in your code. This should correlate
with important user scenarios or frequent use cases that you want to
measure, analyze, and eventually improve. These are some examples of
what could be instrumented:

-   State changes
-   Begin/End of significant operations
-   Resource creation/deletion
-   Other events related to performance or reliability
-   Debug events

### Create a manifest file and implement your provider

Manifest-based ETW events can be implemented in user-mode apps,
including services, as well as in kernel mode components like drivers,
using an XML file called the *event manifest*. For more information, see
[Event Tracing Functions](http://go.microsoft.com/fwlink/?LinkId=309791)
(https://msdn.microsoft.com/library/windows/desktop/aa363795.aspx).

An event manifest is divided into the following sections:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Provider definition: &lt;provider&gt;</strong></dt>
<dd>
<p>Contains the name and GUID of the provider you’re creating, and the
location of the binary that’s instrumented (eventually containing the
instrumentation resources needed by the ETW framework).</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Event payload: &lt;templates&gt;</strong></dt>
<dd>
<p>Contains definitions of the data types that will be included as payload
in the events. Available types include:</p>
<ul>
<li>
<p>Signed and unsigned 8-bit, 16-bit, 32-bit, and 64-bit integers</p>
</li>
<li>
<p>ANSI and Unicode strings</p>
</li>
<li>
<p>Float and double</p>
</li>
<li>
<p>Boolean, Binary, GUID, Pointer, FILETIME, SYSTEMTIME, SID, and HexInt32</p>
</li>
</ul>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Static event data</strong></dt>
<dd>
<p>Used to help interpret, sort, and group the events.</p>
<ul>
<li>
<p>&lt;Tasks&gt; define the names of the operations (or tasks) that are being instrumented.</p>
</li>
<li>
<p>&lt;Opcodes&gt; define the types of operations that you want to
    create for your events, like the Start event, the Stop event for
    delimiting operations in time, the Informational event for logging
    debug data, and so on.</p>
</li>
<li>
<p>Event definition: &lt;events&gt;</p>
<p>Ties together payload and static data. Your code will emit events as
defined by what is listed in this section.</p>
</li>
</ul>
</dd>
</dl>


Here’s an example of an event manifest:

```
<provider
    guid="{3877cf22-0702-4dfc-965e-7fdc7780cd74}"
    name="MyEventProvider"
    symbol="MY_EVENT_PROVIDER"
    messageFileName="%temp%\MyProviderBinary.exe"
    resourceFileName="%temp%\MyProviderBinary.exe“
    >
  <templates>
    <template tid="T_MyProvider_1">
      <data inType="win:Int32" name="Operation Id" />
      <data inType="win:Int32" name="Memory Allocated (MB)" />
    </template>
  </templates>
  <opcodes>
    <opcode name="DebugInfo" symbol="_DebugInfo" value="10"/>  
  </opcodes>
  <tasks>
    <task name="OpMemAllocation" symbol="OpMemAllocation_Task" value="1“
          eventGUID="{87ebca33-bf25-442c-9256-82ba484586e8}"/>
  </tasks>
  <events>
    <event symbol="DebugInfo" template="T_MyProvider_1" value="200" 
       task="OpMemAllocation" opcode="DebugInfo" />
  </events>
```

To write your manifest file, you can use:

-   Manifest Generator (ECManGen.exe), available in the Platform SDK

-   Visual Studio (Eventman.xsd), available in the Platform SDK

### Compile the event manifest

The next step is to compile the manifest by using the [Message
Compiler](http://go.microsoft.com/fwlink/?LinkId=309792)
(<https://msdn.microsoft.com/library/windows/desktop/aa385638.aspx>)
tool (mc.exe), which is available in the Platform SDK. This will
generate a few files needed to instrument, compile, and build your
instrumented code:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>ManifestFileName.h</strong></dt>
<dd>Contains event descriptors to use in code.</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>ManifestFileName.rc</strong></dt>
<dd>A resource compiler script.</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>MSG00001.bin</strong></dt>
<dd>A language resource.</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>ManifestFileNameTEMP.bin</strong></dt>
<dd>A template resource (provider and metadata).</dd>
</dl>

To compile user mode code, type this:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -um** \[*ManifestFileName*\]

To compile kernel mode code, type this:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -km** \[*ManifestFileName*\]

To compile managed or JavaScript code, type this:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -cs** \[*ManifestFileName*\]<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -css** \[*ManifestFileName*\]<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -generateProjections** \[*ManifestFileName*\]

### Update your code

The next step is to add instrumentation to your code. Run Visual Studio,
add the header file generated by the Message Compiler, and don’t forget
to build the resource file into your program.

Look for the following in the header to find what macros (or class
methods) to call in your code:

-   EventRegister&lt;*YourProviderName*&gt;

	Used to register your provider (at app start).

-   EventUnregister&lt;*YourProviderName*&gt;

	Used to unregister your provider (at app finish).

-   EventWrite

One macro (or method) for each event defined in your manifest (in the
&lt;events&gt; node).

Once your code is properly instrumented, you can build your binary.

For drivers, review the
[EventDrv](http://go.microsoft.com/fwlink/?LinkId=256109)
(https://code.msdn.microsoft.com/windowshardware/Eventdrv-42894135)
sample available on MSDN. Register the driver as an event provider by
using the ETW kernel mode EtwRegister function:

-   Add this function in your DriverEntry routine after the code that
    creates and initializes the device object.

-   Match the call to the EtwRegister function with a call to
    EtwUnregister in your driver's Unload routine.

### Log and visualize events

Once you have a properly instrumented component, you can start logging
events on a test system. You first need to prepare that system for
logging by registering your provider by using wevtutil, the inbox tool.

1.	Copy your component to the location that was specified in your manifest by the resourceFileName attribute:

	**xcopy /y** *MyProviderBinary.exe* **%temp%**

2.	Register the providers:

	**wevtutil um** *etwmanifest.man*<br/>
	**wetvutil im** *etwmanifest.man*

3.	Verify that the provider is visible:

	**logman query providers** 

	Your provider name/GUID should show up in the list.

Remember that event metadata is stored in the instrumented binary, not
in the manifest file. Using wevtutil to install a manifest on the PC
puts a link into the registry connecting the provider GUID to the binary
that contains the event metadata. The name and path of that binary is
taken from the manifest file provided. You can discard the manifest file
afterwards.

This implies that the binary that contains the event metadata also needs
to be accessible and loadable, as it is on the machine you’re using to
decode. WPR/xperf makes the process more portable by injecting the
metadata in the trace.

Now that your provider is properly installed on this system, you can
start a tracing session to gather events from your component into an ETL
file. You can use either Windows Performance Recorder (WPR) or Xperf, the
command line tool, both available in the Windows Performance Toolkit.

1.  Start tracing:

	**xperf** **-start** *MySession* **-on** *MyEventProvider* **-f** *MySession.etl*

	In that command line, **-start** gives the event collection session a name,
	and **-on** tells ETW that you want to collect events from your provider in
	this session. (There can be multiple **-on** arguments.)

2.	Execute your workload.

3.	Stop tracing:

	**xperf** **-stop** *MySession*

Once you have an ETL file, you can open it with the Windows Performance
Analyzer tool and visualize your events with the Generic Events graph
and table.

![Graph and charts of generic events in Windows Performance Advisor (WPA).](images/weg-wpa-screen-generic-events-graph-and-table.jpg)

# Performance Tools

Microsoft provides tools to help you improve the performance of your
device. You can use test tools from other publishers to measure and
improve the performance of your devices as well.

This section includes information about the Windows ADK and download
links for the Windows ADK and other Microsoft performance tools.

## Download performance tools

You can download these tools to assess and improve the performance of
your PC.

<table>
<thead>
<tr class="header">
<th><strong>Tool</strong></th>
<th><strong>Description</strong></th>
<th><strong>Download link</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Windows Assessment and Deployment Kit (ADK)</td>
<td><p>Tools to assess and deploy Windows images. You can use tools in the Windows ADK to improve the performance of your PC running Windows beyond the minimum requirements of the Windows HCK.</p>
<p>Includes:</p>
<ul>
<li><p>Windows Assessment Toolkit</p></li>
<li><p>Windows Assessment Services</p></li>
<li><p>Windows Performance Toolkit (WPT)</p></li>
</ul></td>
<td>Use the latest ADK drop from Connect.</td>
</tr>
<tr class="even">
<td>Windows Hardware Lab Kit (HLK)</td>
<td>Tools to test whether your PC running Windows meets the requirements for compatibility. You can use the performance tools in the Windows ADK to improve the performance of your PC beyond the Windows HLK requirements.</td>
<td>Use the latest HCK drop from Connect.</td>
</tr>
<tr class="odd">
<td>PowerCFG.exe</td>
<td><p>Inbox tool to control power schemes (also named power plans), to use the available sleep states, to control the power states of individual devices, and to analyze the system for common energy-efficiency and battery-life problems.</p>
<p>Prerelease <a href="http://go.microsoft.com/fwlink/p/?LinkID=264942">MSDN documentation</a> (https://technet.microsoft.com/en-us/library/hh824902.aspx?f=255&amp;MSPPError=-2147217396) might not yet include new features like /sleepstudy.</p></td>
<td>Inbox.</td>
</tr>
<tr class="even">
<td>PwrTest.exe</td>
<td><p>Test tool that enables developers, testers, and system integrators to exercise and record power management information from the system. You can use PwrTest to automate sleep and resume transitions and to record processor power management and battery information from the system over a period of time.</p>
<p>See <a href="http://go.microsoft.com/fwlink/?LinkId=309778">PwrTest</a> (https://msdn.microsoft.com/library/windows/hardware/ff550682.aspx) for more information.</p></td>
<td>Available in WDK (see below).</td>
</tr>
<tr class="odd">
<td>Media eXperience Analyzer</td>
<td>Media performance, quality, and power analysis tool that’s used by developers and testers to optimize media scenarios on devices running Windows. This tool helps you analyze failures in media playback, webcam capture, and real-time communications HCK requirements.</td>
<td><a href="http://www.microsoft.com/en-us/download/details.aspx?id=43105">Download center</a> (http://www.microsoft.com/en-us/download/details.aspx?id=43105)</td>
</tr>
<tr class="even">
<td>Visual Studio Professional 2012</td>
<td>Visual Studio Professional 2012 is a professional-quality integrated development environment that simplifies the tasks of creating, debugging, and deploying software for Windows, Microsoft Office, and the web.</td>
<td><a href="http://go.microsoft.com/fwlink/?LinkId=309780">MSDN</a><br />
(https://msdn.microsoft.com/en-us/windows/hardware/gg454513)</td>
</tr>
<tr class="odd">
<td>Windows Driver Kit (WDK)</td>
<td>WDK integrates with Visual Studio Professional 2012 to provide a complete environment for developing, deploying, testing, and debugging drivers.</td>
<td>Use the latest WDK drop from Connect.</td>
</tr>
</tbody>
</table>


# Understanding the Windows ADK tools

The Windows Assessment Toolkit and the Windows Performance Toolkit make
up the Windows Assessment and Deployment Kit (ADK). Together they
provide a complete solution for evaluating overall computer performance
and automating the deployment of the Windows operating system to new
PCs.

This section focuses on the Windows Assessment Toolkit. The assessment
results are used to diagnose potential problems, so that the hardware
and apps you develop are responsive and have a minimal impact on battery
life, startup performance, and shutdown time. The same assessments are
available for OEMs, ISVs, IHVs, enthusiasts, and other members of the
community to establish a common framework to measure, compare, and
review various aspects of quality.

Important business objectives can be achieved by using the Windows
Assessment Toolkit:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Measure & compare</strong></dt>
<dd>
<p>You can use the data to compare components (apps, drivers, or both)
against other similar components to facilitate your decision making,
recommendations, and competitive benchmarking.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Improve quality</strong></dt>
<dd>
<p>You can work independently or involve partners to build a component
(app, driver, or both) as per pre-defined quality criteria.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Track quality</strong></dt>
<dd>
<p>You can create a process for efficiently tracking the quality of
component versions and detect regressions after each iteration.</p>
</dd>
</dl>


The Assessment Toolkit is typically used in these scenarios:

<table>
<thead>
<tr class="header">
<th>Scenario</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>&quot;Black box&quot;</td>
<td>Run a predefined job and examine the results for any unusual values or indications of issues with drivers, memory usage, or other areas that the assessments address.</td>
</tr>
<tr class="even">
<td>Comparing results</td>
<td><ul>
<li><p>Run a single assessment using the recommended settings on any computer that’s running a supported operating system.</p></li>
<li><p>Use the Windows AC to package the job to run on another computer.</p></li>
<li><p>Save the results to a share so that you can compare them.</p></li>
<li><p>Compare the results from any computer running Windows with those of any other supported operating system to identify differences.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td>Clean computer</td>
<td>Run assessments on a clean computer that includes only the operating system to establish baseline system results.</td>
</tr>
<tr class="even">
<td>Computer with added hardware or app components</td>
<td>Add new hardware or apps to the clean computer system and then re-run the assessments to compare the results with clean computer results.</td>
</tr>
<tr class="odd">
<td>Creating assessments</td>
<td>Use public APIs to develop or extend an assessment, or integrate assessments with your tools and infrastructure.</td>
</tr>
</tbody>
</table>

For more information, see [Windows Assessments and Deployment
Kit](http://go.microsoft.com/fwlink/?LinkId=206587)
(https://msdn.microsoft.com/en-us/library/windows/hardware/hh825420.aspx).

<table>
<thead>
<tr class="header">
<th>Tool</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Windows Assessment Toolkit</td>
<td><p>Tools to discover and run assessments on a single PC. <em>Assessments</em> are tasks that simulate user activity and examine the state of the PC. Assessments produce metrics for various aspects of the system, and provide recommendations for making improvements. The Windows Assessment Toolkit includes:</p>
<ul>
<li><p>Windows Assessment Console</p></li>
<li><p>Assessments</p></li>
</ul>
<p>For more information, see <a href="http://go.microsoft.com/fwlink/?LinkId=214554">Windows Assessment Toolkit</a> (https://msdn.microsoft.com/en-us/library/windows/hardware/hh825508.aspx).</p></td>
</tr>
<tr class="even">
<td>Windows Assessment Services</td>
<td><p>App for remotely managing settings, PCs, images, and assessments in a lab environment where Windows Assessment Services is installed. This app can run on any PC that has access to the server that’s running Windows Assessment Services.</p>
<p>For more information, see <a href="http://go.microsoft.com/fwlink/?LinkId=215628">Windows Assessment Services</a> (https://msdn.microsoft.com/en-us/library/windows/hardware/hh825573.aspx).</p></td>
</tr>
<tr class="odd">
<td>Windows Performance Toolkit (WPT)</td>
<td><p>Tools to record system events by using Event Tracing for Windows, and a tool to analyze performance data in a graphical user interface. Includes:</p>
<ul>
<li><p>Windows Performance Recorder</p></li>
<li><p>Windows Performance Analyzer</p></li>
<li><p>Xperf</p></li>
</ul>
<p>For more information, see <a href="http://go.microsoft.com/fwlink/?LinkId=228914">Windows Performance Toolkit</a> (https://msdn.microsoft.com/en-us/library/hh162945.aspx).</p></td>
</tr>
<tr class="even">
<td>Assessment Execution Engine (AXE)</td>
<td><p>The Assessment Execution Engine (AXE) lets you manage and execute Windows system assessments. AXE provides infrastructure needed to manage assessments using a UX tool or script, run assessments, make measurements, process raw data into results, run diagnostics, and publish the results.</p>
<p>For more information, see <a href="http://go.microsoft.com/fwlink/?LinkId=309781">Assessment Execution Engine</a> (https://msdn.microsoft.com/library/windows/desktop/hh437709.aspx).</p></td>
</tr>
</tbody>
</table>


## Understanding the Windows Performance Toolkit

| Resource title                                               | Content type  | Description                                                                                                                                                                                                                                                                                                                 | Link |
|--------------------------------------------------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Windows Performance Analyzer                                 | Documentation | WPT Documentation and videos                                                                                                                                                                                                                                                                                                | [MSDN](https://msdn.microsoft.com/en-us/library/windows/hardware/hh448170.aspx) (https://msdn.microsoft.com/en-us/library/windows/hardware/hh448170.aspx) |
| CPU Analysis Techniques                                      | White paper   | This guide provides detailed techniques that you can use to investigate Central Processing Units (CPU)-related issues that impact assessment metrics.                                                                                                                                                                       | [MSDN](http://msdn.microsoft.com/en-us/library/windows/desktop/jj679884.aspx) (https://msdn.microsoft.com/en-us/library/windows/desktop/jj679884.aspx) |
| Engineering performance with the Windows Performance Toolkit | Video         | The Windows Performance Toolkit (WPT) is a powerful tool, used widely by the Windows engineering team within Microsoft, for improving app and system performance. This session focuses on providing tips and tricks, in a case study format with videos, for using the WPT along with WPS traces to optimize your own apps. | [Channel 9](http://channel9.msdn.com/events/BUILD/BUILD2011/HW-59T) (http://channel9.msdn.com/events/BUILD/BUILD2011/HW-59T) |



# Setting up a test environment for ADK and WAS

Installing Windows Assessment Service (WAS) server to a server machine
is straightforward. But configuring the network environment might not be
so simple. Incorrect network topology can cause assessment job failures
for various reasons. It’s important to understand your organization’s
requirements, network policy, and so on.

Before you begin, get familiar with those two resources:

-   [Windows Assessment Services Step-by-Step
    Guide](http://go.microsoft.com/fwlink/?LinkId=215630) (https://msdn.microsoft.com/en-us/library/windows/hardware/hh825315.aspx)

-   [Installing Windows Assessment
    Services](http://go.microsoft.com/fwlink/?LinkId=253667) (https://msdn.microsoft.com/library/windows/hardware/hh825515)

## Network topology considerations

This section covers the things you have to consider to implement a WAS
infrastructure in your lab, and some optional items to achieve
additional features and automations. The objective is to set up a local
network to better simulate the “quiet” environment that customers will
experience at home.

These items are required:

| Item               | Type              | Note |
|--------------------|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Ethernet           | Hardware          | WAS requires Ethernet. For robustness and efficiency, we recommend gigabit Ethernet. |
| Symbols            | Internet access   | ADK’s auto-analysis feature doesn’t work without symbol files. After RTM, operating system binaries are updated via Windows Update, and it isn’t practical to collect updated symbol files. We recommend that you use public symbol server and cache the symbol files locally for re-use.<br/><br/>For Connect operating system drops, use the provided symbols packages and cache them locally on the WAS server. ||
| Wi-Fi Access Point | Hardware          | Recommended to connect to a Wi-Fi network when you run Energy Efficiency assessments. |
| DHCP Server        | Hardware/Software | PXE Boot requires DHCP. **The WAS server can be a DHCP server as well**. You can use a Wi-Fi router as a DHCP server. If you don’t plan to push the operating system image by using WAS via PXE boot, you don’t have to have DHCP. |
| File Share         | Hardware          | Depending on how you want to store your results files. **Results can be stored on the WAS server as well.** |
| USB Flash Drives   | Hardware          | You can boot into Windows PE to inventory a bare metal machine to WAS, for example. |

These items are not required, but are often necessary depending on your
needs and corporate network policy:

| Item                    | Type              | Note |
|-------------------------|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DNS Server              | Hardware/Software | Typically not required, as your test network is single subnet. If you need to configure multiple subnets, you need to have name resolution, like DNS Server. |
| IP Control Power Switch | Hardware          | You can buy a power switch that you can control remotely. You can use this to fully automate Energy Efficiency assessments. |
| USB to Ethernet Adapter | Hardware          | Some form factors don’t have Ethernet. You can use Wi-Fi as well. We recommend that you use an USB Ethernet adapter with inbox driver support so you don’t have to customize Relax Windows PE. |

The diagram below illustrates one possible network configuration.

![Diagram of an example network of devices and connections.](images/web-diagram-network-example-configuration.png)

Typical corporations require this type of test environment to be
isolated from the corporate network. Corporate IT policy doesn’t allow
you to have your own DHCP server, for example. But you might want to
access WAS so that you can remotely schedule jobs, monitor progress, and
review results. In addition, performance data might be affected if you
have DUTs on the corporate network because the corporate network might
generate special network traffic.

Servers are typically equipped with a multiport Ethernet adapter or
multiple Ethernet adapters. You can consider making your WAS server a
multi-home server. A multi-home server has one Ethernet adapter
connected to an isolated test network and another to your corporate
network. With this configuration, people in your organization can access
WAS without being in your test lab, via WASC or Remote Desktop.

## Optional SQL database

Windows Assessment Services also lets you import results from one or
more Windows Assessment Services labs into a central SQL database for
generating consolidated reports. The SQL database is an optional
component of the WAS infrastructure.

Keep in mind that results stored in this optional SQL Server database
don’t include the Assessment Platform presentation layer and can’t be
viewed in the Windows Assessment Services - Client (Windows ASC). This
component lets you develop custom reporting solutions to fulfill any
needs not covered by the default WAS/WAC reporting layer.

You can use the ResultsUtil command to configure the WAS server to
automatically use the database or to import existing results in it. For
more information, see [ResultsUtil Command-Line
Options](http://go.microsoft.com/fwlink/?LinkId=309787)
(https://msdn.microsoft.com/library/windows/hardware/hh825313.aspx).

## Symbol files, symbol server, symbol cache

By Default, WAS sets the following symbol information. You can override
these settings with the setx command if you have other symbol servers or
locations.

```
set _NT_SYMBOL_PATH=

\\<WASServer>\Relax\Symbols;srv*http://msdl.microsoft.com/download/symbols

set _NT_SYMCACHE_PATH=\\<WASServer>\Relax\Symcache
```

# Onboarding and preparing a system for ADK testing

**To set up the device**

1.	Plug the Device Under Test (DUT) in to an AC power source and turn it on.

2.	Enter the firmware settings page (e.g., press F2 while booting).

3.	On the firmware settings page, set the following:

	-   Restore all default settings.

	-   Ensure that the DUT is configured to boot using UEFI without CSM.

4.	Install the OEM image to the DUT. If the OEM image is already
    installed, skip this step.

	Running Sysprep specializes on the factory floor and other processes
	should be part of the OEM deployment process.

5.	Complete the First Boot Experience.

	Use &lt;*system model*&gt;-&lt;*hardware stage* (EV, DV, or PV)
	&gt;-&lt;*revision number*&gt; as the Computer Name (for example,
	Frabrikam-ModelXYZ-PV-REV1). Always use the same computer name when
	testing any given model.

6.	You can use a local admin account instead of a Microsoft account for testing.

## Policies for setting up the device

-   Wired or OEM-provided network adaptors should be used over
    USB adapters.

	-   If you use local testing with WAC or prepackaged jobs, wired LAN
		doesn't apply.

	-   If you use WAS, we recommended that you deploy assessments through
		wired LAN. If you can’t, we recommend that you use wireless.

	-   Don’t enable sharing when connecting to a network.

-   UEFI should be enabled on all DUTs.

-   All DUTs should have all signed/certified Windows 8 drivers before
    you run the assessments.

-   No external devices should be plugged in unless they are provided
    with the system.

	
## Testing the device

**To test the device**

<ol>
<li>
<p>Activate the system using the appropriate product key.</p>
</li>
<li>
<p>Some operating system components change their behaviors based on some WinSAT metrics. Make sure that the WinSAT datastore has been populated in the following path: <strong>%WINDIR%\performance\winsat\datastore\</strong></p>
<p>You can run <strong>Winsat prepop</strong> on an elevated command line or follow the <a href="http://technet.microsoft.com/en-us/library/jj573887.aspx">deployment guidance</a> (https://technet.microsoft.com/en-us/library/jj573887.aspx).</p>
</li>
<li>
<p>Run Windows Update and install all driver and Windows updates (even optional ones).</p>
</li>
<li>
<p>Disable Automatic Updates by selecting <strong>Never check updates</strong> in the Windows Update settings. You can automate this step by running the following command from an elevated command prompt:</p>
<p><strong>reg <strong>add</strong> &quot;HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update&quot; /v AUOptions /t REG_DWORD /d 1 /f</strong></p>
</li>
<li>
<p>Use Device Manager to verify that the DUT has no problems with drivers or devices.</p>
<img src="images/weg-device-manager-dysfunctional-device.png" width="311" height="74" alt="A dysfunctional device is identified in Device Manager."/>
<p>Investigate and fix all devices marked with a &quot;!&quot;.</p>
</li>
<li>
<p>Download the latest virus definition files and perform a scan using the default antimalware app.</p>
</li>
<li>
<p>Force execution of IdleTasks once a day (when system is under test) to ensure that no maintenance tasks interfere with ADK assessment execution. Run the following command from an elevated command prompt:</p>
<p><strong>rundll32.exe advapi32.dll,ProcessIdleTasks</strong></p>
</li>
<li>
<p>Disable Windows Store updates, after applying all available updates.</p>
<ol type="a">
<li><p>Open the Store settings, go to <strong>App updates</strong>.</p></li>
<li><p>Set <strong>Automatically download updates for my apps</strong> to <strong>No</strong>.</p></li>
<li><p>You can automate this step by running the following command from an elevated command prompt:</p>
<p><strong>reg add &quot;HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate&quot; /v AutoDownload /t REG_DWORD /d 2 /f</strong></p>
</li>
</ol>
</li>
<li>
<p>Enable autologon.</p>
<ul>
<li>
<p>Certain assessments reboot the PC and require the user to log on before continuing the assessment run. Since the assessments are often measuring the boot time, delays caused by the user logging on to the PC can cause unpredictable variance in the metrics.</p>
</li>
<li>
<p>A best practice is to enable automatic logon for the user account running the assessments. You can configure automatic logon in the registry, under the following key: <strong>HKLM\Software\Microsoft\Windows NT\CurrentVersion\WinLogon</strong></p>
<p>The following five values should be configured.</p>
<table>
<thead>
<tr class="header">
<th>Value name</th>
<th>Value type</th>
<th>Data</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>DefaultUserName</td>
<td>REG_SZ</td>
<td>&lt;<em>TestUserName</em>&gt;</td>
</tr>
<tr class="even">
<td>DefaultPassword</td>
<td>REG_SZ</td>
<td>&lt;<em>LOCALPASSWORD</em>&gt;</td>
</tr>
<tr class="odd">
<td>AutoAdminLogon</td>
<td>REG_SZ</td>
<td>1</td>
</tr>
</tbody>
</table>
</li>
</ul>
</li>
<li>
<p>If the system has access to a timer server, make sure the clock has been synchronized with the server time. If the clock time changes during assessment execution, it might cause failures.</p>
</li>
<li>
<p>Disable Windows system restore, to present System Restore point creation during the test which would skew test result:</p>
<p><strong>reg add &quot;HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore&quot; /v RPSessionInterval /t REG_DWORD /d 0 /f</strong></p>
<p><strong>reg DELETE &quot;HKLM\Software\Microsoft\Windows NT\CurrentVersion\SPP\Clients&quot; /f</strong></p>
</li>
<li>
<p>Disable scheduled hard drive defragmentation:</p>
<p><strong>schtasks /change /tn &quot;Microsoft\Windows\Defrag\ScheduledDefrag&quot; /disable</strong></p>
</li>
<li>
<p>Make sure that all .NET compilation targets are up to date:</p>
<p><strong>C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe executequeueditems</strong></p>
<p><strong>C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe executequeueditems</strong></p>
</li>
<li>
<p>Restart the DUT.</p>
</li>
</ol>


