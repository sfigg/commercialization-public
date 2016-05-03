---
title: Start a Recording
description: Start a Recording
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a873691c-d198-4131-aa5d-849b4c6159d7
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Start a Recording


This procedure describes how to start a Windows Performance Recorder (WPR) recording from the user interface (UI). For information about how to start a recording from the command line, see [WPR Command-Line Options](wpr-command-line-options.md).

WPR requires Windows 7 or later version operating system.

**To start a recording**

1.  On the **Start** screen, click **Windows Performance Recorder**.

2.  To run the default profile, click **Start**. Or, to view and use other profiles, click **More options**.

    1.  In the **Select profiles for performance recording** box, select at least one profile.

    2.  You can optionally add a custom profile. To do so, click **Add Profiles**, navigate to the profile that you want, and then click **Open**. Under **Custom measurements**, select the profile.

    3.  From the **Performance scenario** drop-down list, select the scenario that you want. Unless the recording is for an on/off scenario, select **General**.

    4.  You can optionally record at the light detail level. (**Verbose** is the default.level.) To do so, select **Light** in the **Detail level** drop-down list.

    5.  To log the recording to a file, select **File** in the **Logging mode** drop-down list. **Memory** is the default logging mode, except for on/off transition logs, which must be logged to a file.

        **Caution**  
        For longer recordings, select **Memory**. When you select **File**, the file can grow very large because the only limitation to the file size is the available disk space. Windows Performance Analyzer (WPA) cannot analyze extremely large files.

         

3.  Click **Start** to begin recording, or click **Cancel** to end without recording.

**Note**  
If you start WPR while another application is recording (such as Xperf or an application that uses NT Kernel Logger, such as logman or PerfTrace), WPR will not immediately detect that a recording is taking place and it will initially display a message that recording has not started. However, if you try to start a recording in WPR during the time that another application is recording, WPR will detect a conflict and prompt you with the following query:

`An existing session is already running. Click OK to stop the running session and start the selected profile(s) or Cancel to abort the operation.`

To stop the current session, click **OK**. WPR will start to record. Note that this action can impact the application that started the cancelled session. To allow the current session to continue, click **Cancel**. In this case, WPR does not start a recording and the other application is not affected.

 

## Related topics


[WPR Common Scenarios](windows-performance-recorder-common-scenarios.md)

[Recording for Basic System Diagnosis](recording-for-basic-system-diagnosis.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Start%20a%20Recording%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





