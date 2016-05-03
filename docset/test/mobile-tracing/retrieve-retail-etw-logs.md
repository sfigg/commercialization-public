---
title: Retrieve retail ETW logs
description: Retrieve retail ETW logs
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a32d9f2b-1a4a-4d69-aae0-c5e80472a708
---

# Retrieve retail ETW logs


You can diagnose a variety of issues by looking at the retail logs. See [Capture event trace logs on Windows 10 Mobile](capture-event-trace-logs-on-windows-phone.md) to get more information about processing and viewing retail logs.

## Retrieving logs from a retail device


You need to boot the device in mass-storage mode to retrieve logs from an engineering or retail-unlocked device. The host PC can detect the device as a storage device when you boot in mass-storage mode. The procedure to do this depends on silicon vendor settings.

This is how to retrieve existing ETW logs from a retail device:

1.  Unlock the device.

2.  Press a specific key sequence on the device to start in mass storage mode. Usually this is done by holding just the camera button, or the camera and the volume down button, while powering up.

3.  The screen will remain blank for about five seconds, and then you’ll see new storage drives in Windows Explorer. Look for the drive where the EFIESP folder is located.

4.  In Windows Explorer, copy the files from these two directories.

    ``` syntax
    <mass storage drive letter>:\Data\SystemData\Telemetry
    <mass storage drive letter>:\Data\SystemData\ETW
    ```

    Depending on the amount of activity on the phone, ETL logs, system dumps in cab files, and other logs will be in this directory.

5.  After you have copied the logs from the device, close Windows Explorer, and then eject the device.

## Related topics


[Software tracing](index.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phSWTracing\p_phSWTracing%5D:%20Retrieve%20retail%20ETW%20logs%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





