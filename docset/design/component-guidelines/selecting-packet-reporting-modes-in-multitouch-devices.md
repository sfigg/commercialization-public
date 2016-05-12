---
title: Selecting Packet Reporting Modes in Multi-touch Devices
description: Selecting Packet Reporting Modes in Multi-touch Devices
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DACF3D34-BD65-4D10-8A20-C441ACDD9AEA
---

# Selecting Packet Reporting Modes in Multi-touch Devices


Starting with Windows 8, the reporting of multi-touch data to the system is supported in two ways: Parallel mode or Hybrid mode. The vendor-supplied HID report descriptor differs, depending on the mode that was selected.

**Note**  Serial mode is selected by legacy devices only. Any new devices using serial mode will fail certification starting with Windows 8.

 

### Parallel Mode

In Parallel mode, devices report all contact information in a single packet. Each physical contact is represented by a logical collection that is embedded in the top-level collection. This logical collection contains all the usages that the device supports for each contact (for example, **X**, **Y**, and **Pressure**). When taking advantage of Parallel mode, each of the logical collections must be identical. Because the device generally reports fewer contacts than the maximum, the number of contacts that are reported in a parallel packet should be communicated either in the Contact count usage or by setting NULL values for all invalid contacts in a packet.

For example, consider a device that supports three contacts. If the user has only two fingers on the digitizer, the parallel packet has only two valid contact data in a report that can carry data for three contacts. In this case, the Contact count should be set to 2 so that the client application knows that any information about more than two contacts is not valid.

Alternatively, the device can set the values of the contact usages beyond the second entry to **NULL** values. Considering the overhead for supporting and reporting **NULL** values, using the actual count is encouraged.

A disadvantage of reporting multiple contacts in one report is that space is wasted per report every time that there are fewer contacts than the maximum number of contacts possible. Devices can use the Hybrid mode to reduce this inefficiency.

### Hybrid Mode

In Hybrid mode, the number of contacts that can be reported in one report is less than the maximum number of contacts that the device supports. For example, a device that supports a maximum of 48 concurrent physical contacts can set up its top-level collection to deliver a maximum of 12 contacts in one report. If 48 contact points are present, the device can break these down into 4 serial reports that deliver 12 contacts each.

When a device delivers data in this manner, the Contact count usage value in the first report should reflect the total number of contacts that are being delivered in the hybrid reports. The other serial reports should have a contact count of 0. Using the previous example, the Contact count usage in the first report has a value of 48, whereas the latter three reports have a contact usage count of 0. Due to this data delivery protocol, the actual count usage must be present in the input report of the report descriptor for the device.

### Null Values

Null values should be specified as outlined in the HID specification. The **NULL** bit must be set on all main items in the report descriptor. Be aware that a device can use either the Contact count usage or **NULL** values to notify the host of the actual number of valid contacts in a packet.

### Contacts in a Report

When sending data in hybrid or parallel mode, a contact that is delivered in one report must be delivered in all subsequent reports until it is lifted off the screen. If time is needed to adequate determine if the contact was lifted off the surface, the device must report the last known position of the contact and then deliver the “UP” state of the contact in a subsequent report. Devices should not send a report without the information for that contact while trying to determine its current state.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Selecting%20Packet%20Reporting%20Modes%20in%20Multi-touch%20Devices%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




