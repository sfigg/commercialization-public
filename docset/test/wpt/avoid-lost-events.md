---
title: Avoid Lost Events
description: Avoid Lost Events
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7512de7a-de82-43e5-b100-d82faf59a7cb
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Avoid Lost Events


In Windows Performance Recorder (WPR), some applications generate so many events that Event Tracing for Windows (ETW) cannot keep up with the logging frequency. This problem manifests as lost events in the recordings. The problem can lead to analysis difficulties or erroneous conclusions because of incomplete data.

**Note**  
By default, WPR uses paged memory for buffers. To set WPR to use non-paged memory for buffers, set the *NonPagedMemory* attribute to *true* for the provider. For more information about how to create a custom profile, see [Authoring Recording Profiles](authoring-recording-profiles.md) and [2. System and Event Provider Definitions](2-system-and-event-provider-definitions.md).

 

You can help prevent WPR from losing ETW buffers or events in the following ways:

-   Use larger buffers to enable more efficient disk I/O when WPR writes the buffers to disk.

-   Count requests for the data collection the first time that you use a particular buffer configuration on a computer.

-   Use the command-line **recordTempTo** option to record to a different location than the default.

-   Increase the number of buffers.

-   Simplify the scenario that you are testing, or select fewer profiles.

-   Free disk space on the system drive.

-   Use advanced hardware to collect the data; for example, use a disk subsystem that has higher throughput. This is the last option to consider. You can usually avoid losing events by carefully selecting the providers to enable and the buffers to use.

## Related topics


[WPR Common Scenarios](windows-performance-recorder-common-scenarios.md)

[Recording Profiles](recording-profiles.md)

[Logging Mode](logging-mode.md)

[Change the Logging Mode](change-the-logging-mode.md)

[Detail Level](detail-level.md)

[Change the Detail Level](change-the-detail-level.md)

[Sessions](sessions.md)

[Sessions (Windows Drivers)](http://go.microsoft.com/fwlink/p/?linkid=246706)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Avoid%20Lost%20Events%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





