---
author: Justinha
Description: 'Fine-Tune a Custom Power Plan'
ms.assetid: 3f3b0d9d-d84a-4b87-a271-159d80ebbcc7
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Fine-Tune a Custom Power Plan'
---

# Fine-Tune a Custom Power Plan


A power plan is a collection of hardware and system settings that manages how computers use and conserve power. You can create custom power plans that are optimized for specific computers.

You can manage most common power plan settings through Control Panel. For more information, see [Create a Custom Power Plan](create-a-custom-power-plan-technicalreference.md). To fine-tune hardware-specific configurations that are not configurable through Control Panel, use the PowerCfg tool.

## <span id="ModifyPowerPlan"></span><span id="modifypowerplan"></span><span id="MODIFYPOWERPLAN"></span>Manually Modifying a Power Plan


You can customize all configurable Windows power options by using the `powercfg` command from an elevated command prompt. This includes hardware-specific configurations that are not configurable through Control Panel.

**To list the available power plans**

-   On your technician computer, at an elevated command prompt, type the following:

    ``` syntax
    powercfg -LIST
    ```

    The computer will return the list of available power plans. In the following examples, these plans are *Balanced* and *Power saver*.

    ``` syntax
    Existing Power Schemes (* Active)
    -----------------------------------
    Power Scheme GUID: {guidPlan1}  (Balanced) *
    Power Scheme GUID: {guidPlan2}  (Power saver)
    ```

    Note the GUIDs that are listed next to the power plans that you want to change. You will need these GUIDs to manually update settings and capture the power plans.

**To set the power plan to be modified as active**

-   To modify a plan, use the GUID of the power plan that you want to change to set that power plan as the active power plan. For example:

    ``` syntax
    powercfg -SETACTIVE {guidPlan2}
    ```

**To adjust the settings**

1.  This section describes how to manually configure other power configuration settings by using the `powercfg` command. Test these settings to create an optimal power plan for your system.

    **Find information about the existing power setting.**

    1.  At an elevated command prompt, type the following:

        ``` syntax
        powercfg -QUERY
        ```

        The computer displays information for all of the power settings for this plan.

    2.  Find the GUID for the subgroup of the setting that you want to change. For example, to modify a display setting, find the GUID for the Display subgroup:

        ``` syntax
        Subgroup GUID: {guidSubgroup-Display}  (Display)
        ```

    3.  Find the GUID for the setting that you want to change. For example, to modify the Display Brightness setting, find the GUID for the (Display brightness) setting:

        ``` syntax
        Power Setting GUID: {guidPowerSetting-Brightness}  (Display brightness)
        ```

    4.  Review the information from the query command, review the possible settings, and determine a value that works for your computer.

        **Note**  
        You must enter these values by using decimal integers. However, the values appear on the screen as hexadecimal values that are specific to the setting.

         

        For example, to set the maximum display brightness to 50 percent brightness, enter the value as 50. When you use the `powercfg -QUERY` command to confirm the setting, the value appears as 0x00000032.

        ``` syntax
        Power Setting GUID: {guidPowerSetting-Brightness}  (Display brightness)
              Minimum Possible Setting: 0x00000000
              Maximum Possible Setting: 0x00000064
              Possible Settings increment: 0x00000001
              Possible Settings units: %
            Current AC Power Setting Index: 0x00000064
            Current DC Power Setting Index: 0x00000032
        ```

2.  Adjust the value for the power setting for times when the computer is plugged in. For example, to set the display brightness level to 100 percent when the computer is plugged in, type the following:

    ``` syntax
    powercfg -SETACVALUEINDEX {guidPlan-New} {guidSubgroup-Display}  {guidPowerSetting-Brightness} 100
    ```

3.  Adjust the value for the power setting for times when the computer is on battery power. For example, to set the display brightness level to 75 percent when the computer is on battery power, type the following:

    ``` syntax
    powercfg -SETDCVALUEINDEX {guidPlan-New} {guidSubgroup-Display}  {guidPowerSetting-Brightness} 75
    ```

4.  Use the **Query** command to verify the setting. For example:

    ``` syntax
    powercfg -QUERY
    ```

    The computer shows the new power setting index in hexadecimal notation. For example:

    ``` syntax
    Power Setting GUID: {guidPowerSetting-Brightness}  (Display brightness)
          Minimum Possible Setting: 0x00000000
          Maximum Possible Setting: 0x00000064
          Possible Settings increment: 0x00000001
          Possible Settings units: %
        Current AC Power Setting Index: 0x00000064
        Current DC Power Setting Index: 0x0000004b
    ```

    The hexadecimal value 0x00000064 represents 100 percent display brightness when the computer is plugged in. The hexadecimal value 0x0000004b represents 75 percent display brightness when the computer is using battery power.

## <span id="related_topics"></span>Related topics


[Create a Custom Power Plan](create-a-custom-power-plan-technicalreference.md)

[Set the Default Power Plan](set-the-default-power-plan-technicalreference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Fine-Tune%20a%20Custom%20Power%20Plan%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




