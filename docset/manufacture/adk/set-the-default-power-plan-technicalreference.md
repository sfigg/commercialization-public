---
Description: Set the Default Power Plan
MS-HAID: 'p\_adk\_online.set\_the\_default\_power\_plan\_technicalreference'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Set the Default Power Plan
---

# Set the Default Power Plan


Use these instructions to set a default power plan when deploying Windows 8 or Windows Server® 2012 PCs. A power plan is also known as a *power scheme*.

**Note**  
This page gives information about manufacturing PCs.

To modify a power plans on your own PC, see [Power Plans: Frequently asked questions](http://go.microsoft.com/fwlink/p/?linkid=278892).

 

**To set the default power plan**

1.  On your technician computer, open an elevated command prompt.

2.  If you want to use a power plan from another computer, import the power plan.

    For example, to import a power plan that is named OutdoorPlan, type the following at a command prompt:

    ``` syntax
    powercfg -IMPORT C:\OutdoorPlan.pow
    ```

3.  Type the following to find the GUID for all the power plans on the computer:

    ``` syntax
    powercfg -LIST
    ```

    The computer returns the list of available power plans. The following examples refer to these plans as *guidPlan1* and *guidPlan2*.

    ``` syntax
    Existing Power Schemes (* Active)
    -----------------------------------
    Power Scheme GUID: {guidPlan1}  (Balanced) *
    Power Scheme GUID: {guidPlan2}  (Power saver)
    ```

4.  Note the GUIDs that are listed next to the power plans that you want to change.

5.  Set the power plan that you want to set as the default as the active power plan. For example, you can use the following command:

    ``` syntax
    powercfg -SETACTIVE {guidPlan2}
    ```

    where *guidPlan2* is the name of the power plan.

    This command can be run by using a custom command in an answer file, or by opening an elevated command prompt in audit mode.

**To confirm that the default power plan**

1.  Click **Start**, and then select **Control Panel**.

2.  Click **Hardware and Sound**, and then select **Power Options**.

    The **Power Options** Control Panel opens, and the power plans appear.

3.  Review each power plan.

4.  Verify that the correct plan is set as the active power plan. The computer shows an asterisk (\*) next to the active power plan.

## <span id="related_topics"></span>Related topics


[Add a Custom Command to an Answer File](p_wsim.add_a_custom_command_to_an_answer_file_win8)

[Boot Windows to Audit Mode or OOBE](p_adk_online.boot_windows_to_audit_mode_or_oobe_win8)

[Create a Custom Power Plan](create-a-custom-power-plan-8-technicalreference.md)

[Power Policy Configuration and Deployment in Windows](http://go.microsoft.com/fwlink/p/?linkid=129584)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Set%20the%20Default%20Power%20Plan%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




