---
title: Customize the Out of Box experience (OOBE)
description: Customize the Windows Out of Box experience
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: alhopper
ms.date: 12/19/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Customize the Out of Box Experience (OOBE)

When customers turn on their Windows PCs for the first time, they will see the Windows Out of Box Experience (OOBE). OOBE consists of a series of screens that require customers to accept the license agreement, connect to the internet, log in with, or sign up for a Microsoft Account, and share information with the OEM.

During OOBE, Cortana voice-over strings will assist users by setting the context of each screen, and requesting their input. While voice assistance is more accessible to the non-sighted, the design is focused at being inclusive to all our customers. Cortana voice is intended to be novel and supplementary to increase user engagement in all places in OOBE. Cortana voice also helps reduce cognitive load by offering informationally-identical, but differently-phrased information. We still expect non-sighted users to enable screen readers to get through OOBE. Some pages in OOBE do not accept voice input, and instead require a keyboard or mouse to complete the action. Cortana voice will clearly communicate input requirements (voice or keyboard/mouse) to the user.

> [!TIP]
> We recommend you target a 65 decibel peak volume during OOBE. To test for this volume, measure an audio sample from 2 feet (60 centimeters) away from the device.

The OOBE flow is also designed to reduce cognitive load significantly by breaking up tasks into discrete chunks. Although there are several pages in the OOBE flow, each one requests a specific action or input from the user. This is helpful for our average customer (and even many power users) and has shown to reduce fatigue significantly.

## OOBE flow

The following is a non-exhaustive list of screens the user may see during OOBE, in order:

1. **Language selection**
1. **Cortana welcome**
1. **Region selection**
1. **Keyboard selection**
1. **Connect to a network**. After connecting to a network, critical driver updates and critical zero-day patch (ZDP) Windows updates will begin downloading in the background. See [Windows updates during OOBE](windows-updates-during-oobe.md) for more details.
1. **End User License Agreement (EULA)**
1. **Sign in to, or create, a Microsoft account**
1. **Windows Hello setup**
1. **Link your phone and PC**. This screen will only appear if the user signed into their Microsoft account, and connected to a network, on the previous screens.
1. **Save files to OneDrive**
1. **Set up Office**. This screen is only displayed if the user is connected to a network, and has provided their Microsoft account information. Content on the page will vary depending on the user’s account type. For example, if their Microsoft account qualifies for a free trial of Office, the page will encourage them to setup their free trial.
1. **Privacy settings**. In Windows 10 build 1709, the privacy settings screen includes **Learn more** links the user can click for more details about each setting.
1. **Make Cortana my personal assistant**
1. **OEM Registration pages**
1. **Your PC has an update waiting**. This page is only displayed to the user if a newer version of Windows is available than the version that shipped with the device. See [Windows updates during OOBE](windows-updates-during-oobe.md) for more details.

You can hide certain OOBE screens using Unattend. For more information, see [OOBE Unattend component](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-oobe).

## In this section

The following topics describe OOBE customization considerations.

| Topic                                     | Description                                                                        |
|:------------------------------------------|:-----------------------------------------------------------------------------------|
| [OOBE.xml](oobexml.md)                                | You can use OOBE.xml to organize text and images displayed during OOBE, and to specify settings for customizing the Windows 10 first-run experience. You can use multiple Oobe.xml files for language- and region-specific license terms and settings so that users see appropriate info as soon as they start their PCs. By specifying information in the Oobe.xml file, you help fill in some of the required information so that users are asked to do only the core tasks required to set up their PCs. |
| [Cortana voice support](cortana-voice-support.md)     | Learn how Cortana voice walks the user through the OOBE experience, enabling the user to complete parts of OOBE by responding to spoken prompts.                       |
| [Connect users to the network](connect-to-network.md) | Learn about the **Let's connect you to a network** screen in OOBE, which connects the user to available Wi-Fi and/or Cellular data networks. |
| [Windows Updates during OOBE](windows-updates-during-oobe.md) | Learn how both critical and non-critical Windows updates can download during a user's Out of Box Experience.  |
| [OEM HID pairing](oem-hid-pairing.md)                 | On PCs that ship with an unpaired wireless mouse and keyboard, you can customize the HID pairing screens shown to the customer during the first-run experience in OOBE. If you include written instructions, you must include those instructions in every language that ships with the PC.              |
| [OEM license terms](oem-license.md)                   | You can add your OEM license terms to the License Terms screen in the first-run experience of OOBE. |
| [OEM registration pages](oem-registration-pages.md)   | You can display OEM registration screens during OOBE to encourage customers to provide you with their information. This enables you to provide them with a more personalized experience and information. |
| [Automate OOBE](automate-oobe.md)                     | Use Unattend settings to hide certain pages that appear in OOBE.  |

## Related topics

[OOBE Unattend component](https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-oobe)