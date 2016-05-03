---
title: Exercise 3 - Identify Problems with Missing Constraints
description: The SoC power state is the sum of the states of all the devices.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7D11B22F-38A4-4764-B2B0-1AA05D779E0C
---

# Exercise 3 - Identify Problems with Missing Constraints


The SoC power state is the sum of the states of all the devices.

Windows keeps a list of devices and their states that are critical to reach low power – they are called constraints. Windows will wait for all constraints to be met before engaging resiliency and entering **DRIPS**. The constraints are specified by an OEM and the SoC vendor through the ACPI firmware.

The ACPI firmware must be modified if an OEM changes the SoC vendor reference design and constraints must reflect those changes accurately.

Missing constraints, or having too many constraints, can cause a variety of problems that increase power drain during standby.

1.  Download the pre-generated **sleepstudy-report\_2.html** report [here](http://download.microsoft.com/download/3/2/E/32E8B553-47F6-4E2A-9109-C6D678FE0EE8/sleepstudy-report_2.mdl).

2.  Open **sleepstudy-report\_2.html** with your favorite browser.

3.  Click on **Session 12**.

    -   The system consumes 1.307 Watts of energy during 11 minutes

    -   The **DRIPS %** is 92%.

    -   The hardware **DRIPS %** is 19%.

    ![](images/standbylab7.png)

4.  Look at the **Top Offenders** table

    -   The wireless networking device is listed as active only 7% of the time during the session.

    -   This problem can’t account for the 19% HW **DRIPS** rate.

    ![](images/standbylab8.png)

Large discrepancies between software **DRIPS %** (for example, 92%) and hardware **DRIPS %** (for example, 19%) is usually symptomatic of a missing constraint in the ACPI firmware.

Simply stated, Windows assumes the system is ready to enter **DRIPS**, but some hardware component is still active and prevents the SoC package from entering S0 low power idle.

The next logical step is to try to isolate and identify which hardware component is still in D0 and consuming power by using either a power instrumented platform or your silicon partner debugging tools.

**Note**  
The missing constraint issue surfaced by the software and hardware **DRIPS** discrepancy is different than the Wireless device 7% active time problem shown in the top offenders table. This issue should be investigated separately.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\p_wpt%5D:%20Exercise%203%20-%20Identify%20Problems%20with%20Missing%20Constraints%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




