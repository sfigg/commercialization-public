---
author: Justinha
Description: Create a Custom Power Plan
MS-HAID: 'p\_adk\_online.create\_a\_custom\_power\_plan\_8\_technicalreference'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Create a Custom Power Plan
---

# Create a Custom Power Plan


A *power plan* is a collection of hardware and system settings that manages how computers use and conserve power. A power plan is also known as a *power scheme*. You can create custom power plans that are optimized for specific computers.

By default, Windows 8 and Windows Server® 2012 include three power plans: **Balanced**, **Power Saver**, and **High Performance**. You can customize these existing plans for your systems, create new plans that are based on the existing plans, or create a new power plan from scratch.

Optimizing Windows power plans can help improve battery life. However, a single poorly performing application, device, or system feature can significantly reduce battery life. For information about factors that influence battery life, see [Managing Battery Life and Power Consumption Overview](managing-battery-life-and-power-consumption-overview-technicalreference.md).

## <span id="In_this_topic"></span><span id="in_this_topic"></span><span id="IN_THIS_TOPIC"></span>In this topic


[Creating a customized power plan](#createcustomizedplan)

[Listing the available power plans](#listpowerplans)

[Deploying a power plan](#deploypowerplan)

## <span id="CreateCustomizedPlan"></span><span id="createcustomizedplan"></span><span id="CREATECUSTOMIZEDPLAN"></span>


**Creating a customized power plan**

1.  Click **Start**, and then select **Control Panel**.

2.  Click **Hardware and Sound**, and then select **Power Options**.

3.  The **Power Options** Control Panel opens, and the power plans appear.

4.  Click **Create a power plan**.

5.  Follow the on-screen instructions to create and customize a power plan file that is based on an existing plan. Name your power plan "OutdoorPlan".

    **Note**  
    You can manage most common power plan settings through Control Panel. To fine-tune settings that do not appear in Control Panel, see [Fine-Tune a Custom Power Plan](fine-tune-a-custom-power-plan-technicalreference.md).

     

    To deploy the power plan, see [Set the Default Power Plan](set-the-default-power-plan-technicalreference.md).

## <span id="ListPowerPlans"></span><span id="listpowerplans"></span><span id="LISTPOWERPLANS"></span>


**Listing the available power plans**

-   On your technician computer, at an elevated command prompt, type the following:

    ``` syntax
    powercfg -LIST
    ```

    The computer will return the list of available power plans. In the following example, these plans are *Balanced*, *Power saver*, and *OutdoorPlan*.

    ``` syntax
    Existing Power Schemes (* Active)
    -----------------------------------
    Power Scheme GUID: {guidPlan1}  (Balanced) *
    Power Scheme GUID: {guidPlan2}  (Power saver)
    Power Scheme GUID: {guidPlan3}  (OutdoorPlan)
    ```

    Note the GUIDs that are listed next to the power plans that you want to capture.

## <span id="DeployPowerPlan"></span><span id="deploypowerplan"></span><span id="DEPLOYPOWERPLAN"></span>


**Deploying a power plan**

1.  After you have created power plans that work for your system, you can deploy the power plans to your destination computers.

    To export the OutdoorPlan power plan that you created on your technician computer, open an elevated command prompt, and then type the following

    ``` syntax
    powercfg -EXPORT C:\OutdoorPlan.pow {guidPlan-New}
    ```

    This creates a new power plan file.

2.  To deploy the power plan, see [Set the Default Power Plan](set-the-default-power-plan-technicalreference.md).

## <span id="Next_Steps"></span><span id="next_steps"></span><span id="NEXT_STEPS"></span>Next Steps


[Set the Default Power Plan](set-the-default-power-plan-technicalreference.md)

## <span id="related_topics"></span>Related topics


[Managing Battery Life and Power Consumption Overview](managing-battery-life-and-power-consumption-overview-technicalreference.md)

[Test Battery Life and Power Consumption](test-battery-life-and-power-consumption-technicalreference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Create%20a%20Custom%20Power%20Plan%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




