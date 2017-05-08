---
title: Docking
description: Provides guidance on wired and wireless docking scenarios.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9a7c246a-1efe-4079-b166-ba959bc7edd2
ms.author: windows-hardware-design-content
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Docking


To enable fast, seamless connections between desktops and mobile devices to external equipment, Windows 10 supports single cable docking and wireless docking.

## Wired docking


A wired docking configuration uses a single connection to a dock. The connection is either through a cable or a device to an adjacent dock attachment. The dock provides ports for input devices, such as mice and keyboards, and for output devices like displays and printers. Better docking equipment provides a power connection, for both use and charging of the device, and a wired network connection.

Wired docking features to consider:

-   Use of a single cable from the device to the dock
-   Support for phone, tablet and laptops
-   Wired or wireless mouse and keyboard input
-   Multiple connections on the dock
-   Monitor outputs using HDMI or DisplayPort or both
-   A power connection to the device
-   An Ethernet port

### Recommendations
-   Device to dock connection is USB Type-C. For more information see [Windows support for USB Type-C connectors](https://msdn.microsoft.com/library/windows/hardware/mt628692).

## Wireless docking


Like a wired dock, a wireless dock has ports for input and output peripherals. The connection to the device is wireless only. The dock does not provide power or a wired network connection to the device.

Wireless docking features to consider:

-   A wireless connection from the device to the dock
-   Support for phone, tablet and laptops
-   Wired or wireless mouse and keyboard input
-   Monitor outputs using HDMI, DisplayPort, or both

### Wireless dock discovery

Windows 10 will discover, pair, connect, and manage docks.

### Recommendations

-   Include Wifi-Display (Miracast) extensions in receiver firmware.
-   Support WSB and MA-USB.
-   Support WiGig for enterprise class docking equipment.

 

 






