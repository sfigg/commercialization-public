---
title: Docking
description: Provides guidance on wired and wireless docking scenarios.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9a7c246a-1efe-4079-b166-ba959bc7edd2
---

# Docking


To enable fast, seamless connections between desktops and mobile devices to external equipment, Windows 10 supports single cable docking and wireless docking. Interoperability is the key goal of the docking recommendations included here. These recommendations comprise both system and dock recommendations to ensure that a user can confidently dock their desktop system devices and their mobile system devices.

A dock is a device that is intended to enhance the productivity of a system. At a minimum, a dock has the followiing capabilities:

1. Contains a display-out option or a built-in monitor
2. Allows the user to connect to external peripheral devices

The dock manufacturer is responsible for properly advertising and marketing the type of display and peripheral devices that are supported by the dock.

## Wired docking


A wired docking configuration uses a single connection to a dock. The connection is either through a cable or a device to an adjacent dock attachment. The dock provides ports for input devices, such as mice and keyboards, and for output devices like displays and printers. Better docking equipment provides a power connection, for both use and charging of the device, and a wired network connection.

Wired docking features to consider:

-   Use of a single cable from the device to the dock
-   Support for phone, tablet, and laptops
-   Wired or wireless mouse and keyboard input
-   Multiple connections on the dock
-   Monitor outputs using HDMI, DisplayPort, or both
-   A power connection to the device
-   An Ethernet port

### Overall recommendations

The device-to-dock connection should be USB Type-C. The introduction of the USB Type-C connector allows us to truly reach a single-cable solution that supports docks, displays, data devices, and power for the majority of portable systems (phones, tablets, and laptops). We expect the largest changes in the wired docking space to be around USB Type-C alternate modes, with minor changes coming with updates of graphics standards.

USB Type-C introduced the concept of alternate modes (protocols other than USB over a symmetrical and reversible Type-C connector and cable), but because this technology is still “young,” we expect to see other alternate modes defined in the future. As more alternate modes are added, we will continue to reevaluate our USB Type-C recommendations.

Currently, we are recommending that DisplayPort over Type-C be used as the alternate mode for docks and displays. Although we do allow docks and displays to use other USB Type-C alternate modes, these devices must be able to fall back to the DisplayPort over Type-C alternate mode to ensure interoperability. For example, Thunderbolt 3 docks and displays must still work when the dock or display is connected to a system that only supports DisplayPort over Type-C alternate mode.

Additionally, Windows 10, version 1607 supports Indirect Display over USB, so any dock that supports Indirect Display over USB must also have a fallback to DisplayPort. Indirect Display is a simple user-mode driver model to support monitors that are not connected to traditional graphics processing unit (GPU) display outputs. An example would be a USB dongle connected to a PC that has a regular Video Graphics Array (VGA), Digital Visual Interface (DVI), High-Definition Multimedia Interface (HDMI), or DisplayPort monitor attached to it. The Indirect Display interface works over all USB ports, including Type A and Type-C (with and without alternate mode). For more information about Indirect Display, see [Indirect Display Driver Model Overview](https://docs.microsoft.com/en-us/windows-hardware/drivers/display/indirect-display-driver-model-overview).

As HDMI and DisplayPort protocol specifications mature, our recommendations will change to take advantage of new features.

#### Wired docking system recommendations

All systems should meet at least the [minimum hardware requirements](../minimum/minimum-hardware-requirements-overview.md) and the [Windows Hardware Compatibility Specifications](../compatibility/index.md). In addition to these requirements, we recommend that systems work with docks built to the wired docking recommendations. This section covers what additionally is needed on the system side.

<table>
<tbody>
<tr>
<th align="left" valign="top">System connection to the dock</th>
<td>The system should include at least one USB Type-C port that supports USB Host or USB Dual Role/USB On-The-Go (OTG). All USB Type-C ports should include support for the following:
<ul>
  <li>USB Data, with <a href="http://www.usb.org/developers/ssusb">USB 3.1 Gen 2</a> being optimal</li>
  <li><a href="http://www.usb.org/developers/powerdelivery/">USB Power Delivery (PD)</a> power sink to allow systems to charge using USB-C from dock, so that a user only needs to connect one wire to their system to be productive for several hours</li>
  <li><a href="https://www.vesa.org/wp-content/uploads/2016/10/USB-DevDays-DisplayPort-Alternate-Mode-2016-final4.pdf">DisplayPort Alternate Mode</a>, pin assignment C, D, E, and F, with support for High Bit Rate (HBR) and High Bit Rate 2 (HBR2) signaling on those pin assignments, and the ability to source DisplayPort on at least two DisplayPort lanes for all supported pin assignments</li>
</ul>
<p>For systems with multiple USB Type-C ports, we recommend that all ports support the specifications above. If the specifications are not supported by all of the included USB Type-C ports, we recommend that these ports be visually differentiable to the user as defined in the <a href="http://www.usb.org/developers/logo_license/USB-IF_TLA_and_Logo_Usage_Guidelines_FINAL_March_13.2017.pdf">USB-IF Trademark License Agreement</a> under the section “Logo Guidelines for USB Type-C Products and Cables that Support Alternate Modes.”</p>
<p>Also, please see "Note on USB-C Alternate Modes" if you plan on including an alternate mode other than DisplayPort over USB Type-C alternate mode.</p>
<p>For more information about implementing USB Type-C, see <a href="https://msdn.microsoft.com/en-us/library/windows/hardware/mt595926.aspx">Developing Windows drivers for USB Type-C connectors</a> on MSDN.</p>
</td>
</tr>
<tr>
<th align="left" valign="top">RAM</th>
<td>The system should have at least 2 GB of RAM.</td>
</tr>
<tr>
<th align="left" valign="top">Flash storage</th>
<td>The system should have at least 16 GB of nonremovable flash memory.</td>
</tr>
<tr>
<th align="left" valign="top">Audio/video latency</th>
<td>Audio or video latency should not exceed 80 milliseconds.</td>
</tr>
</tbody>
</table>

#### Wired dock (device) recommendations

The end goal of these docking recommendations is to maximize compatibility and interoperability. For docks that support other USB Type-C alternate modes (such as Thunderbolt 3), we strongly recommend they also support the following specifications in addition to ensure interoperability with all systems. These recommendations are in addition to the [Windows Hardware Compatibility Specifications](../compatibility/index.md).

<table>
<tbody>
<tr>
<th align="left" valign="top">Dock connection to the system</th>
<td>We recommend that the dock connect to the system by using USB Type-C. At a minimum, the dock's USB Type-C connector should support the following features:
<ul>
  <li>USB Data (<a href="http://www.usb.org/developers/ssusb">USB 3.1 Gen 2</a>) to enable USB-connected peripheral devices</li>
  <li><a href="http://www.usb.org/developers/powerdelivery/">USB Power Delivery (PD)</a> power provider for charging a system while it is docked, with a minimum power of 30 watts, following the PD power rules (see section 10 of the Power Delivery specification); for additional information, see the Power Budget Policy Section</li>
  <li>USB Type-C <a href="https://www.vesa.org/wp-content/uploads/2016/10/USB-DevDays-DisplayPort-Alternate-Mode-2016-final4.pdf">DisplayPort Alternate Mode</a>, pin assignments C and D, with support for HBR and HBR2 signaling on those pin assignments (and pin assignments E and F, if supported), and the ability to sink DisplayPort on at least two DisplayPort lanes for all supported pin assignments</li>
</ul>
<p>Also, please see "Note on USB-C Alternate Modes" if you plan on including an alternate mode other than DisplayPort over USB Type-C alternate mode.</p>
</td>
</tr>
<tr>
<th align="left" valign="top">Dock (downstream) I/O ports</th>
<td>The downstream device I/O ports between a dock and other peripheral devices should always interoperate with any system that meets the system docking requirements.
<ul>
  <li>For peripheral device connectivity, a combination of at least three USB Type-A and/or USB Type-C 3.1 Gen 2 ports
  <ul>
    <li>The USB Type-C ports should provide a minimum of 15 watts to devices through USB Type-C current, and optionally USB PD; see the Power Budget Policy Section.</li>
    <li>The USB Type-A ports should provide either 2.5, 4.5, or 7.5 watts to devices according to the port type defined in the USB Battery Charging 1.2 standard; see the Power Budget Policy Section.</li>
  </ul>
  </li>
  <li>USB Type-C power input; see the "Power" recommendation</li>
  <li>Ethernet connectivity (optional), to ensure that you choose a USB Ethernet adapter that works on mobile devices</li>
  <li>Audio output port (optional)</li>
  <li>An external monitor connection, if the dock does not include a built-in monitor (see the "Display output" recommendation)</li>
</ul>
</td>
</tr>
<tr>
<th align="left" valign="top">Power input</th>
<td>We recommend that power to the dock be through a USB-C connector. The power adapter that ships with the dock should provide enough power to both charge the system connected to the dock and power the devices attached to the dock (minimum 30 watts). A user should only need one power supply to use both their dock and system.</td>
</tr>
<tr>
<th align="left" valign="top">Display output</th>
<td>The connection from the dock to an external monitor should be provided by at least one digital connector that is at a minimum either HDMI 1.4 or DisplayPort 1.2 (supporting DP++).
<p>However, if the device is a docking display (that is, the dock and the monitor are in the same device), it is optional to include an additional display output to enable a multimonitor experience. If the dock is a docking display, this needs to be indicated in the Microsoft OS docking descriptor.</p>
<p>The resolution supported should at a minimum be 1080p, regardless of whether the display is externally connected through an external video port or is internally connected to the display.</p>
<p>Please see "Note on USB-C Alternate Modes" if you plan on including an alternate mode other than DisplayPort.</p>
</td>
</tr>
<tr>
<th align="left" valign="top">Audio output</th>
<td>If the dock has one or more 3.5 mm audio output jacks, a minimum of stereo outputs need to be supported at 16 bits / 44.1 kHz format. Audio support in the dock must comply with the USB Audio Device Class 2 specification and implement jack insertion detection as outlined in the specification.</td>
</tr>
<tr>
<th align="left" valign="top">Audio/video latency</th>
<td>The audio and video latency of devices attached either through USB (or for audio through a 3.5 mm jack) should not exceed 40 milliseconds.</td>
</tr>
<tr>
<th align="left" valign="top">Touchpad (optional)</th>
<td>If the dock has an embedded touchpad, the touchpad needs to be a precision touchpad (PTP). We recommend that IHVs follow the <a href="https://msdn.microsoft.com/en-us/library/windows/hardware/mt604177(v=vs.85).aspx">PTP implementation guide</a> to create PTPs that are on par with traditional laptop PTPs. The <a href="https://msdn.microsoft.com/en-us/library/windows/hardware/mt604198(v=vs.85).aspx">Device Integration</a>, <a href="https://msdn.microsoft.com/en-us/library/windows/hardware/mt604199(v=vs.85).aspx">Experience Customization</a>, and <a href="https://msdn.microsoft.com/en-us/library/windows/hardware/mt604201(v=vs.85).aspx">Module Design for HLK Requirements</a> sections in the implementation guide describe the best practices for creating a touchpad that is superior aesthetically and experience-wise.</td>
</tr>
</tbody>
</table>
All these recommendations are in addition to the touchpad requirements detailed in the <a href="../minimum/minimum-hardware-requirements-overview">minimum hardware requirements</a>.

## Wireless docking


Like a wired dock, a wireless dock has ports for input and output peripherals. The connection to the device is wireless only. The dock does not provide power or a wired network connection to the device.

Wireless docking features to consider:

-   A wireless connection from the device to the dock
-   Support for phone, tablet, and laptops
-   Wired or wireless mouse and keyboard input
-   Monitor outputs using HDMI, DisplayPort, or both

### Wireless dock discovery

Windows 10 will discover, pair, connect, and manage docks.

### Recommendations

-   Include Wifi-Display (Miracast) extensions in receiver firmware.
-   Support WSB and MA-USB.
-   Support WiGig for enterprise class docking equipment.

## Related topics

[Windows support for USB Type-C connectors](https://msdn.microsoft.com/library/windows/hardware/mt628692)
<br/>[Continuum](continuum.md)

[Declaring a hardware device as a dock by using a Microsoft OS Descriptor]: declaring-a-hardware-device-as-a-dock.md