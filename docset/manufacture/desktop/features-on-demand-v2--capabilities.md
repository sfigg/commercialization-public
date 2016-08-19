---
author: Justinha
Description: 'Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).'
ms.assetid: 6390f427-a201-487e-928f-964e7b84327c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Features On Demand V2 (Capabilities)'
---

# Features On Demand V2 (Capabilities)


Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).

When the PC needs a new feature, it can request the feature package from Windows Update.

Unlike previous feature packs, Features on Demand V2 can be applicable to multiple Windows builds, and can be added using DISM without knowing the build number. Always use Features on Demand that match the architecture of the operating system. Adding Features on Demand of the wrong architecture might not return an error immediately, but will likely cause functionality issues in the operating system. 

## <span id="Adding_or_removing_features_capabilities"></span><span id="adding_or_removing_features_capabilities"></span><span id="ADDING_OR_REMOVING_FEATURES_CAPABILITIES"></span>Adding or removing features/capabilities


Use DISM to add or remove capabilities:

-   Use the /Online option to add the capability to your PC.

-   Use the /Image:&lt;mount path&gt; option to add the capability to a Windows image file (.wim).
 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command</th>
<th align="left">Description</th>
<th align="left">Example</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">/Add-Capability</td>
<td align="left"><p>Adds a capability to an image.</p>
<p>For packages with dependencies this also pulls dependent packages. For example, if you add the Speech package, you'll also get the Text-to-speech and Basic packages in addition to Speech.</p></td>
<td align="left">DISM.exe /Online /Add-Capability /CapabilityName:Language.Basic~~~en-US~0.0.1.0</td>
</tr>
<tr class="even">
<td align="left">/Get-Capabilities</td>
<td align="left">Get capabilities in the image.</td>
<td align="left">DISM /Online /Get-Capabilities</td>
</tr>
<tr class="odd">
<td align="left">/Get-CapabilityInfo</td>
<td align="left">Get information of a capability in the image.</td>
<td align="left">DISM /Online /Get-CapabilityInfo /CapabilityName:Language.Basic~~~en-US~0.0.1.0</td>
</tr>
<tr class="even">
<td align="left">/Remove-Capability</td>
<td align="left"><p>Removes a capability from an image.</p>
<p>Note: You cannot remove a capability that other packages depend on. For example, if you have the French handwriting and basic capabilities installed, you can't remove the basic capability. This will fail.</p></td>
<td align="left">DISM.exe /Online /Remove-Capability /CapabilityName:Language.Basic~~~en-US~0.0.1.0</td>
</tr>
</tbody>
</table>

 

## <span id="Capabilities_reference"></span><span id="capabilities_reference"></span><span id="CAPABILITIES_REFERENCE"></span>Capabilities reference


### .NET Framework  

| Component | Description                                                             |
|-----------|-------------------------------------------------------------------------|
| NetFx3    | .NET 3.x Framework, a software framework required by many applications. |

 

### Language capabilities

Not all capabilities are available for every language.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Component</th>
<th align="left">Sample file name</th>
<th align="left">Dependencies</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Basic</td>
<td align="left"><code>Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package</code></td>
<td align="left">None</td>
<td align="left"><p>Spell checking, text prediction, word breaking, and hyphenation if available for the language.</p>
<p>You must add this component before adding any of the following components.</p></td>
</tr>
<tr class="even">
<td align="left">Fonts</td>
<td align="left"><code>Microsoft-Windows-LanguageFeatures-Fonts-Thai-Package</code></td>
<td align="left">None</td>
<td align="left"><p>Fonts.</p>
<p>Required for some regions to render text that appears in documents. Example, th-TH requires the Thai font pack. </p></td>
</tr>
<tr class="odd">
<td align="left">Optical character recognition</td>
<td align="left"><code>Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package</code></td>
<td align="left">Basic</td>
<td align="left">Recognizes and outputs text in an image.</td>
</tr>
<tr class="even">
<td align="left">Handwriting recognition</td>
<td align="left"><code>Microsoft-Windows-LanguageFeatures-Handwriting-fr-fr-Package</code></td>
<td align="left">Basic</td>
<td align="left">Enables handwriting recognition for devices with pen input.</td>
</tr>
<tr class="odd">
<td align="left">Text-to-speech</td>
<td align="left"><code>Microsoft-Windows-LanguageFeatures-TextToSpeech-fr-fr-Package</code></td>
<td align="left">Basic</td>
<td align="left">Enables text to speech, used by Cortana and Narrator.</td>
</tr>
<tr class="even">
<td align="left">Speech recognition</td>
<td align="left"><code>Microsoft-Windows-LanguageFeatures-Speech-fr-fr-Package</code></td>
<td align="left">Basic, Text-To-Speech</td>
<td align="left">Recognizes voice input, used by Cortana and Windows Speech Recognition.</td>
</tr>
</tbody>
</table>

### Font capabilities

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
| zh-HK       | Chinese (Traditional, Hong Kong (SAR)) | Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package |
| zh-TW       | Chinese (Traditional, Taiwan)          | Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package |

### Additional fonts available:

These fonts are optional and not required for any region.

| Name                                                                          | Description                                                                                                                                         |
|-------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|
| Microsoft-Windows-LanguageFeatures-Fonts-PanEuropeanSupplementalFonts-Package | Pan-European Supplemental Fonts. Includes additional fonts: Arial Nova, Georgia Pro, Gill Sans Nova, Neue Haas Grotesk, Rockwell Nova, Verdana Pro. |

### Other region-specific requirements

| Region | Description                   | Capability                                             | Description                                                                                                            |
|--------|-------------------------------|--------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| zh-TW  | Chinese (Traditional, Taiwan) | Microsoft-Windows-InternationalFeatures-Taiwan-Package | Supplemental support for Taiwan date formatting requirements. Package will be provided to customers located in Taiwan. |

### List of .cab files
[Download this list](http://download.microsoft.com/download/8/3/0/830AC3A9-68CF-4F10-9357-F27E0A03148A/Windows 10 1607 FOD to LP Mapping Table.xlsx)
|Cab Name|Source Lang|Target Lang|Lang Group|FOD Area|Installed based on|
|--------|-----------|-----------|-----------|---------|-----------------|
|Microsoft-Windows-LanguageFeatures-Basic-af-za-Package.cab|af-za|af-za||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-AE||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-BH||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-DJ||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-DZ||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-EG||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-ER||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-IL||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-IQ||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-JO||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-KM||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-KW||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-LB||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-LY||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-MA||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-MR||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-OM||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-PS||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-QA||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-SA||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-SD||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-SO||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-SS||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-SY||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-TD||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-TN||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ar-sa-Package.cab|ar-sa|ar-YE||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-as-in-Package.cab|as-in|as-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-az-latn-az-Package.cab|az-latn-az|az-latn-az||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-bg-bg-Package.cab|bg-bg|bg-bg||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-bn-bd-Package.cab|bn-bd|bn-bd||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-bn-in-Package.cab|bn-in|bn-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-bs-latn-ba-Package.cab|bs-latn-ba|bs-latn-ba||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ca-es-Package.cab|ca-es|ca-es||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-cs-cz-Package.cab|cs-cz|cs-cz||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-cy-gb-Package.cab|cy-gb|cy-gb||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-da-dk-Package.cab|da-dk|da-dk||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-de-de-Package.cab|de-de|de-de||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-de-de-Package.cab|de-de|de-AT||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-de-de-Package.cab|de-de|de-LI||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-de-de-Package.cab|de-de|de-LU||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-de-de-Package.cab|de-de|de-CH||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-el-gr-Package.cab|el-gr|el-gr||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-gb-Package.cab|en-gb |en-au||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-gb-Package.cab|en-gb|en-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-gb-Package.cab|en-gb|en-gb||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|en-us||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|en-ca||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|ar-sa||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|bg-bg||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|da-dk||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|el-gr||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|he-il||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|ru-ru||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|sr-cyrl-rs||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|th-th||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-en-us-Package.cab|en-us|uk-ua||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-es-Package.cab|es-es|es-es||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-mx||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-419||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-AR||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-BO||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-CL||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-CO||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-CR||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-DO||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-EC||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-GT||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-HN||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-NI||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-PA||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-PE||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-PR||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-PY||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-SV||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-US||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-UY||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-es-mx-Package.cab|es-mx|es-VE||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-et-ee-Package.cab|et-ee|et-ee||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-eu-es-Package.cab|eu-es|eu-es||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-fa-ir-Package.cab|fa-ir|fa-ir||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-fi-fi-Package.cab|fi-fi|fi-fi||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-fr-ca-Package.cab|fr-ca|fr-ca||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package.cab|fr-fr|fr-fr||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package.cab|fr-fr|fr-BE||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package.cab|fr-fr|fr-029||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package.cab|fr-fr|fr-LU||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package.cab|fr-fr|fr-MC||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package.cab|fr-fr|fr-CH||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ga-ie-Package.cab|ga-ie|ga-ie||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-gd-gb-Package.cab|gd-gb|gd-gb||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-gl-es-Package.cab|gl-es|gl-es||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-gu-in-Package.cab|gu-in|gu-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ha-latn-ng-Package.cab|ha-latn-ng|ha-latn-ng||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-he-il-Package.cab|he-il|he-il||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-hi-in-Package.cab|hi-in|hi-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-hr-hr-Package.cab|hr-hr|hr-hr||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-hu-hu-Package.cab|hu-hu|hu-hu||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-hy-am-Package.cab|hy-am|hy-am||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-id-id-Package.cab|id-id|id-id||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ig-ng-Package.cab|ig-ng|ig-ng||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-is-is-Package.cab|is-is|is-is||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-it-it-Package.cab|it-it|it-it||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-it-it-Package.cab|it-it|it-CH||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ja-jp-Package.cab|ja-jp|ja-jp||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ka-ge-Package.cab|ka-ge|ka-ge||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-kk-kz-Package.cab|kk-kz|kk-kz||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-kn-in-Package.cab|kn-in|kn-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-kok-deva-in-Package.cab|kok-in|kok-deva-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-kok-deva-in-Package.cab|kok-in|kok||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-kok-deva-in-Package.cab|kok-in|kok-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ko-kr-Package.cab|ko-kr|ko-kr||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ky-kg-Package.cab|ky-kg|ky-kg||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-lb-lu-Package.cab|lb-lu|lb-lu||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-lt-lt-Package.cab|lt-lt|lt-lt||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-lv-lv-Package.cab|lv-lv|lv-lv||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-mi-nz-Package.cab|mi-nz|mi-nz||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-mk-mk-Package.cab|mk-mk|mk-mk||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ml-in-Package.cab|ml-in|ml-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-mr-in-Package.cab|mr-in|mr-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ms-bn-Package.cab|ms-bn|ms-bn||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ms-my-Package.cab|ms-my|ms-my||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-mt-mt-Package.cab|mt-mt|mt-mt||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-nb-no-Package.cab|nb-no|nb-no||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ne-np-Package.cab|ne-np|ne-np||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-nl-nl-Package.cab|nl-nl|nl-nl||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-nl-nl-Package.cab|nl-nl|nl-be||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-nn-no-Package.cab|nn-no|nn-no||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-nso-za-Package.cab|nso-za|nso-za||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-or-in-Package.cab|or-in|or-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-pa-in-Package.cab|pa-in|pa-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-pl-pl-Package.cab|pl-pl|pl-pl||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ps-af-Package.cab|ps-af|ps-af||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-pt-br-Package.cab|pt-br|pt-br||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-pt-pt-Package.cab|pt-pt|pt-pt||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-rm-ch-Package.cab|rm-ch|rm-ch||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ro-ro-Package.cab|ro-ro|ro-ro||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ro-ro-Package.cab|ro-ro|ro-md||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ru-ru-Package.cab|ru-ru|ru-ru||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-rw-rw-Package.cab|rw-rw|rw-rw||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-si-lk-Package.cab|si-lk|si-lk||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sk-sk-Package.cab|sk-sk|sk-sk||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sl-si-Package.cab|sl-si|sl-si||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sq-al-Package.cab|sq-al|sq-al||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sr-cyrl-rs-Package.cab|sr-cyrl-rs|sr-cyrl-rs||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sr-cyrl-rs-Package.cab|sr-cyrl-rs|sr-cyrl-BA||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sr-cyrl-rs-Package.cab|sr-cyrl-rs|sr-cyrl-ME||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sr-latn-rs-Package.cab|sr-latn-rs|sr-latn-rs||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sr-latn-rs-Package.cab|sr-latn-rs|sr-latn-BA||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sr-latn-rs-Package.cab|sr-latn-rs|sr-latn-ME||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sv-se-Package.cab|sv-se|sv-se||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sv-se-Package.cab|sv-se|sv-fi||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-sw-ke-Package.cab|sw-ke|sw-ke||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ta-in-Package.cab|ta-in|ta-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ta-in-Package.cab|ta-in|ta-LK||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-te-in-Package.cab|te-in|te-in||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-th-th-Package.cab|th-th|th-th||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-tn-za-Package.cab|tn-za|tn-za||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-tn-za-Package.cab|tn-za|tn-BW||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-tr-tr-Package.cab|tr-tr|tr-tr||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-tt-ru-Package.cab|tt-ru|tt-ru||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-uk-ua-Package.cab|uk-ua|uk-ua||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ur-pk-Package.cab|ur-pk|ur-pk||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-ur-pk-Package.cab|ur-pk|ur-IN||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-uz-latn-uz-Package.cab|uz-latn-uz|uz-latn-uz||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-vi-vn-Package.cab|vi-vn|vi-vn||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-wo-sn-Package.cab|wo-sn|wo-sn||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-xh-za-Package.cab|xh-za|xh-za||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-yo-ng-Package.cab|yo-ng|yo-ng||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-zh-cn-Package.cab|zh-cn|zh-cn||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-zh-hk-Package.cab|zh-tw|zh-hk||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-zh-tw-Package.cab|zh-tw|zh-tw||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Basic-zu-za-Package.cab|zu-za|zu-za||Basic Lang|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Handwriting-af-za-Package.cab|af-za|af-za||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-bs-latn-ba-Package.cab|bs-latn-ba|bs-latn-ba||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-ca-es-Package.cab|ca-es|ca-es||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-cs-cz-Package.cab|cs-cz|cs-cz||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-da-dk-Package.cab|da-dk|da-dk||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-de-de-Package.cab|de-de|de-de||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-el-gr-Package.cab|el-gr|el-gr||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-en-gb-Package.cab|en-gb|en-gb||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-en-gb-Package.cab|en-gb|en-au||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-en-gb-Package.cab|en-gb|en-in||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-en-us-Package.cab|en-us|en-us||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-en-us-Package.cab|en-us|en-ca||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-es-es-Package.cab|es-es|es-es||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-es-mx-Package.cab|es-mx|es-mx||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-eu-es-Package.cab|eu-es|eu-es||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-fi-fi-Package.cab|fi-fi|fi-fi||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-fr-fr-Package.cab|fr-fr|fr-fr||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-ga-ie-Package.cab|ga-ie|ga-ie||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-gd-gb-Package.cab|gd-gb|gd-gb||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-gl-es-Package.cab|gl-es|gl-es||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-hr-hr-Package.cab|hr-hr|hr-hr||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-id-id-Package.cab|id-id|id-id||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-it-it-Package.cab|it-it|it-it||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-ja-jp-Package.cab|ja-jp|ja-jp||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-ko-kr-Package.cab|ko-kr|ko-kr||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-lb-lu-Package.cab|lb-lu|lb-lu||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-ms-bn-Package.cab|ms-bn|ms-bn||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-ms-my-Package.cab|ms-my|ms-my||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-nb-no-Package.cab|nb-no|nb-no||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-nl-nl-Package.cab|nl-nl|nl-nl||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-nn-no-Package.cab|nn-no|nn-no||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-pl-pl-Package.cab|pl-pl|pl-pl||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-pt-br-Package.cab|pt-br|pt-br||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-pt-pt-Package.cab|pt-pt|pt-pt||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-rm-ch-Package.cab|rm-ch|rm-ch||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-ro-ro-Package.cab|ro-ro|ro-ro||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-ru-ru-Package.cab|ru-ru|ru-ru||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-rw-rw-Package.cab|rw-rw|rw-rw||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sl-si-Package.cab|sl-si|sl-si||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sq-al-Package.cab|sq-al|sq-al||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sr-cyrl-rs-Package.cab|sr-cyrl-rs|sr-cyrl-ba||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sr-cyrl-rs-Package.cab|sr-cyrl-rs|sr-cyrl-me||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sr-cyrl-rs-Package.cab|sr-cyrl-rs|sr-cyrl-rs||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sr-latn-rs-Package.cab|sr-latn-rs|sr-latn-ba||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sr-latn-rs-Package.cab|sr-latn-rs|sr-latn-me||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sr-latn-rs-Package.cab|sr-latn-rs|sr-latn-rs||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sv-se-Package.cab|sv-se|sv-se||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-sw-ke-Package.cab|sw-ke|sw-ke||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-tn-za-Package.cab|tn-za|tn-za||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-tr-tr-Package.cab|tr-tr|tr-tr||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-xh-za-Package.cab|xh-za|xh-za||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-zh-cn-Package.cab|zh-cn|zh-cn||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-zh-hk-Package.cab|zh-tw|zh-hk||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-zh-tw-Package.cab|zh-tw|zh-tw||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Handwriting-zu-za-Package.cab|zu-za|zu-za||Handwriting|Installed LPs|
|Microsoft-Windows-LanguageFeatures-OCR-ar-sa-Package.cab|ar-sa|ar-sa||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-bg-bg-Package.cab|bg-bg|bg-bg||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-bs-latn-ba-Package.cab|bs-latn-ba|bs-latn-ba||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-cs-cz-Package.cab|cs-cz|cs-cz||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-da-dk-Package.cab|da-dk|da-dk||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-de-de-Package.cab|de-de|de-de||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-de-de-Package.cab|de-de|de-AT||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-de-de-Package.cab|de-de|de-LI||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-de-de-Package.cab|de-de|de-LU||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-de-de-Package.cab|de-de|de-CH||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-el-gr-Package.cab|el-gr|el-gr||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-gb-Package.cab|en-gb |en-au||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-gb-Package.cab|en-gb|en-in||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-gb-Package.cab|en-gb|en-gb||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|en-us||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|en-ca||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|ar-sa||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|bg-bg||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|da-dk||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|el-gr||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|he-il||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|ru-ru||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|sr-cyrl-rs||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|th-th||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-en-us-Package.cab|en-us|uk-ua||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-es-Package.cab|es-es|es-es||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-mx||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-419||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-AR||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-BO||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-CL||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-CO||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-CR||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-DO||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-EC||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-GT||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-HN||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-NI||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-PA||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-PE||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-PR||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-PY||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-SV||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-US||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-UY||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-es-mx-Package.cab|es-mx|es-VE||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-fi-fi-Package.cab|fi-fi|fi-fi||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-fr-ca-Package.cab|fr-ca|fr-ca||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package.cab|fr-fr|fr-fr||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package.cab|fr-fr|fr-BE||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package.cab|fr-fr|fr-029||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package.cab|fr-fr|fr-LU||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package.cab|fr-fr|fr-MC||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package.cab|fr-fr|fr-CH||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-hr-hr-Package.cab|hr-hr|hr-hr||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-hu-hu-Package.cab|hu-hu|hu-hu||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-it-it-Package.cab|it-it|it-it||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-it-it-Package.cab|it-it|it-CH||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-ja-jp-Package.cab|ja-jp|ja-jp||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-ko-kr-Package.cab|ko-kr|ko-kr||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-nb-no-Package.cab|nb-no|nb-no||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-nl-nl-Package.cab|nl-nl|nl-nl||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-nl-nl-Package.cab|nl-nl|nl-be||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-pl-pl-Package.cab|pl-pl|pl-pl||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-pt-br-Package.cab|pt-br|pt-br||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-pt-pt-Package.cab|pt-pt|pt-pt||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-ro-ro-Package.cab|ro-ro|ro-ro||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-ru-ru-Package.cab|ru-ru|ru-ru||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-sk-sk-Package.cab|sk-sk|sk-sk||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-sl-si-Package.cab|sl-si|sl-si||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-sr-cyrl-rs-Package.cab|sr-cyrl-rs|sr-cyrl-rs||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-sr-latn-rs-Package.cab|sr-latn-rs|sr-latn-rs||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-sv-se-Package.cab|sv-se|sv-se||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-sv-se-Package.cab|sv-se|sv-fi||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-tr-tr-Package.cab|tr-tr|tr-tr||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-zh-cn-Package.cab|zh-cn|zh-cn||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-zh-hk-Package.cab|zh-tw|zh-hk||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-OCR-zh-tw-Package.cab|zh-tw|zh-tw||OCR|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Speech-de-de-Package.cab|de-de|de-de||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-en-au-Package.cab|en-gb|en-au||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-en-ca-Package.cab|en-us|en-ca||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-en-gb-Package.cab|en-gb|en-gb||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-en-in-Package.cab|en-gb|en-in||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-en-us-Package.cab|en-us|en-us||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-es-es-Package.cab|es-es|es-es||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-es-mx-Package.cab|es-mx|es-mx||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-fr-ca-Package.cab|fr-ca|fr-ca||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-fr-fr-Package.cab|fr-fr|fr-fr||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-it-it-Package.cab|it-it|it-it||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-ja-jp-Package.cab|ja-jp|ja-jp||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-pt-br-Package.cab|pt-br|pt-br||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-zh-cn-Package.cab|zh-cn|zh-cn||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-zh-hk-Package.cab|zh-tw|zh-hk||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Speech-zh-tw-Package.cab|zh-tw|zh-tw||Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-ar-eg-Package.cab|ar-sa|ar-eg||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-ca-es-Package.cab|ca-es|ca-es||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-da-dk-Package.cab|da-dk|da-dk||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-de-de-Package.cab|de-de|de-de||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-en-au-Package.cab|en-gb|en-au||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-en-ca-Package.cab|en-us|en-ca||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-en-gb-Package.cab|en-gb|en-gb||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-en-in-Package.cab|en-gb|en-in||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-en-us-Package.cab|en-us|en-us||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-es-es-Package.cab|es-es|es-es||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-es-mx-Package.cab|es-mx|es-mx||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-fi-fi-Package.cab|fi-fi|fi-fi||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-fr-ca-Package.cab|fr-fr|fr-ca||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-fr-fr-Package.cab|fr-fr|fr-fr||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-hi-in-Package.cab|hi-in|hi-in||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-it-it-Package.cab|it-it|it-it||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-ja-jp-Package.cab|ja-jp|ja-jp||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-ko-kr-Package.cab|ko-kr|ko-kr||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-nb-no-Package.cab|nb-no|nb-no||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-nl-be-Package.cab|nl-be|nl-be||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-nl-nl-Package.cab|nl-nl|nl-nl||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-pl-pl-Package.cab|pl-pl|pl-pl||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-pt-br-Package.cab|pt-br|pt-br||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-pt-pt-Package.cab|pt-pt|pt-pt||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-ru-ru-Package.cab|ru-ru|ru-ru||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-sv-se-Package.cab|sv-se|sv-se||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-tr-tr-Package.cab|tr-tr|tr-tr||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-zh-cn-Package.cab|zh-cn|zh-cn||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-zh-hk-Package.cab|zh-tw|zh-hk||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-TextToSpeech-zh-tw-Package.cab|zh-tw|zh-tw||Text to Speech|Installed LPs|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-AE|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-BH|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-DJ|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-DZ|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-EG|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-ER|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-IL|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-IQ|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-JO|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-KM|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-KW|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-LB|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-LY|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-MA|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-MR|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-OM|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-PS|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-QA|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-SA|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-SD|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-SO|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-SS|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-SY|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-TD|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-TN|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ar-YE|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|arz-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ckb-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|fa|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|fa-AF|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|fa-IR|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|glk-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ha-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ks-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ks-Arab-IN|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ku-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ku-Arab-IQ|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|mzn-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|pa-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|pa-Arab-PK|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|pnb-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|prs|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|prs-AF|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|prs-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ps|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ps-AF|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|sd-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|sd-Arab-PK|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|tk-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ug|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ug-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ug-CN|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ur|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ur-IN|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|ur-PK|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|uz-Arab|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|uz-Arab-AF|Arab|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Arab-Package.cab|ar-sa|as|Beng|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Beng-Package.cab|bn-in|as-IN|Beng|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Beng-Package.cab|bn-in|bn|Beng|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Beng-Package.cab|bn-in|bn-BD|Beng|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Beng-Package.cab|bn-in|bn-IN|Beng|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Beng-Package.cab|bn-in|bpy-Beng|Beng|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Cans-Package.cab|da-dk|iu-Cans|Cans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Cans-Package.cab|da-dk|iu-Cans-CA|Cans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Cher-Package.cab|chr-Cher-US|chr-Cher|Cher|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Cher-Package.cab|chr-Cher-US|chr-Cher-US|Cher|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|bh-Deva|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|brx|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|brx-Deva|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|brx-IN|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|hi|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|hi-IN|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|ks-Deva|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|mai|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|mr|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|mr-IN|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|ne|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|ne-IN|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|ne-NP|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|new-Deva|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|pi-Deva|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|sa|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|sa-Deva|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Deva-Package.cab|hi-IN|sa-IN|Deva|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|am|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|am-ET|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|byn|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|byn-ER|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|byn-Ethi|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|ti|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|ti-ER|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|ti-ET|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|tig|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|tig-ER|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|tig-Ethi|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|ve-Ethi|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|wal|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|wal-ET|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Ethi-Package.cab|am-ET|wal-Ethi|Ethi|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Gujr-Package.cab|gu-in|gu|Gujr|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Gujr-Package.cab|gu-in|gu-IN|Gujr|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Guru-Package.cab|pa-in|pa|Guru|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Guru-Package.cab|pa-in|pa-Guru|Guru|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Guru-Package.cab|pa-in|pa-IN|Guru|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|cmn-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|gan-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|hak-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|wuu-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|yue-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|zh-CN|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|zh-gan-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|zh-hak-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|zh-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|zh-SG|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|zh-wuu-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hans-Package.cab|zh-cn|zh-yue-Hans|Hans|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|cmn-Hant|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|hak-Hant|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|lzh-Hant|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|zh-hak-Hant|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|zh-Hant|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|zh-HK|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|zh-lzh-Hant|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|zh-MO|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|zh-TW|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hant-Package.cab|zh-tw|zh-yue-Hant|Hant|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hebr-Package.cab|he-il|he|Hebr|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hebr-Package.cab|he-il|he-IL|Hebr|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Hebr-Package.cab|he-il|yi|Hebr|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Jpan-Package.cab|ja-jp|ja|Jpan|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Jpan-Package.cab|ja-jp|ja-JP|Jpan|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Khmr-Package.cab|km-KH|km|Khmr|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Khmr-Package.cab|km-KH|km-KH|Khmr|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Knda-Package.cab|kn-in|kn|Knda|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Knda-Package.cab|kn-in|kn-IN|Knda|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Kore-Package.cab|ko-kr|ko|Kore|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Kore-Package.cab|ko-kr|ko-KR|Kore|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Laoo-Package.cab|de-de|lo|Laoo|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Laoo-Package.cab|de-de|lo-LA|Laoo|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Mlym-Package.cab|ml-in|ml|Mlym|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Mlym-Package.cab|ml-in|ml-IN|Mlym|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Orya-Package.cab|or-in|or|Orya|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Orya-Package.cab|or-in|or-IN|Orya|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Sinh-Package.cab|si-lk|si|Sinh|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Sinh-Package.cab|si-lk|si-LK|Sinh|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Syrc-Package.cab|tr-tr|arc-Syrc|Syrc|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Syrc-Package.cab|tr-tr|syr|Syrc|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Syrc-Package.cab|tr-tr|syr-SY|Syrc|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Syrc-Package.cab|tr-tr|syr-Syrc|Syrc|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Taml-Package.cab|ta-in|ta|Taml|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Taml-Package.cab|ta-in|ta-IN|Taml|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Taml-Package.cab|ta-in|ta-LK|Taml|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Taml-Package.cab|ta-in|ta-MY|Taml|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Taml-Package.cab|ta-in|ta-SG|Taml|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Telu-Package.cab|te-in|te|Telu|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Telu-Package.cab|te-in|te-IN|Telu|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Thai-Package.cab|th-th|th|Thai|Fonts|Language Profile list|
|Microsoft-Windows-LanguageFeatures-Fonts-Thai-Package.cab|th-th|th-TH|Thai|Fonts|Language Profile list|



## <span id="related_topics"></span>Related topics

[Add Language Packs to Windows](add-language-packs-to-windows.md)

[DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md)

