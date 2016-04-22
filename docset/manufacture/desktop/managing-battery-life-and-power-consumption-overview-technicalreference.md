---
author: Justinha
Description: Managing Battery Life and Power Consumption Overview
ms.assetid: 9e5f962a-7647-431f-b10e-98c7589ec388
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Managing Battery Life and Power Consumption Overview
---

# Managing Battery Life and Power Consumption Overview


Windows®-based laptops must meet energy-efficiency regulatory requirements, such as the United States Environmental Protection Agency (EPA) Energy Star program. Furthermore, surveys have shown that longer battery life for laptops continues to be a leading request from consumers.

Hardware and software factors such as a low-capacity battery, a processor-intensive driver, or a poorly configured power setting can cause a significant reduction in battery life. When you design your system, you should experiment with multiple configurations of each of these factors to find the best balance of battery life and performance.

## <span id="Hardware"></span><span id="hardware"></span><span id="HARDWARE"></span>Hardware


This section lists a few of the common hardware design considerations that can affect battery life.

-   **Battery capacity.** Check with your battery manufacturer to determine the battery capacity.

-   **Other hardware components.** Ask your hardware component manufacturers for power-consumption test results for each hardware component.

For information on each of these battery-life factors, see [Mobile Battery Life Solutions: A Guide for Mobile Platform Professionals](http://go.microsoft.com/fwlink/?LinkId=209929).

## <span id="Software"></span><span id="software"></span><span id="SOFTWARE"></span>Software


This section lists a few of the common software design considerations that can affect battery life.

-   **Drivers.** As you add each new driver to the system, observe the driver's impact on power consumption. A single poorly performing driver can greatly affect system performance.

-   **Applications, services, and other software.** As you add each new software application to the system, observe the application's impact on power consumption. A single poorly performing application can greatly affect system performance.

-   **Windows power policy settings.** Optimize Windows power policy settings to balance performance needs and battery life. For more information, see the section: [Windows Power Policy Settings](#configurablesettingsimpactingbatterylife).

For more information about each of these battery life factors, see [Mobile Battery Life Solutions: A Guide for Mobile Platform Professionals](http://go.microsoft.com/fwlink/?LinkId=209929).

## <span id="ConfigurableSettingsImpactingBatteryLife"></span><span id="configurablesettingsimpactingbatterylife"></span><span id="CONFIGURABLESETTINGSIMPACTINGBATTERYLIFE"></span>Windows Power Policy Settings


This section lists a few of the common configurable settings that can affect battery life. Test these and other settings to create an optimal power plan for your system.

Settings can be specific to whether the computer is plugged in (AC) or on battery power (DC). You can configure the following settings:

-   **Display brightness**

    The most effective way to reduce the power consumption on a mobile computer when the display is in use is to reduce the display brightness. The attached display is the largest power consumer. The display uses up to 40 percent of the overall system power consumption.

    By default, Windows significantly reduces the display brightness when a mobile computer is on battery power. Depending on your hardware and the needs of your users, you can adjust the default display brightness setting lower to increase battery life, or higher to make the display easier to read.

-   **Display timeout**

    Mobile PC battery life can be significantly extended by using a short display idle timeout.

    **Note**  
    **Display dimming**: Mobile computers that run Windows 8.1 and Windows Server 2012 R2 will dim the display 15 seconds before the **Display timeout**. This value is no longer configurable.

     

-   **Hard disk timeout**

    Although the hard disk drive is not the primary power consumer in the typical mobile computer, you may be able to save power by increasing the hard drive timeout.

    When the hard drive is idle for a period of time, the hard drive's motor stops. The next time that the computer needs to access the hard drive, the system response may be slow while the hard drive begins to spin again.

    Depending on your hardware and the needs of your users, you can adjust the default hard disk timeout lower to increase battery life, or higher to increase the availability of the hard disk.

-   **Sleep mode**

    By default, if the processor is idle, and the end user is not using the computer, Windows enters low-power sleep mode or hibernate mode. The next time that the computer needs processor power, system response may be slow while the processor recovers.

    Depending on your hardware and the needs of your users, you can adjust the default sleep timer lower to increase battery life, or higher to increase the availability of the processor.

-   **Wireless adapter power-save modes**

    By default, Windows configures the 802.11 power-save mode to **Maximum Performance** for both AC and battery power. This configuration keeps the wireless adapter active, even when data is not being transferred. This alleviates compatibility problems between some wireless adapters and access points that are not compatible with 802.11 power-save modes.

    If you create custom power policies to save more power and help extend battery life, consult with the manufacturer of the wireless adapter about the effects of changing the power policy value to **Maximum Power Saving** or **Medium Power Saving**.

You can manually modify the power settings for each built-in power configuration. To learn more about these settings and other common configurable power settings, see [Mobile Battery Life Solutions: A Guide for Mobile Platform Professionals](http://go.microsoft.com/fwlink/?LinkId=209929) and [Power Policy Configuration and Deployment in Windows](http://go.microsoft.com/fwlink/p/?linkid=129584).

## <span id="related_topics"></span>Related topics


[Mobile Battery Life Solutions: A Guide for Mobile Platform Professionals](http://go.microsoft.com/fwlink/?LinkId=209929)

[Set the Default Power Plan](set-the-default-power-plan-technicalreference.md)

[Create a Custom Power Plan](create-a-custom-power-plan-technicalreference.md)

[Windows Performance Toolkit](http://go.microsoft.com/fwlink/p/?linkid=210214)

[Power Policy Configuration and Deployment in Windows](http://go.microsoft.com/fwlink/p/?linkid=129584)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Managing%20Battery%20Life%20and%20Power%20Consumption%20Overview%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




