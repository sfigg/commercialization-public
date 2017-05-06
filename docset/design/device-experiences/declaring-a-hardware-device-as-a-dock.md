# Declaring a hardware device as a dock by using a Microsoft OS Descriptor



## Overview


When a laptop or a convertible device is attached to a USB dock, the operating system should be able to identify the attached hardware device as a dock so that it can deliver the correct user experience, such as when a convertible device is docked in a Continuum setup.

To qualify as a dock, the hardware device should allow projection to external displays and support additional peripheral devices such as a mouse, keyboard, storage, and more. Thus, a USB hub alone or a port replicator does not quality as a dock.

The [Microsoft OS Descriptor](https://msdn.microsoft.com/en-us/windows/hardware/drivers/usbcon/microsoft-defined-usb-descriptors) is recommended for docks with USB-only connectors or for docks with USB and video over standard or proprietary connectors, such as a Surface dock or a USB Type-C dock.

To declare to Windows that a device is a dock, you can use the extended properties OS feature descriptor. The extended properties descriptor will create a bitmasked registry entry, **MSOSDockProperties**, which indicates different dock properties, as shown in the following table:

Offset | Property name                 | Description
------:|:------------------------------|:-------------------------------------------------------------------------
0      | **IsDock**                    | This value is set to 1 to indicate that the device is the dock.
1      | **DockHasIntegratedScreen**   | This value is set to 1 to indicate that the dock has a built-in screen.
2      | **DockHasIntegratedKeyboard** | This value is set to 1 to indicate that the dock has a built-in keyboard.
3      | **DockHasIntegratedMouse**    | This value is set to 1 to indicate that the dock has a built-in mouse.
4-31   | Reserved                      | These values are reserved and should be set to zero.

All docks should have at a minimum the **IsDock** property, with the additional custom properties set if needed. Only use the **DockHasIntegratedScreen**, **DockHasIntegratedKeyboard**, and **DockHasIntegratedMouse** properties if such a device is physically built into the dock, not just if the dock supports this type of connection.



## Example


This example demonstrates how an extended properties OS descriptor is used to indicate that a device is a dock with a built-in mouse, keyboard, and monitor to Windows. In this example, by using the returned extended properties descriptors, the **MSOSDockProperties** DWORD registry entry is created under the following registry keys:

**HKLM\\SYSTEM\\CurrentControlSet\\Enum\\USB\\**_DeviceVID&PID_**\\**_DeviceInstance_**\Device Parameters**
<br/>DWORD: **MSOSDockProperties** = 1



### Header example



This section illustrates the layout of the header section, which includes the length of the entire descriptor, the number of function sections, and the version number.

Offset | Field          | Size (bytes) | Type  | Value  | Description
------:|:---------------|-------------:|:------|:-------|:-------------------------------------------------------
0      | **dwLength**   | 4            | DWORD | 0x0042 | The length of this custom property section is 66 bytes.
4      | **bcdVersion** | 2            | BCD   | 0x0100 | Version 1.0.
6      | **wIndex**     | 2            | WORD  | 0x0005 | Extended property OS descriptor.
8      | **wCount**     | 2            | WORD  | 0x0001 | One custom property.



### Custom property example


This section provides an example for how to set custom properties.

Offset | Field                    | Size (bytes) | Value      | Description
------:|:-------------------------|-------------:|:-----------|:-----------------------------------------------------------------------------------------
0      | **dwSize**               | 4            | 0x00000038 | The length of this custom property section is 56 bytes.
4      | **dwPropertyDataType**   | 4            | 0x00000004 | The property value stores a little-endian 32-bit integer.
8      | **wPropertyNameLength**  | 2            | 0x00000026 | The length of the property name string is 38 bytes.
10     | **bPropertyName**        | 38           | ‘M’ ‘\0’<br/>‘S’ ‘\0’<br/>‘O’ ‘\0’<br/>‘S’ ‘\0’<br/>‘D’ ‘\0’<br/>‘O’ ‘\0’<br/>‘C’ ‘\0’<br/>‘K’ ‘\0’<br/>‘P’ ‘\0’<br/>‘R’ ‘\0’<br/>‘O’ ‘\0’<br/>“P’ ‘\0’<br/>“E’ ‘\0’<br/>‘R’ ‘\0’<br/>‘T’ ‘\0’<br/>‘I’ ‘\0’<br/>‘E’ ‘\0’<br/>‘S’ ‘\0’<br/>‘\0’ ‘\0’ | The property name is **MSOSDockProperties**.
22     | **dwPropertyDataLength** | 4            | 0x00000004 | The length of the property value is four bytes.
26     | **bPropertyData**        | 4            | 0x0000000F | This value indicates that device is a dock with an embedded mouse, keyboard, and monitor.



## Additional steps


In addition to creating the extended properties OS descriptor, you must also update **one** of the following for the Microsoft OS descriptor to be read:

* The product identifier (PID) of the device
* The revision number and serial number of the device



## Related topics


[Microsoft OS Descriptors for USB Devices](https://msdn.microsoft.com/en-us/windows/hardware/drivers/usbcon/microsoft-defined-usb-descriptors)
<br/>[Microsoft OS 1.0 Descriptors Specification](https://msdn.microsoft.com/en-us/windows/hardware/gg463179.aspx)
<br/>[Microsoft OS 2.0 Descriptors Specification](https://msdn.microsoft.com/en-us/library/windows/hardware/dn385747.aspx)