---
title: View a Recording Status
description: View a Recording Status
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a0df113f-d0be-4560-9f6a-3df9ae93bdd4
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# View a Recording Status


After you start a recording in Windows Performance Recorder (WPR), you can follow the status of the recording as it transpires. This article describes the recording status.

## <a href="" id="viewstat"></a>


When you start a recording by using the WPR user interface (UI), the recording status immediately displays on the WPR screen. If you start a recording by using the WPR command-line interface, you can view the recording status by using either of the following methods:

-   In the command prompt window, type `wpr –status`. For more information about this command, see [WPR Command-Line Options](wpr-command-line-options.md#status).

-   Open the WPR UI. The status of the recording that you started from the WPR command line will display.

For more information about how to use these methods to start a WPR recording, see [Start a Recording](start-a-recording.md) and [WPR Command-Line Options](wpr-command-line-options.md).

**Note**  
WPR can only display a recording’s status if the recording is started by WPR. It cannot display recording status for recordings that are started by Xperf or other applications.

 

The recording status displays the following information:

-   **Recording Time**: This is the length of time that the recording has been running.

-   **Buffer**: This is the buffer size that the recording is using. It is displayed in both MB and percentage of available pooled memory.

-   **Events dropped**: The number of lost events since the recording was started. For more information about this issue, see [Avoid Lost Events](avoid-lost-events.md).

## Related topics


[Sessions](sessions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20View%20a%20Recording%20Status%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





