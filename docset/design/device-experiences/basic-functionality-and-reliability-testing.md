---
title: Basic functionality and reliability testing
description: Describes the basic functionality and reliability testing that you can perform on a Modern Standby system.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: A0F97D32-19B0-49EF-9234-8A13C5778BD7
---

# Basic functionality and reliability testing


The recommended test scenarios for Windows 8.1 Connected Standby that are also valid on Modern Standby are available on [MSDN](modern-standby-basic-test-scenarios.md).

## Expected network behavior


When a system enters disconnected standby, no patterns are configured for wake across LAN, WiFi, or Mobile broadband. A media disconnect is sent to WiFi and Mobile Broadband parts.

## Storage reliability


In order to test for the impact of Modern Standby on rotational device reliability, you can following these general guidance:

1.  Query the current count of Load/Unload Cycles on the rotational device.
    1.  You can do this through PowerShell and the `Get-StorageReliabilityCounter` cmdlet, which has a field called: `LoadUnloadCycleCount`
    2.  `Get-PhysicalDisk | Get-StorageReliabilityCounter | fl`

2.  Execute a connected or disconnected Standby workload typical for your target customer or audience.
3.  After the system exits Modern Standby, requery the Load/Unload cycle count.

By dividing the change in Load/Unload cycles by the time spent in Modern Standby, you can compute a ratio of Load/Unload cycles per time period. As an example, for a device spec’ed with a maximum of 600,000 Load/Unload cycles to reach a 5 year warranty, no more than 120,000 cycles can be incurred per year. This comes to a ratio of ~0.23 Load/Unload cycles per minute that the system should not exceed.

**Note**  Different systems are targeted for many different audiences and usage patterns. Therefore, it is the OEM’s responsibility to ensure the connected or disconnected Modern Standby system (they build) can handle the expected usage patterns.

 

When a system enters disconnected standby, no patterns are configured for wake across LAN, WiFi, or Mobile broadband. A media disconnect is sent to WiFi and Mobile Broadband parts.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Basic%20functionality%20and%20reliability%20testing%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




