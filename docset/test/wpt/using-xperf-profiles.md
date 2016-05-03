---
title: Using Xperf Profiles
description: Using Xperf Profiles
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 31673dde-fe06-4b54-afe2-f9bd9c5e60d2
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Using Xperf Profiles


This section shows how to capture traces by using profiles. If you are analyzing memory, consider writing your trace to a file, because ETW writes through and does not disturb the cache. If you are analyzing disk I/O, consider saving your trace into a circular buffer in memory. There are also other considerations such as whether you need to capture a long trace, which would not fit into a buffer in memory, or if you only care about the last 5-10 seconds of the trace content.

## Procedure


1.  Select a profile such as **perf!FileIOProfiles.InBuffer** and use command similar to the following example to display information about it.

    ``` syntax
    xperf -profiles perf!FileIOProfiles.InBuffer
    ```

    This command lists all profiles, followed by the sessions and providers in that profile:

    Profile: FileIOProfiles.InBuffer

    Sessions: FileIOProfiles.InBuffer.Sessions

    Session: FileIOProfiles.InBuffer.Sessions\[0\].Kernel\[0\]

    Session: FileIOProfiles.InBuffer.Sessions\[0\].User\[0\]

    Providers: FileIOProfiles.InBuffer.Providers

    Provider: FileIOProfiles.InBuffer.Providers\[0\].Kernel\[0\]

    Provider: FileIOProfiles.InBuffer.Providers\[0\].User\[0\]

2.  Assuming that you chose to use a file-based trace, start an **InSequentialFile** trace profile by using the following command.

    ``` syntax
    xperf -start perf!GeneralProfiles.InSequentialFile
    ```

    If a problem occurs, an error is reported. For example, starting the same profile twice would result in an error that the session is already running.

3.  Show which **InSequentialFile** loggers have already started for a specific profile by using the following command.

    ``` syntax
    xperf -profileloggers perf!GeneralProfiles.InSequentialFile
    ```

    The response to this command is similar to the following example.

    Session Status for "perf!GeneralProfiles.InSequentialFile":

    "NT Kernel Logger" : Running

    PerfCoreUserSession\_InSequentialFile : Running

4.  Stop the **InSequentialFile** trace profile, save the traces, and then merge them into a trace file, such as Merged.etl, by using the following command.

    ``` syntax
    xperf -stop perf!GeneralProfiles.InSequentialFile merged.etl
    ```

    If a problem occurs, an error is reported.

5.  Start the **InSequentialFile** trace profile, overriding, at start time, *MaxBuffers* values for all ETW sessions, for which loggers are to be started to 256. To perform this action, use the following command.

    ``` syntax
    xperf -start perf!GeneralProfiles.InSequentialFile -MaxBuffers 256
    ```

    If a problem occurs, an error is reported.

6.  Update *MaxBuffers* values for the active **InSequentialFile** ETW loggers specified in the trace profile by using the following command.

    ``` syntax
    xperf -update perf!GeneralProfiles.InSequentialFile -MaxBuffers 256
    ```

    No response is displayed after issuing this command.

## Related topics


[Xperf Profiles](xperf-profiles.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Using%20Xperf%20Profiles%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





