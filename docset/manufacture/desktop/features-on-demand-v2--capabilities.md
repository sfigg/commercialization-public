---
Description: 'Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).'
MS-HAID: 'p\_adk\_online.features\_on\_demand\_v2\_\_capabilities\_'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Features On Demand V2 (Capabilities)'
---

# Features On Demand V2 (Capabilities)


Features on Demand v2 (Capabilities), introduced in Windows 10, are Windows feature packages that can be added at any time. Common features include language resources like handwriting recognition or the .NET Framework (.NetFx3).

When the PC needs a new feature, it can request the feature package from Windows Update.

Unlike previous feature packs, Features on Demand V2 can be applicable to multiple Windows builds, and can be added using DISM without knowing the build number.

## <span id="Adding_or_removing_features_capabilities"></span><span id="adding_or_removing_features_capabilities"></span><span id="ADDING_OR_REMOVING_FEATURES_CAPABILITIES"></span>Adding or removing features/capabilities


Use DISM to add or remove capabilities:

-   Use the /Online option to add the capability to your PC.

-   Use the /Image:&lt;mount path&gt; option to add the capability to an Windows image file (.wim).

**Note**  If you use Windows Imaging and Configuration Designer (ICD) to enable Cortana or for pen support, you must add feature packages in a specific order. For more information, see [Lab 1: Customize and install Windows using the Windows Imaging and Configuration Designer (ICD)](install-windows-automatically-from-a-usb-drive-sxs.md).

 

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


**.NET Framework**

| Component | Description                                                             |
|-----------|-------------------------------------------------------------------------|
| NetFx3    | .NET 3.x Framework, a software framework required by many applications. |

 

**Language capabilities**

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
<p>Required for some regions to render text that appears in documents. Example, th-TH requires the Thai font pack. To learn more, see Features On Demand V2 (Capabilities).</p></td>
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
<td align="left">Basic, Text-To-Speech recognition</td>
<td align="left">Recognizes voice input, used by Cortana and Windows Speech Recognition.</td>
</tr>
</tbody>
</table>

 

**Font capabilities**

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

 

**Additional fonts available:**

These fonts are optional and not required for any region.

| Name                                                                          | Description                                                                                                                                         |
|-------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|
| Microsoft-Windows-LanguageFeatures-Fonts-PanEuropeanSupplementalFonts-Package | Pan-European Supplemental Fonts. Includes additional fonts: Arial Nova, Georgia Pro, Gill Sans Nova, Neue Haas Grotesk, Rockwell Nova, Verdana Pro. |

 

**Other region-specific requirements**

| Region | Description                   | Capability                                             | Description                                                                                                            |
|--------|-------------------------------|--------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------|
| zh-TW  | Chinese (Traditional, Taiwan) | Microsoft-Windows-InternationalFeatures-Taiwan-Package | Supplemental support for Taiwan date formatting requirements. Package will be provided to customers located in Taiwan. |

 

## <span id="related_topics"></span>Related topics


[Add Language Packs to Windows](add-language-packs-to-windows.md)

[DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Features%20On%20Demand%20V2%20%28Capabilities%29%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




