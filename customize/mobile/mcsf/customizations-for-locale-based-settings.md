---
title: Customizations for locale-based settings
description: Describes the customizations that you can configure to optimize mobile devices for different regions they may ship to. Includes topics on shipping mobile devices to Chines.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: alhopper
ms.date: 11/01/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Customizations for locale-based settings

Describes the customizations that you can configure to optimize mobile devices for different regions they may ship to. Includes topics on shipping mobile devices to Chines.

## In this section

| Topic                                 | Description                                                                                   |
|:--------------------------------------|:----------------------------------------------------------------------------------------------|
| [China Type Approval requirement: app install prompts](cta-app-install-prompts.md) | To meet China Type Approval (CTA) requirements for devices shipping in China, OEMs must show a notification dialog to alert users when the app being downloaded does certain things. |
| [Contact management on the SIM (CN only)](contact-management-on-the-sim.md)        | Partners can specify that users should be able to read, edit, delete, import, and export contact information on their SIM (basic SIM, USIM, or RUIM). This customization is only available for devices sold in China.    |
| [Disable NITZ or daylight saving time](disabling-nitz-or-daylight-saving-time.md)  | OEMs can configure Network Identity and Time Zone (NITZ) to handle daylight saving time appropriately for their market, or disable automatic setting of date and time completely. |
| [Display location icon](display-location-icon.md)                                  | Partners can hide the location icon in the system tray if they choose.   |
| [Microsoft Store for China](windows-phone-store-for-china.md)                      | For a Windows 10 Mobile device shipping in China, OEMs must specify that the device is intended for that market by setting the PhoneROMLanguage setting in DeviceTargetingInfo to the appropriate locale ID. |
| [Mobile device languages](phone-languages.md)                                      | Partners must select the set of available languages to include on the mobile device. Partners must also specify one of the included languages as the default device language.    |
| [Regional format](regional-format.md)                                              | Partners can specify the default country/region, regional format, pre-enabled keyboard, and speech languages for the device.                                       |
| [Speech languages](speech-languages.md)                                            | OEMs can specify the speech languages to include on the mobile device.   |
| [Default list of countries/regions](default-list-of-countries-regions.md)          | OEMs can select the countries/regions to exclude from the default list shown in the mobile device's Country/Region list in the Settings screen.                      |
| [Preferred system types for phone connectivity (CN only)](preferred-system-types-for-phone-connectivity.md)   | OEMs can provide more control over the system types that their devices use to connect. This customization is only for China. OEMs should not set this customization unless required by the mobile operator.   |
| [Time zone priority list](time-zone-priority-list.md)                              | Beginning with Windows 10 Mobile, this customization is no longer necessary as the OS supports a location-based timezone detection service. However, to maintain backwards compatibility for some RPAL APIs that were previously released, an updated table of the timezone IDs is provided for your reference.    |

## Related topics

[Prepare for Windows mobile development](https://docs.microsoft.com/en-us/windows-hardware/manufacture/mobile/preparing-for-windows-mobile-development)

[Customization answer file overview](https://docs.microsoft.com/en-us/windows-hardware/customize/mobile/mcsf/customization-answer-file)