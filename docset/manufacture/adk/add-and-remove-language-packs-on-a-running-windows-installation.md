---
Description: Add and Remove Language Packs on a Running Windows Installation
MS-HAID: 'p\_adk\_online.add\_and\_remove\_language\_packs\_on\_a\_running\_windows\_installation'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Add and Remove Language Packs on a Running Windows Installation
---

# Add and Remove Language Packs on a Running Windows Installation


You can add support for additional languages on a running operating system, or to an offline image. For information about how to install languages to an offline image, see [Add and Remove Language Packs Offline Using DISM](add_and_remove_language_packs_offline_using_dism.md).

For information about installing Language Interface Packs (LIPs), see [Add Language Interface Packs to Windows](add-language-interface-packs-to-windows.md).

In Windows 10, end users can use the **Language** page in the **Control Panel** to download and install additional language packs and Language Interface Packs (LIPs) from Windows Update.

## <span id="online"></span><span id="ONLINE"></span>Add a Language Pack Online


When you add language packs using DISM, the licensing requirements of how many language packs are allowed to run on the Windows edition are not verified. If you add multiple language packs, all non-default, non-user selected languages will be removed from the computer after a period of time. For more information, see [Add Language Packs to Windows](add-language-packs-to-windows.md).

**Note**  
You can also add language packs to Windows Preinstallation and Windows Recovery installations. For more information, see [WinPE: Mount and Customize](winpe-mount-and-customize.md) and [Customize Windows RE](customize-windows-re.md).

 

**To add a language pack by using DISM**

1.  On the running operating system, open an elevated command-line prompt.

2.  Type the following command to add a language pack to the operating system.

    ``` syntax
    Dism /online /Add-Package /PackagePath:C:\test\LangPacks\lp.cab
    ```

For more information about DISM international servicing commands, see [DISM Languages and International Servicing Command-Line Options](dism-languages-and-international-servicing-command-line-options.md)

## <span id="related_topics"></span>Related topics


[Service a Windows Image Using DISM](service-a-windows-image-using-dism.md)

[Understanding Servicing Strategies](understanding-servicing-strategies.md)

[Add Language Packs to Windows](add-language-packs-to-windows.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Add%20and%20Remove%20Language%20Packs%20on%20a%20Running%20Windows%20Installation%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




