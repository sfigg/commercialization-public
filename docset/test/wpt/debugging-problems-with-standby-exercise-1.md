---
title: Exercise 1 - Identify Problems with Spurious Wakes
description: Devices should avoid unexpectedly waking up the SoC through interrupts (for example, interrupt storms, bad debouncing, etc.).
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: FEC9383F-3643-4CF3-82FA-34FD6C535483
---

# Exercise 1 - Identify Problems with Spurious Wakes


Devices should avoid unexpectedly waking up the SoC through interrupts (for example, interrupt storms, bad debouncing, etc.). Waking up the SoC causes the system to exit **DRIPS**, increases the average power floor and reduces battery life. This is known as a spurious wake.

The analysis process related to spurious wakes is fairly straightforward.

1.  Download the pre-generated **sleepstudy-report\_1.html** report [here](http://download.microsoft.com/download/2/6/6/2662D67D-58CC-4823-8812-AD215DD9778F/sleepstudy-report_1.mdl).

2.  Open **sleepstudy-report\_1.html** with your favorite browser.

3.  Click on **Session 2**. The system consumes 1.818 Watts of energy during 19 hours and the **DRIPS %** is 92%.

    ![](images/standbylab1.png)

4.  Look at the **Top Offenders** table. The networking wireless device is listed as active 7% of the time during the session.

    ![](images/standbylab2.png)

5.  Click on the networking device row to obtain details about this offender.

    ![](images/standbylab3.png)

Spurious wakes are clearly identified by the report. There are 80 of them in this example. A follow-up discussion should happen with the IHV to determine why the wireless adapter is waking up the SoC unexpectedly. The underlying problem could be a bad device firmware implementation.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\p_wpt%5D:%20Exercise%201%20-%20Identify%20Problems%20with%20Spurious%20Wakes%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




