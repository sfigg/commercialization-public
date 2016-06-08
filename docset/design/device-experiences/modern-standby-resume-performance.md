---
title: Modern standby resume performance
description: Describes how to measure the performance of resumption from modern standby.
MS-HAID:
- 'cstandby.connected\_standby\_resume\_performance'
- 'p\_weg\_hardware.modern\_standby\_resume\_performance'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3A66A4C9-83A7-47AC-9587-7F39E266FAFB
---

# Modern standby resume performance


For users, the most noticeable benefit of using a modern standby PC is its ability to instantly resume from sleep. Modern standby resume performance is typically less than 500 milliseconds, as measured from power button press to powering on the display. Significant engineering in Windows, third-party drivers, and system firmware is required to achieve this high level of performance.

You can measure modern standby resume performance by using tests that are built into the [Windows Hardware Lab Kit (Windows HLK)](https://msdn.microsoft.com/windows/hardware/dn913721.aspx#hlk) or by manually capturing a trace and reviewing the result in the Windows Performance Analyzer (WPA).

For more information, see [Common causes of long modern standby resume](common-causes-of-long-modern-standby-resume.md).

### Using the Windows HCK to measure connected standby performance

The Windows HCK includes a test to measure connected standby resume performance, which is the length of time that is required to power on the display after a wake event.

The Resume From Connected Standby test validates the System.Fundamentals.PowerManagement.CS.ResumeFromConnectedStandby requirement of the Windows Hardware Certification Requirements for Client and Server Systems. It test-cycles through connected standby five consecutive times. The resume performance is measured by ignoring the first connected standby session and averaging the performance of the remaining four sessions. (The first session is typically the longest duration session because the memory prefetcher has not previously observed an exit from connected standby.)

### Using WPA to measure connected standby performance

To evaluate connected standby resume performance, take a trace with the provider named Microsoft-Windows-PDC, which is the system-supplied power dependency coordinator. The Trace\_start.cmd file that is included with the WPA package includes this and other providers that are required to measure resume performance. The WPA package is available in the Windows Assessment and Deployment Kit (Windows ADK) download and includes scripts and documentation for connected standby analysis.

**To collect a trace**

1.  Open a Command Prompt window as Administrator.
2.  Run the Install.cmd command to install the package.
3.  Close the Command Prompt window and open another Command Prompt window to update the environment variables.
4.  Run the Trace\_start.cmd command.
5.  Press the power button to enter connected standby.
6.  Wait approximately five minutes.
7.  Press the power button to exit connected standby.
8.  Run the Trace\_end.cmd command to stop the trace.
9.  Look for the output file Mytrace.etl in the same directory.
10. To save this file, rename it or save it to a different location because a file with this name will be overwritten the next time a trace is taken.
11. Repeat steps 3 through 10 to gather another trace.

After you have completed these steps, open the trace file in WPA by double-clicking it. (If this doesn't work, make sure you are using Wpa.exe to open the trace file; Wpa.exe is located in the in C:\\Program Files (x86)\\Windows Kits\\8.1\\Windows Performance Toolkit directory by default.)

Validate that the system entered the lowest power state (deepest runtime idle platform state, or DRIPS) during the connected standby session. Resume performance should be measured for transitions from the DRIPS state to the screen turning back on because these transitions have the longest latencies.

Check the DRIPS graph under the power graphs to determine whether the system successfully entered DRIPS while in connected standby.

If the system did not enter DRIPS, the exit-latency value is not used in the Windows HCK test and the Windows HCK test will fail. In this case, you should re-run the WHCK test.

If this issue occurs consistently, stop the analysis of resume performance, and identify and resolve why the system is not entering DRIPS.

### Using WPA to optimize connected standby performance

**Note**  The two most common causes of connected standby exit delay are turning on the display and network devices—in particular, mobile broadband (MBB) radios.

 

**PDC phases**

The Windows power dependency coordinator (PDC) transitions through a number of phases for each entry to and resume from connected standby. These phases always take place in series for entry and in reverse order for resume. The duration in time of each phase can vary.

You can use WPA to take a trace to indicate where most of the time is spent during resume from connected standby. To analyze where the connected standby exit time is being spent, zoom into just the region between the start and end of the exit from connected standby. Pull up the **PDC Notification Phase** graph under **Power**. This graph lists each connected standby PDC phase.

Highlight all the phases shown in this graph to get the total time spent in the PDC phases.

You can get the duration of a particular PDC phase. To do so, change the display format of the **PDC Notification Phase** graph to **Both graph and table**. Then expand the phase of interest and look for the duration.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Modern%20standby%20resume%20performance%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




