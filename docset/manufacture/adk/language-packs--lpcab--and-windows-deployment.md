---
Description: 'Language Packs (lp.cab)'
MS-HAID: 'p\_adk\_online.language\_packs\_\_lpcab\_\_and\_windows\_deployment'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Language Packs (lp.cab)'
---

# Language Packs (lp.cab)


To design PCs that work better for customers in different regions, you can set up Windows with the right set of local languages, settings, and keyboards or other input devices.

## <span id="What_s_new_with_Language_Packs_for_Windows_10_"></span><span id="what_s_new_with_language_packs_for_windows_10_"></span><span id="WHAT_S_NEW_WITH_LANGUAGE_PACKS_FOR_WINDOWS_10_"></span>What's new with Language Packs for Windows 10?


To help you reduce the size of your image, language packs have now been split into the following language components and [Features On Demand V2 (Capabilities)](features-on-demand-v2--capabilities-.md):

-   UI Text (lp.cab)
-   Basic (spell check, typing)
-   Fonts
-   Handwriting
-   Optical character recognition
-   Text-to-speech
-   Speech

You can now choose to add only core language pack UI resources to your image, significantly reducing image size.

To preload Cortana features, add the following features on demand: UI text (lp.cab), the Basic, Text-to-Speech, and Speech language components.

**Note**  If you use Windows Imaging and Configuration Designer (ICD) to enable Cortana or for pen support, you must add feature packages in a specific order. For more information, see [Lab 1: Customize and install Windows using the Windows Imaging and Configuration Designer (ICD)](p_sxs_dmfg.install_windows_automatically_from_a_usb_drive_blue_sxs).

 

Not all components and features on demand are available for every language.

To learn more, see [Add Language Packs to Windows](p_adk_online.add_language_packs_to_windows_blue).

## <span id="Language_packs_for_Windows"></span><span id="language_packs_for_windows"></span><span id="LANGUAGE_PACKS_FOR_WINDOWS"></span>Language packs for Windows


Language packs contain the text for the dialog boxes, menu items, and helpfiles that you see in Windows.

For some regions, language interface packs (LIPs) can provide additional translations for the most widely-used dialog boxes, menu items, and helpfile content. LIPs rely on a parent language pack to provide the remainder of the content.

### <span id="Get_language_packs_and_LIPs"></span><span id="get_language_packs_and_lips"></span><span id="GET_LANGUAGE_PACKS_AND_LIPS"></span>Get language packs and LIPs

-   OEMs and System Builders with Microsoft Software License Terms can download language packs and LIPs from the [Microsoft OEM site](http://go.microsoft.com/fwlink/?LinkId=131359) or the [OEM Partner Center](http://go.microsoft.com/fwlink/?LinkId=131358).
-   IT Professionals can download language packs from the [Microsoft Volume Licensing Site](http://go.microsoft.com/fwlink/?LinkId=125893).
-   After Windows is installed, end users can download and install additional language packs and LIPs from the **Language** Control Panel. For more information, see the [Local Language Program](http://go.microsoft.com/fwlink/?LinkId=262343).

Related information:

-   [Available Language Packs for Windows](p_adk_online.available_language_packs_for_windows_blue). Lists all of the supported language packs and LIPs for multiple versions of Windows, and their identifier codes.

### <span id="Add_languages_to_Windows"></span><span id="add_languages_to_windows"></span><span id="ADD_LANGUAGES_TO_WINDOWS"></span>Add languages to Windows

When you include more than one language or a LIP to Windows, your customers will be able to choose the language that best meets their needs during Windows OOBE.

There's a few different ways to install language packs:

-   You can add a language pack to Windows by using the **Dism /Add-Package** tool. See [Add and Remove Language Packs on a Running Windows Installation](add-and-remove-language-packs-on-a-running-windows-installation.md) or [Add and Remove Language Packs Offline Using DISM](add-and-remove-language-packs-offline-using-dism.md).
-   To deploy a multilingual version of Windows by using Windows Setup (for example, a corporate image Windows DVD or a set of images available on a corporate network), you can add language resources to the installation program. See [Add Multilingual Support to a Windows Distribution](p_adk_online.add_multilingual_support_to_a_windows_distribution_blue).

    For corporate or network-based deployments, you may also need to update the Windows Preinstallation Environment (Windows PE) that users see when they choose how and where to install Windows to their PC. For more information, see [WinPE: Mount and Customize](winpe-mount-and-customize.md).

-   After Windows is installed, end users can download and install additional language packs and LIPs from the **Language** Control Panel. For more information, see the [Local Language Program](http://go.microsoft.com/fwlink/?LinkId=262343).

## <span id="Language_packs_for_recovery_tools"></span><span id="language_packs_for_recovery_tools"></span><span id="LANGUAGE_PACKS_FOR_RECOVERY_TOOLS"></span>Language packs for recovery tools


When things go wrong, the Windows Recovery Environment (Windows RE) can help recover the system and data. When you update the available languages for Windows, update the available languages in the recovery tools: [Customize Windows RE](customize-windows-re.md).

## <span id="Prepare_keyboards__time_zones__and_other_regional_settings_"></span><span id="prepare_keyboards__time_zones__and_other_regional_settings_"></span><span id="PREPARE_KEYBOARDS__TIME_ZONES__AND_OTHER_REGIONAL_SETTINGS_"></span>Prepare keyboards, time zones, and other regional settings


You can specify the default keyboard layout, language, or locale, either during deployment or after Windows is installed.

-   [Configure International Settings in Windows](p_adk_online.configure_international_settings_in_windows_blue)
-   [Default Input Profiles (Input Locales) in Windows](p_adk_online.default_input_locales_for_windows_language_packs_blue): Lists the default input profiles (language and keyboard pairs) used for each region.
-   [Default Time Zones](default-time-zones.md): Lists the default time zone used for each region.
-   [Keyboard identifiers for Windows](windows-language-pack-default-values.md): Lists the keyboard hexadecimal values used when configuring input profiles.

## <span id="Languages_for_apps"></span><span id="languages_for_apps"></span><span id="LANGUAGES_FOR_APPS"></span>Languages for apps


Many apps include support for multiple languages, though some require separate installation of language packs to work properly. Consult with the app developer.

In general, install all of your languages onto Windows before installing apps. This helps make sure that the language resource files are available for each of the available apps.

For more information, see [Multilingual User Interface (Windows)](http://go.microsoft.com/fwlink/p/?LinkId=698642).

## <span id="related_topics"></span>Related topics


[Add Language Packs to Windows](p_adk_online.add_language_packs_to_windows_blue)

[Features On Demand V2 (Capabilities)](features-on-demand-v2--capabilities-.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Language%20Packs%20%28lp.cab%29%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




