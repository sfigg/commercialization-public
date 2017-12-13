---
author: themar
Description: 'Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. This topic covers language and region-related FoDs.'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Language and region Features on Demand'
ms.author: themar
ms.date: 12/01/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Language and region Features on Demand

## <span id="language_capabilities"></span><span id="Language_capabilities"></span> Language and region-related Features on Demand reference

Features on Demand are available to add language capabilities to your Windows images. To view available non language or region-related Features on Demand, see [Available Features on Demand](features-on-demand-non-language-fod.md).

To see how to add Features on Demand to your Windows image, see [Features on Demand](features-on-demand-v2--capabilities.md)

> [!div class="op_single_selector"]
> - [Languages](#language-features-on-demand)
> - [Fonts](#span-idfontsspanspan-idfontsspan-font-features-on-demand)
> - [Additional font packages](#span-idadditionalfontsspanspan-idadditionalfontsspan-additional-fonts-available)
> - [Region-sdpecific requirements](#span-idregionrequirementsspanspan-idregionrequirementsspan-other-region-specific-requirements)


### Language Features on Demand

**Recommendation:** Preinstall the relevant language capabilities for the languages you expect users in the device’s target market to need.

Language Features on Demand are available in seven types:

**Note:** Not all Features on Demand are available for every language.


| Component | Sample package name | Sample capability name | Dependencies | Description |
| --------- | -----------|----- | ------------ | ----------- |
| Basic     | `Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package.cab` | `Language.Basic~~~fr-FR~0.0.1.0` | None | Spell checking, text prediction, word breaking, and hyphenation if available for the language.<br></br><p>You must add this component before adding any of the following components. <br></br><p>**Recommendation:** Preinstall the relevant language capabilities for the languages you expect users in the device’s target market to need.|
| Fonts     | `Microsoft-Windows-LanguageFeatures-Fonts-Thai-Package.cab` | `Language.Fonts.Thai~~~und-THAI~0.0.1.0` | None | Fonts.<br></br><p>**Recommendation:** If a PC will be sold to a certain region, install that region's Font (e.g., th-TH should be preinstalled on devices shipping to regions with Thai language). Example, th-TH requires the Thai font pack.<br></br><p>See [font capabilities](#fonts) for available font capabilities. |
| Optical character recognition | `Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package.cab` | `Language.OCR~~~fr-FR~0.0.1.0` | Basic | Recognizes and outputs text in an image.<br></br><p>**Recommendation:** Only install on devices required to be OCR-capable. Most devices don't need this capability preinstalled. |
| Handwriting recognition | `Microsoft-Windows-LanguageFeatures-Handwriting-fr-fr-Package.cab` | `Language.Handwriting~~~fr-FR~0.0.1.0`  | Basic | Enables handwriting recognition for devices with pen input.<br></br><p>**Recommendation:** Preinstall for the device’s target language on any device with a touch- or pen-capable screen  |
| Text-to-speech | `Microsoft-Windows-LanguageFeatures-TextToSpeech-fr-fr-Package.cab`| `Language.TextToSpeech~~~fr-FR~0.0.1.0` | Basic | Enables text to speech, used by Cortana and Narrator.<br></br><p>**Recommendation:** Don't install this capability by default. This FoD installs one language by default, and the user will select and download additional languages as needed. |
| Speech recognition | `Microsoft-Windows-LanguageFeatures-Speech-fr-fr-Package.cab` | `Language.Speech~~~fr-FR~0.0.1.0` | Basic, Text-To-Speech | Recognizes voice input, used by Cortana and Windows Speech Recognition.<br></br><p>**Recommendation:** Don't install this capability by default. This FoD installs one language by default, and the user will select and download additional languages as needed. |



### <span id="Fonts"></span><span id="fonts"></span> Font Features on Demand

When adding languages for some regions, you'll need to add Features on Demand that add font support.

**Recommendation:** If a PC will be sold to a certain region, install that region's Font (e.g., th-TH should be preinstalled on devices shipping to regions with Thai language).

| Region      | Description                            | Font capability required                              |
|-------------|----------------------------------------|-------------------------------------------------------|
| am-ET       | Amharic                                | Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package |
| ar-SA       | Arabic (Saudi Arabia)                  | Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package |
| ar-SY       | Arabic (Syria)                         | Microsoft-Windows-LanguageFeatures-Fonts-Syrc-Package |
| as-IN       | Assamese                               | Microsoft-Windows-LanguageFeatures-Fonts-Beng-Package |
| bn-BD       | Bangla (Bangladesh)                    | Microsoft-Windows-LanguageFeatures-Fonts-Beng-Package |
| bn-IN       | Bangla (India)                         | Microsoft-Windows-LanguageFeatures-Fonts-Beng-Package |
| chr-Cher-US | Cherokee (Cherokee)                    | Microsoft-Windows-LanguageFeatures-Fonts-Cher-Package |
| fa-IR       | Persian                                | Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package |
| gu-IN       | Gujarati                               | Microsoft-Windows-LanguageFeatures-Fonts-Gujr-Package |
| he-IL       | Hebrew                                 | Microsoft-Windows-LanguageFeatures-Fonts-Hebr-Package |
| hi-IN       | Hindi                                  | Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package |
| ja-JP       | Japanese                               | Microsoft-Windows-LanguageFeatures-Fonts-Jpan-Package |
| km-KH       | Khmer                                  | Microsoft-Windows-LanguageFeatures-Fonts-Khmr-Package |
| kn-IN       | Kannada                                | Microsoft-Windows-LanguageFeatures-Fonts-Knda-Package |
| kok-IN      | Konkani                                | Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package |
| ko-KR       | Korean                                 | Microsoft-Windows-LanguageFeatures-Fonts-Kore-Package |
| ku-Arab-IQ  | Central Kurdish (Arabic)               | Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package |
| lo-LA       | Lao                                    | Microsoft-Windows-LanguageFeatures-Fonts-Laoo-Package |
| ml-IN       | Malayalam                              | Microsoft-Windows-LanguageFeatures-Fonts-Mlym-Package |
| mr-IN       | Marathi                                | Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package |
| ne-NP       | Nepali                                 | Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package |
| or-IN       | Odia                                   | Microsoft-Windows-LanguageFeatures-Fonts-Orya-Package |
| pa-Arab-PK  | Punjabi (Arabic)                       | Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package |
| pa-IN       | Punjabi                                | Microsoft-Windows-LanguageFeatures-Fonts-Guru-Package |
| prs-AF      | Dari                                   | Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package |
| sd-Arab-PK  | Sindhi (Arabic)                        | Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package |
| si-LK       | Sinhala                                | Microsoft-Windows-LanguageFeatures-Fonts-Sinh-Package |
| syr-SY      | Syriac                                 | Microsoft-Windows-LanguageFeatures-Fonts-Syrc-Package |
| ta-IN       | Tamil                                  | Microsoft-Windows-LanguageFeatures-Fonts-Taml-Package |
| te-IN       | Telugu                                 | Microsoft-Windows-LanguageFeatures-Fonts-Telu-Package |
| th-TH       | Thai                                   | Microsoft-Windows-LanguageFeatures-Fonts-Thai-Package |
| ti-ET       | Tigrinya                               | Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package |
| ug-CN       | Uyghur                                 | Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package |
| ur-PK       | Urdu                                   | Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package |
| zh-CN       | Chinese (Simplified)                   | Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package |
| zh-TW       | Chinese Traditional (Hong Kong, Macau and Taiwan)          | Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package |

### <span id="Additional_fonts"></span><span id="additional_fonts"></span> Additional fonts available:

These fonts are optional and not required for any region.

| Name      | Description  |
|----------|------------|
| Microsoft-Windows-LanguageFeatures-Fonts-PanEuropeanSupplementalFonts-Package | Pan-European Supplemental Fonts. Includes additional fonts: Arial Nova, Georgia Pro, Gill Sans Nova, Neue Haas Grotesk, Rockwell Nova, Verdana Pro. |

### <span id="Region_requirements"></span><span id="region_requirements"></span> Other region-specific requirements

| Region | Description                   | Capability                                             | Description        | Recommendation                                                                                                     |
|--------|-------------------------------|--------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|---|
| zh-TW  | Chinese (Traditional, Taiwan) | Microsoft-Windows-InternationalFeatures-Taiwan-Package | Supplemental support for Taiwan date formatting requirements.  Package will be provided to customers located in Taiwan. | Preinstall only on devices shipping to the Taiwan market. Not installing this capability on devices causes any API calls to that use the Taiwan calendar to fail. |

### List of all language-related features on demand
[Download the list of all available language FODs](http://download.microsoft.com/download/0/A/A/0AA4342D-3933-4216-A90D-3BA8392FB1D1/Windows 10 1703 FOD to LP Mapping Table.xlsx)

## <span id="related_topics"></span>Related topics

[Available Features on Demand](#features-on-demand-non-language-fod.md)

[Add Language Packs to Windows](add-language-packs-to-windows.md)

[DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md)