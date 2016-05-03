---
title: Exercise 2 - Manually Collect ETW Logs for Media Scenarios Using WPR
description: Automated tests are great for verifying the audio or temporal video quality of a device for a specific automated scenario; however, if an audio or video glitch occurs during a manual test, then the Windows Performance Recorder (WPR) tool can be used to manually collect an Event Tracing for Windows (ETW) trace during a repro of the problem.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 89203B18-8C1F-40ED-9DF5-B68F2995BFD9
---

# Exercise 2 - Manually Collect ETW Logs for Media Scenarios Using WPR


Automated tests are great for verifying the audio or temporal video quality of a device for a specific automated scenario; however, if an audio or video glitch occurs during a manual test, then the **Windows Performance Recorder (WPR)** tool can be used to manually collect an Event Tracing for Windows (ETW) trace during a repro of the problem.

## Step 1: Collect an ETW trace using WPR


1.  Right-click on the **Start** menu and click on **Command Prompt (Admin)**.

2.  Navigate to the folder where you have **WPR** installed.

3.  Run the following command:

    ``` syntax
    wpr -cancel
    ```

4.  Run the following command:

    ``` syntax
    wpr -start Media.wprp -filemode
    ```

5.  Run a workload such as video playback or a real time communications scenario.

6.  Run the following command:

    ``` syntax
    wpr -stop Media.etl
    ```

## Step 2: Visualize the ETW trace in MXA


1.  Install the **Media eXperience Analyzer (MXA)** which can be downloaded [here](https://go.microsoft.com/fwlink/?linkid=525711).

2.  Right-click on the **Start** menu and click on **Command Prompt (Admin)**.

3.  Navigate to the folder where you installed **MXA**.

4.  Run the following command:

    ``` syntax
    xa -i <Media.etl location>\Media.etl
    ```

    For example, if Media.etl were located at C:\\Performance\\Media, you would type the following command:

    ``` syntax
    xa -i C:\Performance\Media\Media.etl
    ```

5.  Press the **Turn Symbols Off** button to turn off symbol lookup.

6.  Explore the various media related datasets and providers enabled in the trace.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\p_wpt%5D:%20Exercise%202%20-%20Manually%20Collect%20ETW%20Logs%20for%20Media%20Scenarios%20Using%20WPR%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




