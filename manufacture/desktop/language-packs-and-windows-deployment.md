---
author: kpacquer
Description: 'Language Packs'
ms.assetid: 051a9952-c160-4f51-8575-bde6e4868b03
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Language Packs'
ms.author: kenpacq
ms.date: 05/02/2017
ms.topic: article


---

# Languages overview


To design PCs that work better for customers in different regions, you can set up Windows with the right set of languages, settings, and keyboards or other input devices.

## <span id="What_s_new_with_Language_Packs_for_Windows_10_"></span><span id="what_s_new_with_language_packs_for_windows_10_"></span><span id="WHAT_S_NEW_WITH_LANGUAGE_PACKS_FOR_WINDOWS_10_"></span>Language components in Windows 10

To help reduce the size of your image, languages in Windows 10 are split into the following components, which are distributed as language packs and [Features On Demand (FODs)](features-on-demand-language-fod.md). You don’t have to add all of a language’s related FODs, but we recommend always preinstalling the Basic, Fonts, Optical character recognition (OCR), Text-to-speech, and Speech recognition FODs if they’re available for the languages you’re preinstalling. We also recommend preinstalling the handwriting FOD if you’re shipping a device with a pen.

When you add a language, the version of the language components must match the version of Windows. For example, you can't add a Windows 10 language pack to Windows 8, or add Windows 8 language pack to Windows 10. The build number must also match.

See [Add languages to Windows](add-language-packs-to-windows.md) to learn how to add language packs and components to a Windows image.

### Language packs

| Component |  Description |
| --------- | ---------------- | 
| Language pack (.cab) | Provides the text for the dialog boxes, menu items, and help files that you see in Windows. <p>**Sample .cab name:** `Microsoft-Windows-Client-Language-Pack_x64_es-es.cab ` |
| Language interface pack (delivered as .appx)  | As of Windows 10, version 1809, LIP languages are distributed as  .appx files and are no longer distributed as .cab files. Not all of the language resources for the UI are included in a LIP. LIPs require at least one parent language pack that provides support for the parts of the UI that are not translated into the LIP language. These are displayed in the parent language. See [Available languages for Windows]() to learn about LIP parent languages.<p> In countries or regions where two languages are commonly used, you can provide a better user experience by applying a LIP over a language pack. <p>**Dependencies**: A base language that supports the installed LIP<p>**Sample .appx name:** `LanguageExperiencePack.am-et.neutral.appx` |

> [!Caution]
> You can reduce image size by not including language FODs in your image, but doing so will lead to an incomplete language experience. To learn about language FODs and recommendations about which language FODs to preinstall, see [Language Features on Demand](language-packs-and-windows-deployment.md#span-idwhatsnewwithlanguagepacksforwindows10spanspan-idwhatsnewwithlanguagepacksforwindows10spanspan-idwhatsnewwithlanguagepacksforwindows10spanlanguage-components-in-windows-10)

### Features on Demand

| Component |  Description |
| --------- | ---------------- | 
| Basic     | Spell checking, text prediction, word breaking, and hyphenation if available for the language.<p>**You must add this component before adding any of the following components.**<p>**Note**: You can add the Basic FOD for languages that aren't otherwise included in an image. This gives users the ability to proof in these languages, even when the other language components for that language aren't installed.<p>Other language components are dependent on this one. |
| Fonts     |  Fonts.<br></br>See [font capabilities](features-on-demand-language-fod.md#span-idfontsspanspan-idfontsspanfont-features-on-demand) for available font capabilities. |
| OCR | Recognizes and outputs text in an image.<br></br><p>**Dependencies**: The basic component of the same language. |
| Handwriting recognition |  Enables handwriting recognition for devices with pen input.<br></br><p>**Dependencies**: The basic component of the same language.|
| Text-to-speech |  Enables text to speech, used by Cortana and Narrator.<br></br><p>**Dependencies**: The basic component of the same language. |
| Speech recognition |  Recognizes voice input, used by Cortana and Windows Speech Recognition.<br></br><p>**Dependencies**: The basic and text-to-speech components of the same language. |
| Retail Demo experience | [Retail Demo experience](https://docs.microsoft.com/en-us/windows/uwp/monetize/retail-demo-experience) | 
| WinRE | Used to help end users repair and recover their PCs. See [Customize Windows RE](customize-windows-re.md) |


To learn more about the types of available components and their dependencies, see [Languages overview](language-packs-and-windows-deployment.md). Please note that not all components and Features on Demand are available for every language. You can learn which FODs are available for languages [in the LP to FOD mapping spreadsheet](http://download.microsoft.com/download/0/A/A/0AA4342D-3933-4216-A90D-3BA8392FB1D1/Windows%2010%201703%20FOD%20to%20LP%20Mapping%20Table.xlsx)

To learn more about adding language components to Windows, see [Add and remove languages](add-and-remove-language-packs-offline-using-dism.md).


## <span id="Get_language_packs_and_LIPs"></span><span id="get_language_packs_and_lips"></span><span id="GET_LANGUAGE_PACKS_AND_LIPS"></span>Where to get language components

[Available Languages for Windows](available-language-packs-for-windows.md) lists all of the supported language packs for multiple versions of Windows, as well as their identifier codes.

-   **OEMs and System Builders** with Microsoft Software License Terms can download the language pack ISO and Feature on demand ISO from the [Microsoft OEM site](http://go.microsoft.com/fwlink/?LinkId=131359) or the [OEM Partner Center](http://go.microsoft.com/fwlink/?LinkId=131358).
-   **IT Professionals** can download language packs from the [Microsoft Volume Licensing Site](http://go.microsoft.com/fwlink/?LinkId=125893).
-   After Windows is installed, **end users** can download and install additional language packs in **Settings** > **Time & language** > **Language** > **Add a language**, or through the Microsoft Store app. 

### Where to get other language components

-   Language features on demand are distributed on the FOD ISO as .cab files, but can also be installed on running Windows installation with DISM using the `/add-package` option. See [Features on Demand](features-on-demand-v2--capabilities.md) for information on how to add these to an image.
-   WinRE language packs are distributed on the language pack ISO. Don't use the WinPE language packs that ship with the ADK.


## Considerations when adding languages

-   Some languages require more hard-disk space than others.
-   Although you can add many language packs at once, don't add too many at once because the device may not have enough memory to handle it. General recommendations: from Windows in audit mode, don't add more than 20 language packs at a time. From Windows PE, don't add more than 7. If WinPE is still running out of memory, you can [customize WinPE by adding temporary storage (scratch space)](winpe-mount-and-customize.md).
-   The default language cannot be removed because it is used to generate computer security identifiers (SIDs). The default UI language is the language that is selected during the Out-Of-Box-Experience (OOBE), the UI language specified in the Deployment Image Servicing and Management (DISM) command-line tool, or in the unattended answer file if you skip OOBE.
-	If you install an update (hotfix, general distribution release [GDR], or service pack [SP]) that contains language-dependent resources prior to installing a language pack, the language-specific changes in the update won't be applied when you add the language pack. You need to reinstall the update to apply language-specific changes. To avoid reinstalling updates, install language packs before installing updates.


### <span id="Language_packs_for_recovery_tools"></span><span id="language_packs_for_recovery_tools"></span><span id="LANGUAGE_PACKS_FOR_RECOVERY_TOOLS"></span>Language packs for recovery tools

When things go wrong, the Windows Recovery Environment (Windows RE) can help recover the system and data. When you update the available languages for Windows, update the available languages in the recovery tools: [Customize Windows RE](customize-windows-re.md).

## <span id="Languages_for_apps"></span><span id="languages_for_apps"></span><span id="LANGUAGES_FOR_APPS"></span>Languages for apps


Many apps include support for multiple languages, though some require separate installation of language packs to work properly. Consult with the app developer.

In general, install all of your languages onto Windows before installing apps. This helps make sure that the language resource files are available for each of the available apps.

For more information, see [Multilingual User Interface (Windows)](http://go.microsoft.com/fwlink/p/?LinkId=698642).

## Where is lp.cab?

Language packs were renamed in Windows 10 version 1607:

| Package | Name format | Example |
|---------|-------------|---------|
| Language pack | Microsoft-Windows-_SKU_-Language-Pack_\_arch_\__locale_.cab | Microsoft-Windows-Client-Language-Pack_x64_es-es.cab |

**Note:** This change doesn't apply to WinPE, where language packs still use the name lp.cab.

## Where are the LIP .appx files?

You can find the LXP .appx files and their associated license files in the LocalExperiencePack folder on the Language Pack ISO.

## <span id="related_topics"></span>Related topics


[Add Language Packs to Windows](add-language-packs-to-windows.md)

[Features On Demand](features-on-demand-v2--capabilities.md)

 

 






