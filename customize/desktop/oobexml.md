---
title: OOBE.xml
description: Customization options for OOBE.xml
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: alhopper
ms.date: 09/27/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# OOBE.xml

Create a file named OOBE.xml to organize text and images displayed during OOBE, and to specify settings for customizing the Windows 10 first-run experience. For Windows 10, you can use multiple Oobe.xml files for language- and region-specific license terms and settings so that users see appropriate info as soon as they start their PCs. By specifying information in the Oobe.xml file, you help fill in some of the required information so that users are asked to do only the core tasks required to set up their PCs.

## OOBE.xml settings

You can set the default language, location, and keyboard layout using Oobe.xml. The default values you set in Oobe.xml will be the default values the user sees on the Language, Region, and Keyboard layout selection screens during OOBE. The user can select another value from the list if desired, and their selection will override the Oobe.xml settings.

In Windows 10 build 1709, you can also specify a default timezone for the device using Oobe.xml. If the device has network connectivity during OOBE, Windows will attempt to detect the user’s time zone and this will override the value set in Oobe.xml. If the device does not have connectivity, or the user has turned off Location settings in OOBE, Windows will not be able to detect the timezone, and will default to the value you set in Oobe.xml. In this case, the user will see this timezone reflected by their clock once they reach the desktop.

For a list of time zones, use the list in the registry under: `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Time Zones`

There are a number of other settings available to enable further customization of OOBE. See [Configure Oobe.xml](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/configure-oobexml) for information about all of the settings available to you.

## Configure OOBE.xml for multi-language and region deployments, and single-language and region deployments

You can create multiple OOBE.xml files for each language and region you intend to deploy in to provide appropriate default values in each location. For more information, see [How OOBE.xml works](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/how-oobexml-works).
