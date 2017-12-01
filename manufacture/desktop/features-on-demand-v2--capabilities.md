---
author: Justinha
Description: 'Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).'
ms.assetid: 6390f427-a201-487e-928f-964e7b84327c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Features On Demand V2 (Capabilities)'
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Features On Demand V2 (Capabilities)


Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).

When the PC needs a new feature, it can request the feature package from Windows Update.

Unlike previous feature packs, Features on Demand V2 can be applicable to multiple Windows builds, and can be added using DISM without knowing the build number. Always use Features on Demand that match the architecture of the operating system. Adding Features on Demand of the wrong architecture might not return an error immediately, but will likely cause functionality issues in the operating system. 

> **Note:** If you install an update (hotfix, general distribution release [GDR], or service pack) prior to installing a Feature on Demand or language pack, you'll have to reinstall the update. Always install language packs and Features on Demand before you install updates.

## <span id="Adding_or_removing_features_capabilities"></span><span id="adding_or_removing_features_capabilities"></span><span id="ADDING_OR_REMOVING_FEATURES_CAPABILITIES"></span>Adding or removing features/capabilities


Use DISM to add or remove capabilities:

-   Use the /Online option to add the capability to your PC.

-   Use the /Image:&lt;mount path&gt; option to add the capability to a Windows image file (.wim).
 

| Command | Description | Example |
| --- | --- | --- |
| /Add-Capability | Adds a capability to an image.<br></br>For packages with dependencies this also pulls dependent packages. For example, if you add the Speech package, you'll also get the Text-to-speech and Basic packages in addition to Speech. | `DISM.exe /Online /Add-Capability /CapabilityName:Language.Basic~~~en-US~0.0.1.0` |
| /Get-Capabilities | Get capabilities in the image. | `DISM /Online /Get-Capabilities` |
| /Get-CapabilityInfo | Get information of a capability in the image. | `DISM /Online /Get-CapabilityInfo /CapabilityName:Language.Basic~~~en-US~0.0.1.0` |
| /Remove-Capability | Removes a capability from an image. <br></br>**Note**: You cannot remove a capability that other packages depend on. For example, if you have the French handwriting and basic capabilities installed, you can't remove the basic capability. | `DISM.exe /Online /Remove-Capability  CapabilityName:Language.Basic~~~en-US~0.0.1.0` |


## <span id="Capabilities_reference"></span><span id="capabilities_reference"></span><span id="CAPABILITIES_REFERENCE"></span>Capabilities reference

### <span id="language_capabilities"></span><span id="Language_capabilities"></span> Language and region-related capabilities

Not all capabilities are available for every language.


| Component | Sample file name | Dependencies | Description |
| --------- | ---------------- | ------------ | ----------- |
| Basic     | `Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package` | None | Spell checking, text prediction, word breaking, and hyphenation if available for the language.<br></br>You must add this component before adding any of the following components. |
| Fonts     | `Microsoft-Windows-LanguageFeatures-Fonts-Thai-Package`  | None | Fonts.<br></br>Required for some regions to render text that appears in documents. Example, th-TH requires the Thai font pack.<br></br>See [font capabilities](#fonts) for available font capabilities. |
| Optical character recognition | `Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package` | Basic | Recognizes and outputs text in an image. |
| Handwriting recognition | `Microsoft-Windows-LanguageFeatures-Handwriting-fr-fr-Package` | Basic | Enables handwriting recognition for devices with pen input. |
| Text-to-speech | `Microsoft-Windows-LanguageFeatures-TextToSpeech-fr-fr-Package` | Basic | Enables text to speech, used by Cortana and Narrator. |
| Speech recognition | `Microsoft-Windows-LanguageFeatures-Speech-fr-fr-Package` | Basic, Text-To-Speech | Recognizes voice input, used by Cortana and Windows Speech Recognition. |


#### <span id="Fonts"></span><span id="fonts"></span> Font capabilities

When adding languages for some regions, you'll need to add font capabilities.

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

#### <span id="Additional_fonts"></span><span id="additional_fonts"></span> Additional fonts available:

These fonts are optional and not required for any region.

| Name      | Description  |
|----------|------------|
| Microsoft-Windows-LanguageFeatures-Fonts-PanEuropeanSupplementalFonts-Package | Pan-European Supplemental Fonts. Includes additional fonts: Arial Nova, Georgia Pro, Gill Sans Nova, Neue Haas Grotesk, Rockwell Nova, Verdana Pro. |

#### <span id="Region_requirements"></span><span id="region_requirements"></span> Other region-specific requirements

| Region | Description                   | Capability                                             | Description        | Recommendation                                                                                                     |
|--------|-------------------------------|--------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|---|
| zh-TW  | Chinese (Traditional, Taiwan) | Microsoft-Windows-InternationalFeatures-Taiwan-Package | Supplemental support for Taiwan date formatting requirements. Package will be provided to customers located in Taiwan. | Preinstall only on devices shipping to the Taiwan market. |

#### List of all language-related features on demand
[Download the list of all available language FODs](http://download.microsoft.com/download/0/A/A/0AA4342D-3933-4216-A90D-3BA8392FB1D1/Windows 10 1703 FOD to LP Mapping Table.xlsx)


### Non-language capabilities

#### <span id="DOTNET"></span><span id="dotnet"></span> .NET Framework  

.NET framework adds support for 3rd party .NET3.x apps.

**Recommendation:** Preinstall this capabilities on devices that are preloaded with apps that require .NET3.x.

| Component | Name | Description                                            | Size |
|-----------|-----------------------------------|--------------------------------------| --- |
| NetFx3    |  Microsoft-Windows-NetFx3-OnDemand-Package.cab     | .NET 3.x Framework, a software framework required by many applications. | 70805 |
|           | Microsoft-Windows-NetFx3-OnDemand-en-US-Package.cab |   | 98   |
|           | Microsoft-Windows-NetFx3-OnDemand-ja-JP-Package.cab |   | 1438 |



#### <span id="OPENSSH"></span><span id="openssh"></span> OpenSSH (Beta)

The OpenSSH capabilites enable the use of OpenSSH on a Windows PC.

**Recommendation:** Don't include these capabilities on your image.

| Component          | Name                       | Description                                   | Size |
|-----------------------|---------------------------|-------------------------------------|-----|
| OpenSSH Client (Beta) | OpenSSH-Client-Package.cab | The beta release of an OpenSSH client for remoting and authentication. | 657 |
| OpenSSH Server (Beta) | OpenSSH-Server-Package.cab | The beta release of an OpenSSH server for remoting and authentication. | 660 |


#### Internet Explorer

Internet Explorer Features on Demand enable preinstallation of Internet Explorer.

**Recommendation:** Include the relevant capabilities on images that include Internet Explorer.

| Component | Name |  Description |
|-----------------------|---------------------------------------------------|---------------------|
| Internet Explorer 11  | Microsoft-Windows-InternetExplorer-Optional-Package.cab | Preinstalls Internet Explorer on a device |
| Internet Explorer 11  | Microsoft-Windows-InternetExplorer-Optional-en-US-Package.cab | Preinstalls Internet Explorer on a device |
| Internet Explorer 11  | Microsoft-Windows-InternetExplorer-Optional-ja-JP-Package.cab | Preinstalls Internet Explorer on a device |






Microsoft-OneCore-DeveloperMode-Desktop-Package.cab
Microsoft-OneCore-Graphics-Tools-Package.cab
Microsoft-Windows-Accessibility-Braille-Package.cab
Microsoft-Windows-Holographic-Desktop-FOD-Package.cab
Microsoft-Windows-InternationalFeatures-Taiwan-Package.cab
Microsoft-Windows-InternetExplorer-Optional-Package.cab
Microsoft-Windows-InternetExplorer-Optional-en-US-Package.cab
Microsoft-Windows-InternetExplorer-Optional-ja-JP-Package.cab
Microsoft-Windows-NetFx3-OnDemand-Package.cab
Microsoft-Windows-NetFx3-OnDemand-en-US-Package.cab
Microsoft-Windows-NetFx3-OnDemand-ja-JP-Package.cab
Microsoft-Windows-Printing-EnterpriseCloudPrint-Package.cab
Microsoft-Windows-Printing-MopriaCloudService-Package.cab




## <span id="related_topics"></span>Related topics

[Add Language Packs to Windows](add-language-packs-to-windows.md)

[DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md)

