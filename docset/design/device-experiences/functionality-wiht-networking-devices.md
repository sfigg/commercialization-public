---
title: Functionality with networking devices
description: To support modern standby, Windows is designed to use the right network adapter at the right time for an Internet connection.
MS-HAID:
- 'cstandby.functionality\_with\_networking\_devices'
- 'p\_weg\_hardware.functionality\_wiht\_networking\_devices'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C34A4C8C-D312-4C83-9B4C-FE57E2341A9F
---

# Functionality with networking devices


To support modern standby, Windows is designed to use the right network adapter at the right time for an Internet connection. All modern standby PCs have a Wi-Fi adapter, but some PCs also have a mobile broadband (MBB) adapter and/or a wired Ethernet adapter. During modern standby, Windows automatically connects to the best available network.

## Automatic network selection


Windows automatically connects to the best available network during modern standby to help ensure that the system always has a fast, inexpensive, and reliable connection to the Internet.

Windows assumes that the network devices that are integrated into a modern standby system are capable of protocol offloads and wake-on-LAN (WoL) patterns. If a network device does not have both of these capabilities, the network device is disabled during modern standby.

By default, Windows prefers to use a wired Ethernet connection at all times if available, including when the system is in modern standby. If the Ethernet adapter supports protocol offloads and WoL patterns and is connected to a hub or switch, Windows prefers to use this adapter for the Internet connection over all other types of available network devices. If the Ethernet adapter does not support protocol offloads and WoL patterns, the Ethernet adapter is disabled during modern standby and Wi-Fi is used instead.

As long as a Wi-Fi connection to an associated access point is available, Windows uses this Wi-Fi connection and powers down an MBB device if one is present in the system. As soon as the Wi-Fi connection is lost, Windows powers on the MBB device and tries to connect to the cellular network.

After the Wi-Fi connection is lost, Windows tells the Wi-Fi device to keep searching for previously used access points by using the network list offload (NLO) feature. If a previously used Wi-Fi network is discovered, MBB is disconnected and powered down and Wi-Fi is used again.

## Network quiet mode


Windows allows periodic execution of third-party system services during modern standby to maintain compatibility with existing desktop applications.

However, the network quiet mode (NQM) feature does not allow these services to access the network during modern standby. NQM simulates a disconnected network for these third-party services, to which the Wi-Fi device appears to be simply disconnected from the Internet.

Desktop and system service application developers must be aware of NQM and not make their applications or services dependent on network access during modern standby.

Similarly, system designers and application developers must be aware that the network devices in modern standby are predominately operating with WoL patterns and protocol offloads enabled. This means that remote access into the system over the network is not available during modern standby, with the exception of Windows Store apps that have been pinned by the user to the lock screen.

## Network list offload (NLO) for Wi-Fi


The Wi-Fi and MBB devices in a modern standby platform are expected to be highly autonomous. A key Wi-Fi device feature for modern standby is called network list offload (NLO). During modern standby, a Wi-Fi device that supports NLO can automatically connect to previously used Wi-Fi access points.

NLO allows the Wi-Fi device to roam between previously used access points while the SoC remains in the low-power idle mode. As the user commutes between home and work, Windows automatically connects to Wi-Fi, thereby allowing the system to be already connected when the user presses the power button. The user no longer has to wait to connect to Wi-Fi. Instead, Wi-Fi is connected before the user turns on the system. Similarly, email is already downloaded, and connections to Skype and other communications services are automatically reconnected.

For more information about NLO, see [Wi-Fi Network List Offload](http://go.microsoft.com/fwlink/?LinkID=329749).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Functionality%20with%20networking%20devices%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




