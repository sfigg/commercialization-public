---
Description: 'To update your devices, you''ll submit an update to Microsoft.'
MS-HAID: 'p\_phUpdate.update'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Mobile update
---

# Mobile update

##Updating a device
To update your devices, you'll submit an update to Microsoft. The mobile operator (MO) can help test the updates. When approved, the update goes to the production update server, where customer phones can download and receive the updates through a cellular or a Wi-Fi connection. With the users consent, the device updates automatically, with most of the update processes working in the background.

### <span id="Before_you_begin"></span><span id="before_you_begin"></span><span id="BEFORE_YOU_BEGIN"></span>Before you begin


Prior to submitting updates, complete the following tasks:

1.  Sign up to submit firmware submission and update requests. For more information, see the “Sign up for retail package signing and update submissions” section in [Ingestion Client](ingestion-client-for-windows-phone.md).

2.  Review the update scenarios that apply to you in [Update scenarios](update-scenarios.md).

3.  Review the update requirements that apply to you in [Update requirements](update-requirements.md).

4.  Obtain the successfully signed firmware submission ticket IDs for the firmware that devices will be updating from and the firmware that devices will be updating to. For info about how to perform this task, review [Submit binaries to be retail signed](https://msdn.microsoft.com/library/windows/hardware/dn789223).

### <span id="Types_of_updates"></span><span id="types_of_updates"></span><span id="TYPES_OF_UPDATES"></span>Types of updates


-   **Microsoft updates**. These updates target Microsoft code in the image, including the Microsoft packages in the ESP (EFI system partition) and the Main OS partitions, and Microsoft packages for the system loaders.

-   **OEM updates**. These are also referred to as Board Support Package (BSP) updates. OEMs can develop packages for their components in reserved regions and the partitions that they provide packages for, including the Main OS and MMOS partitions. The user data and SD cards cannot be updated. All user data and settings must be preserved when these updates are applied.

These types of updates can only be submitted individually.

 

##Refurbishing a device
Use the topics in this section to learn more about refurbishing a mobile device running Windows 10 Mobile.


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Topic</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Resetting a mobile device](resetting-the-phone.md)</p></td>
<td align="left"><p>Resetting the device addresses a number of key scenarios:</p>
<ul>
<li>A user may want to reset a device to transfer it to another owner.</li>
<li>The device has been lost or stolen and the owner wants to remotely reset the device</li>
<li>The device belongs to an organization, and the organization wants to remotely reset the device. For example, when an employee leaves the organization.</li>
<li>The device has malfunctioned and the user wants to reset the device.</li>
<li>An OEM has completed factory testing and wants to reset the device (optionally preserving preloaded map data).</li>
</ul></td>
</tr>
</tbody>
</table>

 

 


 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phUpdate\p_phUpdate%5D:%20Mobile%20update%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



