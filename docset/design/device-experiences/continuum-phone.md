---
title: Continuum for Phone
description: Continuum for Phone
MS-HAID:
- 'p\_weg\_hardware.docking\_\_private\_'
- 'p\_weg\_hardware.continuum\_phone'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: D59145D8-1299-4F97-AEEE-CB7A29173249
---

# Continuum for Phone


## Overview


Continuum for Phones is a new experience on compatible Windows 10 Mobile devices . With Continuum-compatible accessories<sup>\*</sup>, you can connect to a monitor and even to a mouse and keyboard to make your phone work like a laptop for getting things done. And whether you’re projecting Office apps for productivity or videos and games for entertainment, you can still use your phone for all the calls, texts, tweets, and things you do on your phone.<sup>\*\*</sup>

<sup>\*</sup>Accessories sold separately.

<sup>\*\*</sup>App availability and experience may vary by market. An Office 365 subscription may be required for some functionality.

Continuum for Phones takes full advantage of the Universal Windows app framework by allowing apps to optimize their appearance based on which display (such as the phone screen, monitor, big screen television or conference room projector) they are opened on.

This specification provides hardware requirements to support this feature. Microsoft will build and test Continuum for Phones features against these requirements.

## How it works?


When you dock (wired or wireless) your mobile device (phone/tablet) to an external display such as a monitor, television or projector, Windows 10 Mobile launches a separate tailored experience on the external display while maintaining the expected experience on your phone/tablet. Additionally, a mouse or a keyboard may be used with the external display similar to how they would with a PC.

![](images/fig0-wiredwireless-ovrvw.png)

The phone/tablet and monitor are managed as separate independent displays; a cursor or application windows cannot be dragged between and the desktop cannot be extended across them. An application can be launched on either monitor, and applications can choose to have a companion experience on the internal screen when the app is running on the extended screen. When a keyboard and mouse are paired to the phone/tablet their input is targeted only to the external screen. If a keyboard and mouse is not connected, your phone can be used to provide input to the external screen.

In the desktop environment, you have

-   Traditional desktop experience with Start Menu
-   Windows 10 apps scale to the external screen
-   Full keyboard and mouse support

In the mobile environment, you have

-   Full mobile functionality including communication and apps
-   Windows 10 apps scale to phone screen size

### Hardware Configuration

Continuum for Phones supports both wired and wireless configurations. This section includes some examples of hardware configurations that we believe could be built to support the Continuum for Phones feature; actual implementation and design is up to the OEM and/or hardware vendor.

### Wireless Dongle

Figure 1 shows a Miracast dongle in a media consumption configuration. The phone casts to a TV via Miracast. Bluetooth keyboard and mouse can be used to control the application on the external screen. Dongles that support the Miracast extensions included in Windows 10 will provide the best experience; Miracast dongles which do not support these extensions will provide a lesser experience due to increased latency and connection issues.

**Figure 1: Miracast-only dongle in productivity application configuration**

![](images/fig1-wirelessdongle.png)

### Wireless Dock

Figure 2 shows a wireless dock configuration. The wireless dock is built around the same components as the wireless dongle with additional connections for USB keyboard and mouse. The wireless connection from the phone/tablet to the dock carries audio and video via Miracast. Dongles that support the Miracast extensions included in Windows 10 will provide the best experience; Miracast dongles that do not support these extensions will provide a lesser experience due to increased latency and connection issues. A Bluetooth keyboard and mouse can be used in this configuration, or a USB keyboard and mouse can be connected to the dock and its input routed back to the phone via the Miracast User Input Back Channel (UIBC) feature included in the Windows 10 Miracast extensions. UIBC keyboard and mouse requires that the dock support the Windows 10 Miracast extensions.

**Figure 2: Wireless dock configuration**

![](images/fig3-wirelessdock.png)

### Wired Dock

Figure 3 shows a wired dock configuration. The wired connection from the phone to the dock carries audio, video, USB, and power. A display cable connects the dock to the monitor. A keyboard and mouse can be connected to the dock either wired or wireless. This configuration will result in an improved dock experience due to the bandwidth provided by the wired connection. USB Type C is recommended, although not required, for a user-friendly and high quality single cable experience.

**Figure 3: Wired dock configuration**

![](images/fig4-wireddock.png)

## Hardware Requirements


This section defines the hardware requirements needed to support Continuum for Phones.

### <a href="" id="--continuum-for-phone-and-tablet-requirements"></a> Continuum for phone and tablet requirements

A Continuum supported phone must meet all requirements stated in the [Windows 10 Minimum Hardware Requirements](../component-guidelines/minimum-hardware-requirements-overview.md). Additional requirements to support Continuum are shown in Table 1.

**Table 1: Continuum for Phones requirements**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Component</th>
<th>Minimum Requirements</th>
<th>Premium Recommendations</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Applications processor</td>
<td>Qualcomm MS8952, MS8992, MS8994</td>
<td>Dual SIM support</td>
</tr>
<tr class="even">
<td>RAM<sup>*</sup></td>
<td><p>2 GB RAM for phones with display resolution of 720p</p></td>
<td><p>3 GB RAM for phones with display resolution of 1080p or more</p></td>
</tr>
<tr class="odd">
<td>Flash storage</td>
<td>≥16 GB nonremovable flash memory</td>
<td></td>
</tr>
<tr class="even">
<td>microSD</td>
<td>Optional</td>
<td>microSD card support</td>
</tr>
<tr class="odd">
<td>Bluetooth</td>
<td>Bluetooth 4.0 support is required</td>
<td></td>
</tr>
<tr class="even">
<td>Wi-Fi</td>
<td>Supports at least 802.11n dual band</td>
<td>802.11ac dual band recommended. 2x2 antenna recommended.</td>
</tr>
<tr class="odd">
<td>Miracast</td>
<td>Supports Windows 10 Miracast extensions.</td>
<td></td>
</tr>
<tr class="even">
<td>USB</td>
<td>USB dual-role required to support wired dock configuration. USB 2.0 support required</td>
<td>USB 3.0 recommended. USB Type C connector strongly recommended to support wired configurations.</td>
</tr>
</tbody>
</table>

 

<sup>\*</sup>Adding custom features to the phone, such as a high-end camera, may require adding additional RAM. Careful estimation of memory requirements for extra features is essential.

### Continuum for Phones wireless dongle requirements

A wireless dongle must meet the following requirements.

**Table 2: Continuum for Phones wireless dongle requirements**

| Component           | Minimum Requirements                             | Premium Requirements                                                                 |
|---------------------|--------------------------------------------------|--------------------------------------------------------------------------------------|
| Wi-Fi               | Supports at least 802.11n.                       | 802.11ac dual band recommended.                                                      |
| Miracast            | Required. See "Additional Requirements" section. | Miracast UIBC (HID Commands mode) is recommended to enable keyboard and mouse input. |
| USB                 | USB and AC adaptor recommended to power device.  |                                                                                      |
| Audio/video latency | ≤80 msec<sup>\*</sup>                            |                                                                                      |
| Display resolution  | Minimum 720P @60 fps, 1080P @ 30fps              |                                                                                      |
| Display connector   | HDMI 1.4                                         |                                                                                      |

 

<sup>\*</sup>Not possible with current Miracast receivers.

### Continuum for Phones wireless dock requirements

The wireless dock must meet the following requirements.

**Table 3: Continuum for Phones wireless dock requirements**

| Component               | Minimum Requirement                                                                                                                                                                 | Premium Requirements                                                       |
|-------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|
| Wi-Fi                   | Supports at least 802.11n. Wi-Fi Direct Services (WFDS) required.                                                                                                                   | 802.11ac dual band recommended                                             |
| Miracast                | Supports Windows 10 Miracast extensions. Miracast UIBC (HID Commands mode) is required to enable keyboard and mouse input if the dock does not support WSB/USB-MA.                  |                                                                            |
| USB<sup>\*</sup>        | Minimum 2 USB A sockets for keyboard, and mouse, a third if USB peripherals are supported via WSB/USB-MA. USB 2.0 support required. USB and AC adaptor recommended to power device. | 3.0 recommended.                                                           |
| Audio/video latency     | ≤80 msec                                                                                                                                                                            |                                                                            |
| Display resolution      | 720p minimum                                                                                                                                                                        |                                                                            |
| Display connector       | HDMI 1.4 required.                                                                                                                                                                  | DisplayPort 1.2 recommended. VGA support via adapter strongly recommended. |
| Wireless phone charging | Recommended                                                                                                                                                                         |                                                                            |

 

<sup>\*</sup>USB peripheral support is limited on the Windows 10 Mobile.

### Continuum for Phones wired dock requirements

A Continuum for Phones wired dock must meet the following requirements.

**Table 4: Continuum for Phones wired dock requirements**

| Component           | Minimum Requirement                                                                                                        | Premium Requirements                                                                                                                                                        |
|---------------------|----------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| USB<sup>\*</sup>    | Minimum 3 USB A sockets for HID and USB storage. USB 2.0 support required. USB and AC adaptor recommended to power device. | 3.0 recommended; USB Type C connector strongly recommended for connection to phone; if micro USB is used then phone and dock may require additional components for USB A/V. |
| Audio/video latency | ≤40 msec                                                                                                                   |                                                                                                                                                                             |
| Display resolution  | 720p minimum                                                                                                               |                                                                                                                                                                             |
| Display connector   | HDMI 1.4 required.                                                                                                         | DisplayPort 1.2 recommended. VGA support via adapter strongly recommended.                                                                                                  |

 

<sup>\*</sup>USB peripheral support is limited on the Windows 10 Mobile.

## Additional Requirements


### Windows 10 Miracast extensions

Miracast receivers which support the Miracast extensions included in Windows 10 will provide the best experience; Miracast receivers which do not support these extensions will provide a lesser experience due to increased latency and connection issues. Partners must upgrade their existing Miracast devices to support the new extensions.

In addition to these Miracast improvements, support for the Miracast user input back channel (UIBC) is being added to Windows 10. Miracast UIBC is an optional Wi-Fi Direct feature for sending input commands from the Miracast receiver to the Miracast sender for processing. This enables Miracast receivers which contain USB ports and implement UIBC to be used as wireless “docks;” the user connects keyboard and mouse to the receiver and they can connect wirelessly to a full-sized keyboard, mouse, and monitor setup. Note that to support standard Windows keys (e.g., the Windows key, Ctrl, Alt, etc.) UIBC must be implemented on the Miracast receiver in HID Commands mode, as the alternate Generic mode implementation only provides support for ASCII keys.

## FAQ/Troubleshooting


This FAQ is designed to answer common questions about both the usage model, as well as building a device.

\#
Question
Answer
Devices and hardware
1
What phones will support Continuum for Phones?
Any Windows 10 Mobile-based device that meets the minimum hardware requirements defined in this document, and on which the OEM desires to enable the feature, will support Continuum for Phones.
2
Why do current retail devices not support this?
The Continuum for Phones feature is an innovation that is enabled by new chipsets; older chipsets do not have all of the requirements needed to support the feature
3
Will this work with my TV?
-   If your TV has an HDMI input, you can use a wired or wireless accessory to connect.
-   Most likely, yes. If your TV, or any display type such as your monitor, supports HDMI or DisplayPort input, you can use a wired or wireless Continuum compatible accessory to connect.

4
What is the difference between wired and wireless? Why would I not just use wireless?
-   Wireless brings all the convenience of being wireless while being productive at a desk or connecting to your TV and navigating from your couch, but it does require a few short steps to connect to a display and is subject to potential interference. Light productivity, navigating presentations in a conference room and enjoying entertainment apps from your living room work well with a wireless setup.
-   A wired dock is simple: Plug your phone or tablet in, and you are immediately connected to your peripherals. Also, you can connect a keyboard, mouse, or mass storage device to a USB port. Wired dock has the benefit of charging your device. With apps like Microsoft PowerPoint, Microsoft Word, Excel, and File Explorer on your device, you can sit down and start working right away. Being productive in home office, kitchen office, and dorm room scenarios might work best with a wired setup.

5
Which Miracast receivers will work with Continuum?
All Miracast receivers will work, but those that implement the Windows 10 Miracast firmware extensions will provide a much better experience, including low-latency keyboard/mouse and faster connection times. In addition, Continuum compatible accessories with a USB port that support the User Input Back Channel (UIBC) can be used to connect a USB wireless keyboard and mouse, instead of taking the few extra steps needed to connect via Bluetooth for greater convenience.
6
What is the wireless protocol? Is it standard or proprietary?
Miracast with extensions. A number of third parties are already implementing extensions.
7
How fast does the connection come up?
Miracast connections will come up fastest on receivers that implement the Miracast "Fast IP Address Assignment" extension. On these receivers, we are seeing connections made in less than five seconds.
8
What USB peripherals can I use with Continuum for phones?
The Windows 10 Mobile OS supports USB keyboard, mouse, audio, and storage, as well as USB hubs.
9
Can I use an external camera with my phone?
Not at this time.
10
How do I connect a mouse and keyboard?
Keyboards and mice that support Bluetooth can be paired by Bluetooth to the phone. Also, USB mice and keyboards can be paired by a wired dock, or wireless dongle that supports UIBC.
11
What is the expected battery life when using Continuum for Phones?
While this feature will of course consume more power than driving a single screen running a single app, we have not yet completed the testing to quantify that. With a wired connection, or a wireless charging pad, the phone can charge while you use Continuum for Phones.
12
Will I need HDMI, DisplayPort, or something else to connect?
That depends on the type of connection supported by your phone manufacturer. Wireless connections to Miracast receivers commonly have an HDMI connection from the receiver to the TV. A wired connection (for example, from a wired dock) would likely have either an HDMI or DisplayPort connection from the dock to the TV or monitor.
13
Will this work with ChromeCast?
No. Wireless connectivity is through Miracast, which Chromecast does not support. For a good productivity experience, the Miracast receiver must also support the Windows 10 Miracast extensions.
14
Will this work with an Airplay-enabled device?
No. Airplay does not support the technology required for Continuum for Phones.
15
Do you support trackpads in addition to mice?
Yes, the feature supports trackpads as a pointer if implemented over USB. Full precision touchpad support, including gestures, is under consideration for a future release.
16
Can Continuum for Phones work over a mobile high-definition link (MHL) connection?
Yes. The feature will work over any functional video-out connection.
17
Does Continuum for Phones replace mirroring?
Yes, although you may choose in the settings to use simple display mirroring, if you wish.
18
Does Continuum for Phones support 4K monitors or TVs?
The maximum resolution is limited by the capabilities of the device and the receiver. If a display supports a native resolution that is greater than the supported resolution of the device/receiver combination, the OS will fall back to the next best supported resolution.
Developer environment
1
What does Continuum for Phones mean for developers?
Continuum for Phones brings a whole new value to your apps. Phone users will be able to have small and large screen experiences, and you can tailor those experiences through your Universal Windows app.
2
When and how will a developer environment become available?
Because Universal Windows apps run across all Windows devices, the easiest thing to do is to test your Universal Windows app on the Windows desktop and resize the app window. If you have separate mobile and desktop views, write test code to swap views on desktop as view size changes.
Availability
1
When will Continuum for Phones be available?
Continuum for Phones is a feature of Windows 10 Mobile, and it will be available with new devices shipping this year.
Scaling/building apps optimized for Continuum
1
What is the difference between the Cast API and the Projection Manager API?
The Cast API allows an app to move a media element to the external screen. The Projection Manager API allows the developer to create completely customized views on each screen.
2
On Surface Hub, they recommend controls placed on bottom – why is this different?
The physics are different between holding a phone in your hand versus standing in front of a large screen. Surface Hub and Continuum for Phones have optimized their recommendations uniquely for each device type. For Continuum for Phone apps running on an external screen, we recommend placing the controls on top to align with traditional desktop.
3
Are pen and touch input supported?
Pen and touch input are not supported at this time on the external screen.
4
Can I get video on the external screen?
Yes.
5
Can I get audio on the external screen?
Yes. All audio except for communication audio (for example, cellular phone calls) can go to the external audio end point. This is similar to behavior on Windows Phone today with a Bluetooth speaker attached. In this scenario, communication audio stays on the phone.
6
What applications support Continuum for Phones?
Windows 10 apps that run on Windows 10 Mobile and Universal Windows apps can be launched on the external screen.
7
Can I make or take a phone call from my big screen?
Calls will appear only on the phone screen, which is the same location as their audio. There will be things you can do from the big screen and the small screen, but there might be a natural usability preference for one over the other.
8
Can I send or receive SMS messages on the big screen?
Yes.
9
Where do incoming text, phone call, or email notifications show up?
We have developed the functionality assuming that the potential that other people may also be viewing the larger screen. To retain privacy, text messages and toast notifications are sent only to the phone screen.
10
Can you run the same application on both screens?
Not at the same time. An app can be written to provide a two-screen experience using the Cast or Projection Manager APIs, however.
11
Why do I, as a game developer, care about this?
This feature opens up exciting possibilities for keyboard and mouse-enabled games to be run on the big screen in a "docked phone" configuration. Developers can also take advantage of ProjectionManager API, which provides a unique opportunity to create multi-screen experiences powered by a phone.
12
Can my app take advantage of a video camera on the big screen?
No.
Comparisons
1
How is this different from other solutions on the Chromecast/AirPlay?
-   Continuum for Phones is about productivity and getting things done by enabling your phone to be used like a PC.

-   Unlike Chromecast and AirPlay, the solution is not limited to a browser experience and a set of supported apps; it is your phone’s Start screen, Windows 10 apps, and services on your phone all scaled nicely to whatever size of screen that you are connected to.

-   Continuum for Phones has easy transitions between screens. For example, if you start typing an email on a phone using the email app and connect to a large screen, you can keep working on the same exact email but with a keyboard, a mouse, and a large screen.

-   Developers do not have to create special apps uniquely for Continuum for Phones. Universal Windows apps work on Windows PCs, tablets, and phones, and they support Continuum for Phones experiences.

-   Windows 10 Mobile phones come with Outlook, Word, Excel and PowerPoint Universal Windows apps for world-class productivity.

-   When you connect to peripherals, a connection to a local Wi-Fi network is not required. Requiring it to connect to local Wi-Fi creates usability, connectivity and expense challenges in some environments (for example, in enterprises, universities, and hotels).

2
How is it different from Chromebit?
-   With Continuum for Phones, it is not another OS in the dock/dongle with a different set of apps and a different set of local data. With Continuum for Phones, it is about the same Universal Windows apps, services, and data, but with accessibility from multiple screens. This offers an easy and accessible transition from screen to screen.

-   It is easier for you to manage: Update the OS and apps on the phone, and all screens see the benefit. You do not need to update multiple devices and install apps on multiple devices.

-   The Continuum for Phones accessories are less complex and are targeting lower price points since they do not require a full OS to be run on them.

3
Could someone just use our apps on a big screen by plugging in a laptop to a TV?
Yes, but this scenario adds an entirely separate PC into the mix. With Continuum for Phones, you are able to use your most personal device (your phone) for many of the tasks in which you might use a notebook or another full PC.
Other
1
Will this feature negatively impact the PC business?
Consumers ultimately will decide which device type works best for them. We feel Continuum for Phones dramatically boosts the productivity of the device that you always have with you – your phone, however PCs are very powerful and uniquely suited to do many tasks.
2
Does this support Classic Windows applications?
Not directly. Classic Windows applications do not run on Windows 10 Mobile. However, with cloud streaming services such as Azure Remote Desktop, an organization could easily bring classic code to this experience, and Classic Windows applications will look great on the larger screen.
3
Is not supporting Classic Windows applications a huge weakness?
Universal Windows apps bring powerful capabilities to developers, including the ability to run across all devices. We are confident that developers will enable a robust ecosystem of apps with Continuum for Phones. For core scenarios that people care about, Microsoft is shipping Universal Windows apps such as the Microsoft Edge browser, Microsoft Office, Microsoft Outlook Mail and Calendar, Photos, Maps, Music, Movies & TV, and more. Enterprises that depend on one or two critical lines of business Classic Windows applications can use them through hosted solutions such as Azure RemoteApp.
4
Why do you not just support full Windows?
Continuum for Phones was designed to bring some of the best features of a PC to your phone, while protecting the simplicity and speed expected of your most personal device.
5
Will you support all apps?
We wanted to ensure consumers had a great experience, so we focused on Universal Windows apps, which rescale beautifully from smaller to larger screens. We also feel that we will have the most common scenarios supported with our universal applications. That said, we are listening to consumer feedback to shape our roadmap for the types of apps that we will support on the roadmap.
6
How will the performance be relative to a full blown PC? What are the drawbacks?
We will address performance concerns based on consumer feedback, but we believe we are covering the main use cases via Microsoft Edge, Office, email, photos app and other 1st and 3rd party Universal Windows apps running on a mobile OS with performance levels needed to be productive and entertained.
 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Continuum%20for%20Phone%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




