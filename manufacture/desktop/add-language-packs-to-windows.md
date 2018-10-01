---
author: themar
Description: Add Languages to Windows
ms.assetid: 0734452f-aa09-4ec9-bbbf-fbc995dd803f
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Add Language Packs to Windows
ms.author: themar
ms.date: 10/01/2018
ms.topic: article
ms.prod: windows-hardware
redirect_url: https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/add-and-remove-language-packs-offline-using-dism
ms.technology: windows-oem
---

# Add languages to Windows

> [!note]
> If you're looking to add a language to your personal PC, you can use the Settings app. Go to **Settings** > **Time & Language** > **Language** and choose an additional language to install.

OEMs can add languages to PCs and devices for customers in different regions.

In Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), languages are are split into [language components](language-packs-and-windows-deployment.md#span-idwhatsnewwithlanguagepacksforwindows10spanspan-idwhatsnewwithlanguagepacksforwindows10spanspan-idwhatsnewwithlanguagepacksforwindows10spanlanguage-components-in-windows-10
) that include language packs (.cabs), language experience packs (.appx files that replace language interface packs in Windows 10, version 1809), and [Features On Demand](features-on-demand-v2--capabilities.md). 

You can save disk space by choosing not to include some language components in your image. While this reduction in image size can be helpful when creating images for lower-cost devices with small storage, it does lead to an incomplete language experience. When you add language components to a PC, also install the required dependencies. See [Languages](language-packs-and-windows-deployment.md) to learn more about language components and their dependencies.

To more completely localize your Windows installation, you can also configure the following international settings:

-   Currency, time zone, and calendar formats
-   [Keyboard Identifiers and Input Method Editors for Windows](windows-language-pack-default-values.md)


## How to add languages to Windows

| Scenario | Topic |
| --- | --- |
| Add languages to a Windows installation | [Add and Remove Languages](add-and-remove-language-packs-on-a-running-windows-installation.md) |
| **Users**: Add a language through the Setting app | [Add and switch input and display language preferences in Windows 10](https://support.microsoft.com/en-us/help/4027670/windows-add-and-switch-input-and-display-language-preferences-in-windo) |

## <span id="related_topics"></span>Related topics


[Language Packs](language-packs-and-windows-deployment.md)

[Available Language Packs for Windows](available-language-packs-for-windows.md)

[Features On Demand](features-on-demand-v2--capabilities.md)

[Windows Language Pack Default Values](windows-language-pack-default-values.md)

[Default Input Locales for Windows Language Packs](default-input-locales-for-windows-language-packs.md)

 

 






