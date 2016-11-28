---
title: Introduction to modern standby testing
description: Overview of the modern standby testing process.
MS-HAID:
- 'cstandby.introduction\_to\_connected\_standby\_testing'
- 'p\_weg\_hardware.introduction\_to\_modern\_standby\_testing'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1E9C9B84-3A55-4409-A4AB-73FF7ECA4ED4
---

# Introduction to modern standby testing


Testing and validating the operation of a modern standby PC is a critical effort for the system integrator. Modern standby involves all hardware and software components on the system, and requires special attention to the core silicon or System on a Chip (SoC), networking devices (for example, Wi-Fi), and peripheral devices connected to the pins of the SoC chip.

Before you start testing, make sure that the required hardware connections are in place. The target platform must have a functioning kernel debugger connection.

The first test scenarios to validate are entry and exit from modern standby. These transitions are easily initiated by using the system power button to turn the display on and off. After entry and exit are validated, run the platform in airplane mode for increasingly long durations, and focus on reducing platform power consumption during the idle periods that occur in modern standby. For more information about the test cases and methodology for these scenarios, see [Modern standby basic test scenarios](modern-standby-basic-test-scenarios.md).

After airplane mode is validated, you can focus on scenarios in which Wi-Fi is connected and background tasks are running. Make sure that Wi-Fi power can be measured in isolation from system power so that you can verify that Wi-Fi operates in the expected low-power mode. For more information about the test cases and methodology for these scenarios, see [Modern standby Wi-Fi-connected scenarios](modern-standby-wi-fi-connected-scenarios.md).

Validation concludes with mobile broadband (cellular) testing. Remember to do regression testing after you make other platform driver and firmware fixes.

Finally, we recommend that system designers also incorporate a self-host program into their validation program for a modern standby PC. A self-host program enables local engineering and engineering-management teams to use reference designs or early retail designs for daily work and home use. The goal of the self-host program for modern standby is to find functional and power consumption issues that are otherwise not identified by planned test execution.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Introduction%20to%20modern%20standby%20testing%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




