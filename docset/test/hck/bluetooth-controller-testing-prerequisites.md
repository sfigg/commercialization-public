---
author: joshbax-msft
title: Bluetooth Controller Testing Prerequisites
description: Bluetooth Controller Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b82369d5-9eb7-46ac-b47d-427f21379338
---

# Bluetooth Controller Testing Prerequisites


This document covers how to properly setup your test environment and test machines for running the Bluetooth Windows HCK tests for a Bluetooth radio.

## Bluetooth Bus Controller Requirements (Device.BusController.Bluetooth)


When certifying a Bluetooth radio, it is required that all testing is done with the Microsoft Inbox Bluetooth stack. Filter drivers required for radio operation can still be used as long as the functionality of the Microsoft stack is not replaced.

The radio should be tested while connected over the transport type OEMs and ODMs will be using in their System. For example, if the radio will be connected over UART in a System, please certify the radio with it connected over UART as well.

The radio testing should be done in the default Windows configuration and no changes to Bluetooth settings should be made. For example, USB radios must support Selective Suspend and this will be enabled in Windows by default. Do not change this setting from the OS selected default.

**Note**  
It is **highly recommended** that IHVs who also produce a Profile Add-on pack perform additional Bluetooth System level testing (System.Client.BluetoothController) with their profile pack installed on the system as OEMs and ODMs will be required to certify their systems with these profile packs installed.

 

## Test Environment Setup


The Bluetooth tests require up to 3 test systems, each with a 4.0 Bluetooth radio present on the machine and in the same WHCK machine pool. The machines are broken down into two roles.

-   Primary – Test system which has the Bluetooth radio to be certified (DUT).

-   Secondary – Supporting test systems which have a 4.0 Bluetooth Radio present on the system.

All of the test machines must be able to communicate over TCP/IP and must be able to resolve each other’s machine names using DNS. Back channel TCP/IP communication takes places over ports 5005 and 5006 and should be opened automatically by the test software.

### Machine Setup Instructions

1.  Install the newest available Windows Operating System on the test machines, and join the machines to your test network. All test machines must be able to communicate with each other over TCP/IP and the WHCK controller.

2.  If the systems do not have an internal Bluetooth radio, perform the following steps.

    1.  Install the Bluetooth controller to be certified (DUT) on the primary system.

    2.  Install the supporting Bluetooth 4.0 radios on the secondary machines. It is recommended to use a previously certified radio on your secondary test machines, but no 4.0 radios have received a logo at the time that this document was written.

3.  Install software packages.

    1.  If certifying the **Bluetooth radio**, install any required software (filter drivers, etc.) required for the radios operation. Functionality of the Microsoft inbox Bluetooth Stack must not be replaced when certifying a radio.

    2.  If certifying a **Windows System** which has an integrated Bluetooth radio, install any required software required for radio operation, as well as any software the machine will ship with (this includes 3rd party drivers such as profiles packs and filter drivers).

4.  Install Windows HCK client on the test computer.

5.  Use Windows HCK studio to create a machine pool and move the 3 test machines into the newly created pool.

6.  Place all test machines into the “Ready” state.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Bluetooth%20Controller%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




