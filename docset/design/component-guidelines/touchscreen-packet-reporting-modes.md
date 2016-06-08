---
title: Packet Reporting Modes
description: This topic provides information about the packet reporting modes for a Windows Touchscreen device in Windows 10.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 48911417-9DFF-4697-AFF4-8E2526C29A06
---

# Packet Reporting Modes


This topic provides information about the packet reporting modes for a Windows Touchscreen device in Windows 10.

## Parallel mode


In Parallel mode, devices report all contact information in a single packet. Each physical contact is represented by a logical collection that is embedded in the top-level collection. This logical collection contains all the usages that the device supports for each contact. Each of the logical collections must be identical when you use Parallel mode. Because the device generally reports fewer contacts than the maximum, the number of contacts that are reported in a parallel packet should be communicated by using the Contact Count usage.

For example, consider a device that supports three contacts. If the user has only two fingers on the digitizer, then the parallel packet will consist of information about only those two contacts, in a report that can carry data for three contacts. In this case, the Contact Count should be set to two, so that the client application knows that any information about more than two contacts is not valid.

A disadvantage of reporting multiple contacts in one report is that space is wasted per report every time that there are fewer contacts than the maximum number of contacts possible. Devices can use the Hybrid mode to reduce this inefficiency.

## Hybrid mode


In Hybrid mode, the number of contacts that can be reported in one report is less than the maximum number of contacts that the device supports. For example, a device that supports a maximum of 4 concurrent physical contacts, can set up its top-level collection to deliver a maximum of two contacts in one report. If four contact points are present, the device can break these up into two serial reports that deliver two contacts each.

When a device delivers data in this manner, the Contact Count usage value in the first report should reflect the total number of contacts that are being delivered in the hybrid reports. The other serial reports should have a contact count of zero (0).

## Single finger hybrid reporting mode


The first input report for a given frame should indicate the total number of contacts that are to be reported by using the Contact Count usage. And all subsequent input reports for the same frame should have a value of zero (0) for the Contact Count usage, to indicate that they are part of the previously reported frame. The scan time for all reports of a given frame should be identical.

Here's a table showing the reporting sequence for a two-contact scenario, and using a single finger hybrid reporting mode.

| Report                | 1      | 2      | 3      | 4      | 5      | 6      |
|-----------------------|--------|--------|--------|--------|--------|--------|
| Contact Count         | 2      | 0      | 2      | 0      | 2      | 0      |
| Contact ID            | 1      | 2      | 1      | 2      | 1      | 2      |
| Contact 1: X, Y       | X₁, Y₁ | NR     | X₂, Y₂ | NR     | X₃, Y₃ | NR     |
| Contact 1: Tip switch | 1      | NR     | 1      | NR     | 1      | NR     |
| Contact 2: X, Y       | NR     | X₁, Y₁ | NR     | X₂, Y₂ | NR     | X₃, Y₃ |
| Contact 2: Tip switch | NR     | 1      | NR     | 1      | NR     | 1      |
| Scan Time             | T1     | T1     | T2     | T2     | T3     | T3     |

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Packet%20Reporting%20Modes%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




