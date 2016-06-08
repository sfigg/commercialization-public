---
title: Touch and pen power management for modern standby platforms
description: A touch controller translates capacitive touch inputs on a display to software commands to deliver to the operating system and applications.
MS-HAID:
- 'cstandby.touch\_power\_management\_for\_connected\_standby-capable\_platforms'
- 'p\_weg\_hardware.touch\_and\_pen\_power\_management\_for\_modern\_standby\_platforms'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0322C9BC-9DEE-48FD-B7FB-73E5C9B685E7
---

# Touch and pen power management for modern standby platforms


Touch controllers and pen digitizers are similar devices. A touch controller translates capacitive touch inputs on a display to software commands to deliver to the operating system and applications. A pen digitizer translates pen input from a stylus to software commands to deliver to the operating system and applications. In a PC that supports the modern standby power model, these devices have similar power management requirements.

A touch controller or pen digitizer is typically mounted on the same circuit board as the System on a Chip (SoC) or core silicon, and is permanently connected to the SoC or core silicon via an I2C bus. When the hardware platform enters modern standby, the touch controller or pen digitizer is powered off. When the display turns on and the platform exits modern standby, the touch controller or pen digitizer is powered on again. While the display is turned off and the platform is in modern standby, the touch controller or pen digitizer must not wake the SoC or core silicon.

The guidelines for implementing power management for a touch controller or pen digitizer are the same. For brevity, parts of the following discussion explicitly mention only touch controllers, but the discussion should be understood to apply to pen digitizers as well.

## <a href="" id="touch"></a>Power management modes


For hardware platforms that run Windows 10, a touch controller or pen digitizer device is expected to have three power modes—*active*, *idle*, and *standby*—in which the device draws power. Additionally, the device has a *power-removed* mode in which all power inputs to the touch controller have been gated off by an external entity. Contact the device manufacturer for detailed information about the device power modes of a touch controller or pen digitizer.

For more information about power management for touch controllers and pen digitizers, see [Power handling for Windows 8 and Windows 8.1 touch and pen controllers](https://msdn.microsoft.com/library/windows/hardware/dn672274).

The following table summarizes the four device power modes of a touch controller or pen digitizer device.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Device power mode</th>
<th>Description</th>
<th>Average power consumption</th>
<th>Exit latency to active</th>
<th>Transition mechanism</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Active</p></td>
<td><p>Device is actively processing input.</p></td>
<td><p>Depends on screen area. (See note 1 following table.)</p></td>
<td><p>N/A</p></td>
<td><p>Hardware autonomous</p>
<p>(See note 2 following table.)</p></td>
</tr>
<tr class="even">
<td><p>Idle</p></td>
<td><p>Device is waiting for input in a low-latency state.</p></td>
<td><p>Depends on screen area. (See note 1 following table.)</p></td>
<td><p>&lt; 10 milliseconds (typical)</p></td>
<td><p>Hardware autonomous</p>
<p>(See note 3 following table.)</p></td>
</tr>
<tr class="odd">
<td><p>Standby</p>
<p>(See note 4 following table.)</p></td>
<td><p>Device has context saved but is unable to process input on the system display. A driver command is required to switch the device to idle or active mode.</p></td>
<td><p>&lt; 5 milliwatts (device-dependent)</p></td>
<td><p>&lt; 100 milliseconds (typical)</p></td>
<td><p>Driver command—Human Interface Device (HID) SET_POWER for I2C touch controller or pen digitizer</p></td>
</tr>
<tr class="even">
<td><p>Power-removed</p></td>
<td><p>Device has no power applied because the platform is not powered on or an external entity has switched off power</p>
.</td>
<td><p>0 watts</p></td>
<td><p>&lt; 100 milliseconds</p></td>
<td><p>External entity removes power or applies power under control of ACPI firmware in response to D3 IRP.</p></td>
</tr>
</tbody>
</table>

 

**Notes**

1.  For the active and idle power modes, the required average power consumption for the device is calculated as follows:

    0.9 × (idle mode power consumption) + 0.1 × (active mode power consumption) &lt;= 35 milliwatts

2.  The device's transition from idle mode to active mode occurs automatically in hardware when the device detects user input.
3.  The device's transition from active mode to idle mode occurs automatically in hardware after the device receives no user input for a period of time.
4.  In the preceding table, the term *standby* refers to a device power mode that is distinct from *modern standby*, which is a platform-wide power state.

The latency of the device's transition from standby mode to active mode is very important for system responsiveness. The touch controller must be able to transition to active mode from the power-removed mode in less than 100 milliseconds.

The power consumed by a touch controller or pen digitizer device in standby mode varies according to the device manufacturer and part number. System designers should work with the device manufacturer to understand the device-specific standby power consumption. If the power consumption in standby mode exceeds one milliwatt, the device should be placed on a switchable power rail so that the device can stay in power-removed mode during modern standby.

## <a href="" id="software"></a>Software power management mechanism


Windows requires all supported touch controllers (and pen digitizers) to be exposed as HID devices that use the HID driver stack that is included in Windows. The touch controller is connected to the SoC or core silicon through an I2C bus. For more information about Windows support for I2C-connected HID devices, see [HID over I2C](https://msdn.microsoft.com/library/windows/hardware/jj127208).

The built-in HID driver stack for the touch controller will enter the D3 device power state within five seconds after the display turns off and the platform enters modern standby. Immediately after the display turns on and the platform exits modern standby, the driver stack enters the D0 device power state. For more information about D0 and D3, see [Device Power States](https://msdn.microsoft.com/library/windows/hardware/ff543162).

In response to a D0 IRP or D3 IRP (both are [**IRP\_MN\_SET\_POWER**](https://msdn.microsoft.com/library/windows/hardware/ff551744) requests of type **DevicePowerState**), the platform ACPI firmware executes the \_ON or \_OFF control method to switch on or off the power rail that the touch controller is attached to. For more information about these control methods, see the *Advanced Configuration and Power Interface Specification, Revision 5.0* ([ACPI 5.0 specification](http://www.acpi.info/)).

For a touch controller that is connected to the core silicon over I2C, the built-in HIDI2C driver stack will send the HID SET\_POWER(Sleep) command to the touch controller when the D3 state is entered. The HIDI2C driver stack will send the corresponding HID SET\_POWER(On) command when the D0 state is entered. The touch controller is expected to enter standby mode when the SET\_POWER (Sleep) command is delivered, and to enter active mode when the SET\_POWER(On) command is delivered.

For more information about the HID SET\_POWER command, see [HID over I2C Protocol Specification](http://msdn.microsoft.com/library/windows/hardware/hh852380.aspx).

## <a href="" id="supportedhw"></a>Supported hardware power configurations


To reach the [hardware power floor](optimizing-modern-standby.md) while the platform is in modern standby, the touch controller (or pen digitizer) must transition to a low-power mode—either standby mode or power-removed mode. Windows supports two hardware configurations for achieving the transition to this low-power mode. One configuration uses the HID SET\_POWER command to place the touch controller in standby mode during modern standby, and the other uses a switchable power rail to place the touch controller in power-removed mode during modern standby.

We recommend that all platforms and touch controllers support the HID SET\_POWER command.

As an option, the system designer can attach the touch controller to a dedicated power rail that can be switched off to further reduce the power contribution of the touch controller to the hardware power floor.

To ensure compatibility with Windows 10, study the [Touch and pen power-management checklist](#checklist) and review your system design with Microsoft.

### <a href="" id="config1"></a>

**Using the HID SET\_POWER command**

The first hardware configuration is shown in the following block diagram. The touch controller must be able to enter standby power mode in response to a HID SET\_POWER (Sleep) command sent by the Windows HIDI2C driver stack. This configuration requires the touch controller to have a very low power consumption in the standby power mode—typically, less than one milliwatt.

This configuration is shown in the following block diagram.

![a configuration that uses the hid set\-power command](images/touch1.png)

The touch controller must be able to receive I2C commands while in the standby power mode, and must transition to the active power mode in response to a HID SET\_POWER (On) command sent by the Windows HIDI2C driver stack.

In this configuration, the touch controller can be connected to any power rail or power domain. There is no requirement that the touch controller be powered by a dedicated power rail or separate power domain.

**Switchable power rail for the touch controller**

Another option is to place the touch controller on a separate power rail or domain that can be switched on and off independently of the power supplied to other parts of the platform. Switching is controlled by a SoC GPIO pin whose state is set by the ACPI firmware. In this configuration, the touch controller transitions to the power-removed mode when the platform enters modern standby. The touch controller enters active mode when the system exits modern standby and power is re-applied to the controller.

This configuration is shown in the following block diagram.

![a configuration that uses a switchable power rail](images/touch2.png)

Note that the latency of the transition to active mode will be longer for this configuration than for the [other supported configuration](#config1). That's because the hardware context of the touch controller device is lost in power-removed mode. Typically, some time is required for the device's internal logic to re-initialize its hardware context after power is restored. Windows requires all supported touch controllers to transition to active mode within 100 milliseconds of power being applied to the touch controller.

If the touch controller is placed on a switchable power rail, as shown in the preceding diagram, the device still receives the HID SET\_POWER(Sleep) command from the Windows HIDI2C driver stack. The HID SET\_POWER(Sleep) command will be sent before the [Windows ACPI driver](https://msdn.microsoft.com/library/windows/hardware/ff540493), Acpi.sys, is instructed to run the control methods that remove power from the device. Currently, Windows does not implement a guaranteed time-out interval between the sending the SET\_POWER(Sleep) command and the execution of the ACPI control method that turns off the power rail. Touch controller vendors should provide feedback to Microsoft on the time required to process the HID SET\_POWER(Sleep) command.

In this configuration, the touch controller must be placed on a separate power rail or power domain that can be switched on and off independently of the power supplied to the rest of the platform. No other devices should be placed on the power rail that drives the touch controller. The power rail can receive power from either a system power-management IC (PMIC) or some other independent power source. Power to the power rail must be controlled by ACPI firmware that manages the state of a GPIO output pin on the SoC that is connected to the on/off control input of the power source.

The system designer must consider the electrical limitations and constraints of the touch controller device. Some devices may require special pads on the I2C clock and data lines to prevent current leakage through the device if the device is without power while connected to an active bus. For more information, see [Power rail switching](http://msdn.microsoft.com/library/windows/hardware/dn672275.aspx).

The system integrator must develop ACPI firmware to describe, as an ACPI Power Resource, the rail that supplies power to the touch controller. This Power Resource must include the \_ON, \_OFF, and \_STA control methods. The \_ON method must configure the GPIO pin to turn on the power domain or switch, and the \_OFF method must configure the GPIO pin to turn off the power domain or switch. The \_STA method must report the current on/off state of the Power Resource.

The system integrator must also develop ACPI firmware to map the device power state of the touch controller to the Power Resource. To provide this mapping, include \_PR0 and \_PR3 packages under the touch device in the ACPI namespace that refer to the Power Resource for the touch controller.

When the system exits modern standby and the display is turned on, Windows changes the device power state of the touch controller to D0. This state change causes any ACPI control methods for the Power Resource (including \_ON) to execute, and causes the HID SET\_POWER(On) method to be sent to the device. If the device requires time to initialize the hardware after power is re-applied, this time should be encoded in the implementation of the \_ON method. For example, if the device requires 10 milliseconds of stall time between re-applying power and processing the HID SET\_POWER(On) command, this stall time should be encoded using the ACPI Sleep command inside the implementation of the \_ON control method. The system integrator and firmware developer should contact the touch controller or pen digitizer manufacturer to understand any power-on delay requirements.

**Note**  The touch controller must not be powered off by any hardware mechanism other than the ACPI control method implementation just described. Otherwise, the power removal will not be coordinated with the drivers for the device. In most cases, this type of design error will cause the device to be surprise-removed from the system, or to show up with an error in Device Manager.

 

## <a href="" id="wake"></a>Wake concerns


An I2C device can wake the SoC from modern standby by asserting an interrupt. This will cause the host to send SET\_POWER ON.

A Universal Serial Bus (USB) device can wake the SoC from modern standby by signaling a remote wake. This will cause the device to resume.

## <a href="" id="testing"></a>Testing and validation


It is critical for the system designer to verify that the touch controller (or pen digitizer) reliably enters standby mode or power-removed mode when the display is powered off for modern standby. The method used to validate this transition varies depends on which supported hardware configuration is implemented.

### Switchable power rail

Validation of power rail switching for the touch controller should be performed using both software-focused and hardware-focused methods. The hardware-focused method is the easiest—the system designer should use test points or power instrumentation to verify that the touch controller enters the power-removed (zero power consumption) mode when the display is turned off.

The software-focused method uses Windows instrumentation to verify that the D3 IRP traverses the device driver stack for the HID-over-I2C touch controller device. The Windows power manager contains built-in Event Tracing for Windows (ETW) instrumentation, including instrumentation to track device power (Dx) IRPs. To view this information in a manual mode, install the Windows Performance Toolkit (WPT) on the system under test.

To start a user-mode XPerf trace, follow these steps:

1.  Open a Command Prompt window as Administrator.
2.  Browse to the **\\%ProgramFiles%\\Windows Kits\\8.0\\Windows Performance Toolkit\\** folder.
3.  Start XPerf by running this command:

    ``` syntax
    xperf.exe -start power_session -on Microsoft-Windows-Kernel-Power
    ```

4.  Press the power button to transition the platform to modern standby.
5.  Wait 30 seconds.
6.  Press the power button to transition the platform out of modern standby.
7.  Run the following command to stop the event logging:

    ``` syntax
    xperf.exe -stop power_session
    ```

8.  Convert the binary trace file into .csv and human-readable format:

    ``` syntax
    xperf.exe –i \user.etl > power.txt
    ```

9.  Open the Power.txt file in a text editor and search for the hardware ID of the touch controller. To determine the hardware ID of the touch controller, open **Device Properties** in Device Manager, click the **Details** tab, and select **Device Instance Path**. In the following example (see step 10), the device instance path of the touch controller is ACPI\\MSFT0731\\2&daba3ff&0.
10. The initiation of the D3 IRP for the sensor device is indicated by an event of type Microsoft-Windows-Kernel-Power/IRP/Stop that has the device instance path of the sensor device and a last event value of 3, which indicates that the target state is D3. The following output event from the Power.txt file shows the start of the D3 IRP. The last two parameter values for this event (at the far right) indicate the device instance path and target state.

    ``` syntax
    Microsoft-Windows-Kernel-Power/Irp/Start, 7605393, "Unknown" ( 4), 256, 0, , , , , 0x868e2728, 1, 2, 0x85fb56e0, 25, "ACPI\MSFT0731\2&daba3ff&0", 3
    ```

11. This event should be logged near the start of the Power.txt output file. The parameter value 0x868e2728 in the preceding example is a pointer to the D3 IRP structure. By searching for subsequent events in the trace file that have this same IRP pointer, you can follow the progress of the D3 IRP as it traverses the driver stack for the HID I2C device. Note that the IRP pointer value is system-specific and will remain valid only until the next system startup. In the following example trace, observe how the IRP flows down to the [Windows ACPI driver](https://msdn.microsoft.com/library/windows/hardware/ff540493), Acpi.sys, and is then completed at the end by the Mshidkmdf.sys driver, which is part of the built-in Windows HID driver stack.

    ``` syntax
    Microsoft-Windows-Kernel-Power/Irp/Start,    7605393, "Unknown" (4),256, 0, , , , , 0x868e2728, 1, 2, 0x85fb56e0, 25, "ACPI\ATML1000\2&daba3ff&0", 3 Microsoft-Windows-Kernel-Power/Driver/Start, 7605416, "Unknown" (4), 20, 0, , , , , 0x868e2728, 0x85fb56e0, "\Driver\mshidkmdf" Microsoft-Windows-Kernel-Power/Driver/Stop,  7605515, "Unknown" (4), 20, 0, , , , , 0x868e2728, 0x85fb56e0 Microsoft-Windows-Kernel-Power/Driver/Start, 7605522, "Unknown" (4), 20, 0, , , , , 0x868e2728, 0x85fab6a0, "\Driver\hidi2c" Microsoft-Windows-Kernel-Power/Driver/Stop,  7608342, "Unknown" (4), 20, 0, , , , , 0x868e2728, 0x85fab6a0 Microsoft-Windows-Kernel-Power/Driver/Start, 7608351, "Unknown" (4), 20, 0, , , , , 0x868e2728, 0x857ffb90, "\Driver\ACPI" Microsoft-Windows-Kernel-Power/Driver/Stop,  7608416, "Unknown" (4), 20, 0, , , , , 0x868e2728, 0x857ffb90 Microsoft-Windows-Kernel-Power/Driver/Start, 7608424, "Unknown" (4), 20, 0, , , , , 0x868e2728, 0x85fb56e0, "\Driver\mshidkmdf" 
    ```

When the [Windows ACPI driver](https://msdn.microsoft.com/library/windows/hardware/ff540493), Acpi.sys, processes the D3 IRP, this driver executes the \_PR3 control method. The system firmware designer provides this control method to indicate which Power Resource must be turned off for the touch controller to enter the D3 state. The ACPI driver also executes the \_OFF control method under the Power Resource.

You can use a similar process to verify that the touch controller returns to D0 when the platform enters modern standby and the display turns on. A Microsoft-Windows-Kernel-Power/IRP/Start event for the touch controller will be logged with a target state of 0 (indicating D0) immediately after the power button is pressed to wake the platform.

## <a href="" id="checklist"></a>Touch and pen power-management checklist


System integrators and hardware vendors for touch controllers and pen digitizers should review the checklist below to ensure that their system power-management design is compatible with Windows 10.

-   Select a touch controller or pen digitizer device that supports the HIDI2C SET\_POWER command.
-   Ensure that the touch controller or pen digitizer device supports a hardware-autonomous idle power-management mode and that this mode is enabled by default in the device's firmware.
-   Measure the standby power of the touch controller or pen digitizer during modern standby after the SET\_POWER(Sleep) command has been sent.
-   If the power consumption (as measured in the preceding step) of the touch controller or pen digitizer device exceeds one milliwatt, ensure that the device is attached to a switchable power rail.
-   If the touch controller or pen digitizer device is located on a switchable power rail:

    -   Ensure that the device supports completely removing power when the device is not being used, and that restoring power automatically re-enables and re-initializes the device.
    -   Ensure that the power rail is controlled via a GPIO pin on the SoC or core silicon.
    -   Map this GPIO pin to a GPIO operation region in the system ACPI firmware.
    -   Provide a Power Resource to describe the power rail, and include \_ON, \_OFF, and \_STA control methods for this Power Resource.
    -   Provide \_PR0 and \_PR3 packages under the touch controller or pen digitizer device in the system ACPI firmware and ensure that they reference the Power Resource.
    -   Contact the hardware vendor for the touch controller or pen digitizer to obtain information about any required power-on latency. If the device requires any such latency, ensure that this latency is encoded in the implementation of the \_ON control method using the ACPI Sleep method.
-   Test and verify that the touch controller or pen digitizer responds to the HIDI2C SET\_POWER(Sleep) command and the HIDI2C SET\_POWER(On) command.
-   Test and verify that the touch controller or pen digitizer does not respond to input when the screen is turned off for modern standby.
-   Test and verify that the touch controller or pen digitizer is operational again immediately after the screen is turned on for modern standby.
-   To stress-test the touch controller or pen digitizer device, first cycle through multiple modern standby entry/exit transitions. Then verify that the device operates correctly when the screen turns on after exiting modern standby.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Touch%20and%20pen%20power%20management%20for%20modern%20standby%20platforms%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




