---
title: WDTF System Fundamentals Testing Prerequisites
Description: WDTF System Fundamentals Testing Prerequisites
ms.assetid: 083e5516-cebc-45d5-b8b5-07f37aa446bc
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# WDTF System Fundamentals Testing Prerequisites

This section describes the tasks that you must complete before you test a client or server system using the Windows Hardware Lab Kit (Windows HLK). System Fundamentals is a collection of tests that apply to both client and server systems and must be run in addition to the system type you want to certify. Review the respective prerequisite topic for the system you are building.

-   For client systems, see <xref rid="p_hlk_test.system_client_testing_prerequisites">System Client Testing Prerequisites</b>

-   For server systems, see <xref rid="p_hlk_test.system_server_testing_prerequisites">System Server Testing Prerequisites</b>

## General Requirements

<mark type="bullet_intro">Audio</b>

-   Device has at least one render type endpoint connected (speakers, headphones, etc.)

<mark type="bullet_intro">BitLocker Drive Encryption</b>

-   Disable fast boot in BIOS prior to running any BitLocker test.

<mark type="bullet_intro">CD ROM</b>

-   Drive letter is assigned

-   Media is present in the device

-   Files are present on the media inserted

<mark type="bullet_intro">Disk</b>

-   Disk has at least one associated volume

-   Drive letter is assigned

<mark type="bullet_intro">GPS devices</b>

-   The device must be tested in a location where a GPS signal is available

<mark type="bullet_intro">LAN</b>

-   Device has an IPv6 address

-   Device has an IPv6 default gateway address.

    >[!NOTE]
    If the network adapters do not have an IPv6 address, you should use the WDTFREMOTESYSTEM parameter to pass an IPv6 address that is valid on your network, such as the IPv6 address of the HLK controller.

    
-   Device’s network operation status is IfOperStatusUp

<mark type="bullet_intro">WLAN/WiFi devices</b>

-   The device must be tested in a location where a wireless access point is available

<mark type="bullet_intro">Smartcard readers</b>

-   Device has Athena T0 test card inserted

<mark type="bullet_intro">Volume</b>

-   Drive letter is assigned

-   Media is present in the device

<mark type="bullet_intro">USB Host Controller</b>

-   A SuperSpeed HUB should be connected downstream of each exposed port, and at least one SuperMUTT must be connected to one of these hubs.

<seealso> <xref rid="p_hlk_test.system_fundamentals_tests">System.Fundamentals Tests</b> </seealso>



