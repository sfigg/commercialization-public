---
author: kpacquer
Description: Add languages to Windows images
ms.assetid: 0734452f-aa09-4ec9-bbbf-fbc995dd803f
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Add languages to Windows images
ms.author: kenpacq
ms.date: 11/27/2018
ms.topic: article

---

# Add languages to Windows images

> [!note]
> To add a language to your personal PC, go to **Settings** > **Time & Language** > **Language**, and choose a language to install. [Learn more](https://support.microsoft.com/en-us/help/4027670/windows-10-add-and-switch-input-and-display-language-preferences)

OEMs can add language packs to localize Windows 10 and Windows Server images for different regions. To do this, you can add:

* **Language packs**: The language pack .cab file provides the UI text for the dialog boxes, menu items, and help files that you see in Windows. Sample name: **Microsoft-Windows-Client-Language-Pack_x64_es-es.cab**. See the [available languages for Windows](available-language-packs-for-windows.md).

* **Language components**: For Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), some language components, like language-specific fonts, optical character recognition, and handwriting recognition, are provided as [Features On Demand](features-on-demand-v2--capabilities.md). You can save disk space by choosing not to include some language components in your image. While this reduction in image size can be helpful when creating images for lower-cost devices with small storage, it does lead to an incomplete language experience.

* **Language interface packs (LIP)**: These are language packs require a base language. They don't include all of the language resources by themselves. For parts of the UI that are not translated into the LIP language, the Windows displays the UI with the parent language. 
  - As of Windows 10, version 1809, these languages are distributed as .appx files. See the [available Language interface packs](available-language-packs-for-windows.md#lips). Sample .appx name: `LanguageExperiencePack.am-et.neutral.appx`. 
  - For previous Windows versions, language experience packs are .cab files, example: `Microsoft-Windows-Client-Language-Pack_x64_es-ca.cab`.

* **[Recovery language packs](customize-windows-re.md)** so users can troubleshoot and recover their devices using their preferred language. 

## Applies to

Windows 10 (except for Windows 10 Home Single Language and Windows 10 Home Country Specific editions), and Windows Server

## Considerations

* **Install languages, then updates and apps**. If you're adding languages to an image that already contains apps or updates (for example, servicing stack updates (SSU) or cumulative updates (CU), reinstall the apps and updates.

* **Size and performance**
  - You can install multiple languages onto the same Windows image. Use care to limit the amount and types of language packs included with each image. While the Windows 10 language packs are smaller, having too many affects disk space, and can affect performance, especially while updating and servicing Windows.
  - Some languages require more hard-disk space than others.
  - When creating Windows images, you can remove English language components when deploying to non-English regions to save space. You'll need to uninstall them in the reverse order from how you add them.
  - After the Out-Of-Box-Experience (OOBE) is complete, the default language cannot be removed. The default UI language is selected either during the Out-Of-Box-Experience (OOBE), or can be preselected in the image using DISM or an unattended answer file.
  - Some time after OOBE, any preinstalled languages that haven't been used are removed automatically.

**Note**  
The language-pack removal task does not remove LIPs.

- **Cross-language upgrades are not supported**. This means that during upgrades or migrations, if you upgrade or migrate an operating system that has multiple language packs installed, you can upgrade or migrate to the system default UI language only. For example, if English is the default language, you can upgrade or migrate only to English.

## Get languages and components

-   **OEMs and System Builders** with Microsoft Software License Terms can download the Language Pack ISO and Feature on Demand ISO from the [Microsoft OEM site](http://go.microsoft.com/fwlink/?LinkId=131359) or the [Device Partner Center](https://devicepartner.microsoft.com/). 
    - For Windows 10, version 1809, LIP .appx files and their associated license files are in the LocalExperiencePack folder on the Language Pack ISO.
    - For previous versions of Windows, Language Interface Packs are available as a separate download.
    - WinRE language packs are distributed on the Language Pack ISO. Don't use the WinPE language packs that ship with the ADK.

-   **IT Professionals** can download language packs from the [Microsoft Next Generation Volume Licensing Site](https://licensing.microsoft.com/).
-   After Windows is installed, users can download and install more languages by selecting **Settings** > **Time & language** > **Language** > **Add a language**. 


Note: the version of the language components must match the version of Windows. For example, you can't add a Windows 10, version 1809 language pack to Windows 10, version 1803.

## <span id="LangPackTypes"></span><span id="langpacktypes"></span><span id="LANGPACKTYPES"></span>Language pack types

The table below gives an overview of the types of language components that are available in Windows 10.

To install a language, do the following for each language:

1.   Add the language pack and the **Basic** components.
2.   To preload Cortana features, also add the **Text-to-speech**, and **Speech recognition**.
3.   Add **Fonts** and **Optical character recognition** for the most popular languages within a region to improve your user’s first experience (strongly recommended). If they’re not already installed, Windows downloads and installs them in the background when the user chooses that language for the first time.
4.   Add **handwriting recognition** for devices with pen inputs.
5.   Add Windows Recovery Environment (WinRE) components so that end users can more easily recover their PCs.

> [!Note] 
> Not all language components are available for every language.

Other customizations that can be preset:

-   Currency, time zone, or calendar formats
-   [Keyboard Identifiers and Input Method Editors for Windows](windows-language-pack-default-values.md)


Some capabilities have dependencies, as shown in the following table.

<table>
<thead>
<tr>
<th>Component</th>
<th>Sample file name</th>
<th>Dependencies</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>Language pack</td>
<td><code>Microsoft-Windows-Client-Language-Pack_x64_es-es.cab</code></td>
<td>None</td>
<td>UI text, including basic Cortana capabilities.</td>
</tr>
<tr>
<td>Language experience pack or language interface pack</td>
<td><code>LanguageExperiencePack.am-et.neutral.appx</code>&nbsp;or&nbsp;<code>Microsoft-Windows-Client-Language-Interface-Pack_x64_ca-es-valencia.cab</code></td>
<td>Requires a specific fully-localized or partially-localized language pack. Example: ca-es-valencia requires es-es. To learn more, see&nbsp;<a href="https://docs.microsoft.com/windows-hardware/manufacture/desktop/available-language-packs-for-windows">Available Language Packs for Windows</a>.</td>
<td>UI text, including basic Cortana capabilities.<br /><br />Not all of the language resources for the UI are included in a LIP. LIPs require at least one language pack (or parent language). A parent language pack provides support for a LIP. The parts of the UI that are not translated into the LIP language are displayed in the parent language. In countries or regions where two languages are commonly used, you can provide a better user experience by applying a LIP over a language pack.</td>
</tr>
<tr>
<td>Basic</td>
<td><code>Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package</code></td>
<td>None</td>
<td>Spell checking, text prediction, word breaking, and hyphenation if available for the language.<br /><br />You must add this component before adding any of the following components.</td>
</tr>
<tr>
<td>Fonts</td>
<td><code>Microsoft-Windows-LanguageFeatures-Fonts-Thai-Package</code></td>
<td>None</td>
<td>Fonts.<br /><br />Required for some regions to render text that appears in documents. Example, th-TH requires the Thai font pack. To learn more, see&nbsp;<a href="https://docs.microsoft.com/windows-hardware/manufacture/desktop/features-on-demand-language-fod">Language and region Features On Demand</a>.</td>
</tr>
<tr>
<td>Optical character recognition</td>
<td><code>Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package</code></td>
<td>Basic</td>
<td>Recognizes and outputs text in an image.</td>
</tr>
<tr>
<td>Handwriting recognition</td>
<td><code>Microsoft-Windows-LanguageFeatures-Handwriting-fr-fr-Package</code></td>
<td>Basic</td>
<td>Enables handwriting recognition for devices with pen input.</td>
</tr>
<tr>
<td>Text-to-speech</td>
<td><code>Microsoft-Windows-LanguageFeatures-TextToSpeech-fr-fr-Package</code></td>
<td>Basic</td>
<td>Enables text to speech, used by Cortana and Narrator.</td>
</tr>
<tr>
<td>Speech recognition</td>
<td><code>Microsoft-Windows-LanguageFeatures-Speech-fr-fr-Package</code></td>
<td>Basic, Text-To-Speech recognition</td>
<td>Recognizes voice input, used by Cortana and Windows Speech Recognition.</td>
</tr>
<tr>
<td>Retail Demo experience</td>
<td><code>Microsoft-Windows-RetailDemo-OfflineContent-Content-fr-fr-Package</code></td>
<td>Basic, plus the base retail demo pack: Microsoft-Windows-RetailDemo-OfflineContent-Content-Package, and the English retail demo pack: Microsoft-Windows-RetailDemo-OfflineContent-Content-en-us-Package.</td>
<td><a href="https://docs.microsoft.com/windows-hardware/customize/desktop/retail-demo-experience">Retail Demo experience</a>.</td>
</tr>
<tr>
<td>WinRE</td>
<td>Multiple, see <a href="https://docs.microsoft.com/windows-hardware/manufacture/desktop/customize-windows-re">Customize Windows RE</a>.</td>
<td>None</td>
<td>Used to help end users repair and recover their PCs. See&nbsp;<a href="https://docs.microsoft.com/windows-hardware/manufacture/desktop/customize-windows-re">Customize Windows RE</a>.</td>
</tr>
</tbody>
</table>
 

## <span id="LPInstallMethods"></span><span id="lpinstallmethods"></span><span id="LPINSTALLMETHODS"></span>Installation methods


You can add a language pack to an image in the following ways:

-   [**Using Windows Setup.**](#add-setup)
-   [**Offline installation**](#add-offline). If you need to add a language pack or configure international settings on a custom Windows image, you can use DISM.
-   **On a running operating system.** If you need to boot the operating system to install an application or to test and validate the installation, you can add a language pack to the running operating system by using DISM or the language pack setup tool (Lpksetup.exe). You can use this method only for language packs that are stored outside of the Windows image. For more information, see [Add and Remove Language Packs on a Running Windows Installation](add-and-remove-language-packs-on-a-running-windows-installation.md) and [Add Language Interface Packs to Windows](add-language-interface-packs-to-windows.md).

## <span id="add-setup"></span><span id="ADD-SETUP"></span>Add or remove languages using Windows Setup


**To deploy a multilingual edition of Windows by using Windows Setup**

1.  Add or remove language packs in the **\\Langpacks** folder in a distribution share.
2.  Recreate the Lang.ini file. Windows Setup uses the Lang.ini file to identify the language packs that are inside the image and in the Windows distribution share. The Lang.ini file also identifies the language that is displayed during Windows Setup. You must also regenerate the Lang.ini file if you plan to create recovery media for images that contain multiple languages.

    You can use DISM international servicing command-line options to recreate the Lang.ini file based on any language-pack updates. Do not manually modify the Lang.ini file. To learn more, see [DISM Languages and International Servicing Command-Line Options](dism-languages-and-international-servicing-command-line-options.md).

3.  If you deploy a multilingual image, or need to apply a specific language pack to a Windows image for a specific device, you can add the language pack by using Windows Setup and an unattended answer file. The language pack must be added to the image before international settings can be configured. For more information about how to add a language pack to an answer file, see [Add a Package to an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915066). To add a language pack and configure international settings, use the **WindowsPE** configuration pass to add the language pack and other configuration passes to configure international settings. For more information, see [Configure International Settings in Windows](configure-international-settings-in-windows.md)
    
    > [!Note]
    > If language and locale settings are specified in an answer file, those settings overwrite any previous default. For example, if you first change the default `UILanguage` setting to FR-FR by using the DISM command-line tool on an offline image and then later apply an unattended answer file that specifies EN-US as the UI language, EN-US will be the default UI language.   

4.  Use Setup to install the language packs that are in the distribution share.

To learn more, see [Add Multilingual Support to a Windows Distribution](add-multilingual-support-to-a-windows-distribution.md) or [Add Multilingual Support to Windows Setup](add-multilingual-support-to-windows-setup.md).

## <span id="add-offline"></span><span id="ADD-OFFLINE"></span>Add or remove languages offline

This section covers how to add and remove languages on an offline (mounted) image (install.wim). We'll install the French language, and then add a LIP language (Luxembourgish) that uses French for its base language.

To add a language to an offline image, you'll need:
- A Windows image
- Language Pack ISO
- Feature on Demand ISO

(See [where to get them](#get_languages_and_components).)


**Mount images**

-   Mount the Windows and Windows Recovery Environment (winre.wim) images. The recovery image is stored inside the Windows image.

    ```
    md C:\mount\windows
    Dism /Mount-Image /ImageFile:install.wim /Index:1 /MountDir:"C:\mount\windows"
    md C:\mount\winre
    Dism /Mount-Image /ImageFile:"C:\mount\windows\Windows\System32\Recovery\winre.wim" /index:1 /MountDir:"C:\mount\winre"
    ```

**Add a language**

 Preinstall languages by adding the language packs and their related Features on Demand for all preinstalled languages, including the base languages if you're adding a LIP language.

1.  Mount the language pack and FOD ISOs with File explorer. This will assign them drive letters.

2.  Add the language pack to Windows. Use `dism /Add-Package` to add the language pack.

    ```
    Dism /Add-Package /Image:"C:\mount\windows" /PackagePath="D:\x64\langpacks\Microsoft-Windows-Client-Language-Pack_x64_fr-fr.cab"
    ```

    Where D:\ is the Language pack ISO 

    Note: you can add more than one language at a time by adding multiple /PackagePath commands with a single DISM command. However, don't add too many at the same time, because the device may not have enough memory to handle it. General recommendations: if you're running this command in Windows on your technician computer or in **audit mode**, don't add more than 20 language packs at a time. From **Windows PE**, don't add more than 7 at a time. If WinPE is still running out of memory, you can [customize WinPE by adding temporary storage (scratch space)](winpe-mount-and-customize.md).

3.  Add the language FODs. We recommend always installing the Basic, Fonts, OCR, Text-to-speech, and Speech recognition FODs if they're available for the languages you’re preinstalling. Additionally, preinstall the handwriting language component FOD if you’re shipping a device with a pen.
    
    Example: adding fr-fr (no fonts):
    ```
    Dism /Image:"C:\mount\windows" /add-package /packagepath:E:\Microsoft-Windows-LanguageFeatures-Basic-fr-fr-Package~31bf3856ad364e35~amd64~~.cab /packagepath:E:\Microsoft-Windows-LanguageFeatures-OCR-fr-fr-Package~31bf3856ad364e35~amd64~~.cab /packagepath:E:\Microsoft-Windows-LanguageFeatures-Handwriting-fr-fr-Package~31bf3856ad364e35~amd64~~.cab /packagepath:E:\Microsoft-Windows-LanguageFeatures-TextToSpeech-fr-fr-Package~31bf3856ad364e35~amd64~~.cab /packagepath:E:\Microsoft-Windows-LanguageFeatures-Speech-fr-fr-Package~31bf3856ad364e35~amd64~~.cab
    ```

    Example: adding th-TH (fonts required):
    ```
    Dism /Image:"C:\mount\windows" /add-package /packagepath:E:\Microsoft-Windows-LanguageFeatures-Basic-th-TH-Package~31bf3856ad364e35~amd64~~.cab /packagepath:E:\Microsoft-Windows-LanguageFeatures-Fonts-th-TH-Package~31bf3856ad364e35~amd64~~.cab 
    /packagepath:E:\Microsoft-Windows-LanguageFeatures-OCR-th-TH-Package~31bf3856ad364e35~amd64~~.cab /packagepath:E:\Microsoft-Windows-LanguageFeatures-Handwriting-th-TH-Package~31bf3856ad364e35~amd64~~.cab /packagepath:E:\Microsoft-Windows-LanguageFeatures-TextToSpeech-th-TH-Package~31bf3856ad364e35~amd64~~.cab /packagepath:E:\Microsoft-Windows-LanguageFeatures-Speech-th-TH-Package~31bf3856ad364e35~amd64~~.cab
    ```
    To learn more, see [Features on demand](features-on-demand-v2--capabilities.md).

4.  After adding the language pack and components, verify that it's in the images.

    ```
    Dism /Image:"C:\mount\windows" /Get-packages
    Dism /Image:"C:\mount\windows" /Get-capabilities
    ```

5.  **If you're adding a LIP language** Add your LIP language that uses the language that we just added (fr-FR) as a base language. Not all languages have all language components. Luxembourgish (lb-LU), for example, only has basic and handwriting FODs. You can learn which FODs are available for languages [in the LP to FOD mapping spreadsheet](http://download.microsoft.com/download/C/6/C/C6C91D1F-F96A-40FA-AF9D-E73FA4EAD344/Windows-10-1809-FOD-to-LP-Mapping-Table.xlsx)

    **For Windows 10, version 1809 and later:**

    1. Add the LIP, which is on the language pack ISO in the LXP folder. This type of language pack is distributed as an .appx.
        
        ```
        DISM /image:"C:\mount\windows" /add-provisionedappxpackage /PackagePath="D:\LocalExperiencePack\lb-lu\LanguageExperiencePack.lb-LU.Neutral.appx /licensepath:"D:\LocalExperiencePack\lb-lu\License.xml"
        ```
    
        Where D:\ is the language pack ISO
    
    2. Add the features on demand that support your LIP language.
    
        ```
        DISM /image:"C:\mount\windows" /add-package /packagepath:E:\Microsoft-Windows-LanguageFeatures-Basic-lb-lu-Package~31bf3856ad364e35~amd64~~.cab /packagepath:E:\Microsoft-Windows-LanguageFeatures-Handwriting-lb-lu-Package~31bf3856ad364e35~amd64~~.cab
        ```
        
        Where E:\ is the Feature on Demand ISO

    3. Verify that the LIP is in the image

        ```
        DISM /image:"C:\mount\windows" get-provisionedappxpackages
        ```
    
    **For earlier versions of Windows:**

    1.  Add the LIP and desired/available capabilities to the Windows image. Some regions don't have any related capabilities, while others have partial or complete sets.

        After adding the packages, verify that they're in the image.

        ```
        Dism /Image:C:\mount\windows /Add-Package /PackagePath:C:\Languages\Microsoft-Windows-Client-Language-Pack_x64_bn-in.cab
         /PackagePath="C:\Languages\bn-in x64\Microsoft-Windows-LanguageFeatures-Basic-bn-in-Package.cab"
        ```

    2.  Add any other capabilities, such as fonts, required for that region.

        ```
        Dism /Add-Package /Image:"C:\mount\windows" /PackagePath="C:\Languages\Microsoft-Windows-LanguageFeatures-Fonts-Beng-Package"
        ```

    3.  Verify that they're in the image.

        ```
        Dism /Get-Packages /Image:"C:\mount\windows" 
        ```

6.  When you add languages to Windows, when possible, add them to WinRE to ensure a consistent language experience in recovery scenarios. Use the Windows RE language packs distributed on the Language Pack ISO. Don't use the WinPE language packs that ship with the ADK.

    ```
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\lp.cab"
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\WinPE-Rejuv_fr-fr.cab"
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\WinPE-EnhancedStorage_fr-fr.cab"
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\WinPE-Scripting_fr-fr.cab"
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\WinPE-SecureStartup_fr-fr.cab"
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\WinPE-SRT_fr-fr.cab"
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\WinPE-WDS-Tools_fr-fr.cab"
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\WinPE-WMI_fr-fr.cab"
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\WinPE-StorageWMI_fr-fr.cab"
    Dism /Image:C:\mount\winre /Add-Package /PackagePath:"D:\Windows Preinstallation Environment\x64\WinPE_OCs\fr-fr\WinPE-HTA_fr-fr.cab"
    ```


    After adding the packages, verify that they're in the image.
    ```
    Dism /Get-Packages /Image:"C:\mount\winre"
    ```

    Each package should show as State:Installed. Example output from /Get-Packages: 
    
    ```
    Package Identity : Microsoft-Windows-WinPE-Rejuv\_fr-fr ... fr-FR~10.0.9926.0 State : Installed
    ```

## Remove a language

Before you add new language packs to a Windows image, you must remove any language packs that you don't intend to use. There are two ways to remove language packs offline with DISM. You can either apply an unattended answer file to the offline image, or you can remove the language pack directly from the offline image, using the command prompt.

If you're removing a language from an online image, the process is the same, but use `/online` instead of `/image:<pathtoimage>` in your DISM commands.

> [!important]
> You cannot remove a language pack from an offline Windows image if there are pending online actions. The Windows image should be a recently installed and captured image. This will guarantee that the Windows image does not have any pending online actions that require a reboot.

### Remove a language from a Windows image

> [!note]
> If you're adding a language to an online image, the process is the same, but use `/online` instead of `/image:<pathtoimage>` in your DISM commands.

1.  Locate the Windows image (.wim) file or virtual hard disk (.vhd or .vhdx) that contains the Windows image that you intend to remove languages from.

2.  Open a Command prompt as administrator.

3.  Mount a Windows image if you want to remove languages from an offline image.

    ```
    Dism /Mount-Image /ImageFile:C:\test\images\install.wim /MountDir:C:\test\offline
    ```

4.  Verify that the packages are no longer installed on your mounted image.

    ```
    Dism /Image:C:\test\offline /Get-Packages
    ```

5. For LIPs, remove them before removing the language components.

    Windows 10, version 1809 or later: 
    ```
    Dism /remove-provisionedappxpackage /packagename:Microsoft.LanguageExperiencePack<lang_version>_neutral__8wekyb3d8bbwe
    ```

    Windows 10, version 1803 or earlier:
    ```
    Dism /Image:C:\test\offline /Remove-Package /PackageName:<LIP name> 
    ```

6.  Remove language components from the image. Use the packages names that you got in step 5. You can specify more than one `/packagename` per command-line statement.

    ```
    Dism /Image:C:\test\offline /Remove-Package /PackageName:<language pack name> /PackageName:<language component package Name>  ...
    ```

7.  Commit the changes. The image remains mounted until you run `DISM /unmount.

    ```
    Dism /Commit-Image /MountDir:C:\test\offline
    ```

### Reinstall apps and updates (required whenever adding languages)

In general, install languages before installing updates and apps. If you're adding languages to an image that already contains apps or updates (for example, servicing stack updates (SSU) or cumulative updates (CU), reinstall the apps and updates.

Note: In Windows 10, version 1607, it is no longer necessary to remove inbox apps.

### Configure international settings

After you add or remove a language pack in a Windows image, you can update most of the defaults for a region at once:

```
Dism /Set-AllIntl:fr-fr /Image:C:\mount\windows
```
To learn more, see [Configure international settings by using DISM](configure-international-settings-in-windows.md).

### Windows Setup: update the list of languages

This step is only required if you're distributing Windows using Windows Setup media, or using a distribution share.

```
Dism /Image:C:\mount\windows /gen-langini /distribution:C:\my_distribution
```

To learn more, see [Add languages to Windows Setup](add-multilingual-support-to-windows-setup.md) and [Add languages to a Windows Distribution](add-multilingual-support-to-a-windows-distribution.md).

### Unmount the images

Unmount the Windows RE and Windows images.

```
Dism /Unmount-Image /MountDir:"C:\mount\winre" /Commit
Dism /Unmount-Image /MountDir:"C:\mount\windows" /Commit
```


## <span id="related_topics"></span>Related topics


[Language Packs](language-packs-and-windows-deployment.md)

[Available Language Packs for Windows](available-language-packs-for-windows.md)

[Features On Demand V2 (Capabilities)](features-on-demand-v2--capabilities.md)

[Windows Language Pack Default Values](windows-language-pack-default-values.md)

[Default Input Locales for Windows Language Packs](default-input-locales-for-windows-language-packs.md)

[DISM - Deployment Image Servicing and Management Technical Reference for Windows](dism---deployment-image-servicing-and-management-technical-reference-for-windows.md)

[DISM Languages and International Servicing Command-Line Options](dism-languages-and-international-servicing-command-line-options.md)

[DISM Unattended Servicing Command-Line Options](dism-unattended-servicing-command-line-options.md)

[Windows System Image Manager Technical Reference](https://msdn.microsoft.com/library/windows/hardware/dn922445)
