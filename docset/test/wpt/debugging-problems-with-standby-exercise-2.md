---
title: Exercise 2 - Identify Problems with Missing Drivers
description: A tight integration between drivers, devices, Windows, and the firmware is required to ensure proper power management and a high rate of DRIPS residency.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: D3CF7AED-D3AF-4736-A7B7-E8E3C5839ED1
---

# Exercise 2 - Identify Problems with Missing Drivers


A tight integration between drivers, devices, Windows, and the firmware is required to ensure proper power management and a high rate of **DRIPS** residency.

If a device is missing a driver or doesn’t have the right driver, it can impact the associated device power management and resulting D-state.

1.  Download the pre-generated **sleepstudy-report\_2.html** report [here](http://download.microsoft.com/download/3/2/E/32E8B553-47F6-4E2A-9109-C6D678FE0EE8/sleepstudy-report_2.mdl).

    here.

2.  Open **sleepstudy-report\_2.html** with your favorite browser.

3.  Click on **Session 11**. The system consumes 4.585 Watts of energy during 11 minutes and the **DRIPS %** is 0.

    ![](images/standbylab4.png)

4.  Look at the **Top Offenders** table. An **Unregistered Device** is listed as active 100% of the time during the session.

    ![](images/standbylab5.png)

The unregistered device is the graphics adapter (GFX) as specified by the device name **\_SB.PCI0.GFX0**.

When an **Unregistered Device** is present in the top offenders list, it means that the ACPI firmware has defined it, but Windows doesn’t have it on its list of power managed devices.

This could mean one of two things:

-   One device is missing a driver.

-   An ACPI firmware constraint was defined for a device not present in the system.

In this example, the system didn’t have a proper driver installed for the **Display Adapter**, as shown below in the **Device Manager**.

![](images/standbylab6.png)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\p_wpt%5D:%20Exercise%202%20-%20Identify%20Problems%20with%20Missing%20Drivers%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




