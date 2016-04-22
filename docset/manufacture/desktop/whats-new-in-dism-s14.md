---
author: Justinha
Description: 'What''s New in DISM'
ms.assetid: f1b463c0-96b5-4ad2-afac-53f9baf475a3
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'What''s New in DISM'
---

# What's New in DISM


DISM in Windows 10 supports new features:

-   [Windows Imaging and Configuration Designer](https://msdn.microsoft.com/library/windows/hardware/dn916113) and related tools.

-   **Full Flash Update (.FFU)**: DISM supports the Full Flash Update (.FFU) format, which captures an applies an entire drive, including partition information. This can make deployment faster and easier.

    To learn more, see [WIM vs FFU image file formats](wim-vs-ffu-image-file-formats.md) and **/Apply-FFU** and **/Split-FFU** in [DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md).

-   **Capabilities**: This new Windows package type allows you to request services like .NET or languages without specifying the version. Use DISM to search multiple sources like Windows Update or your corporate servers to find and install the latest version. For more info, see [DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md).

    To learn more, see the new topic: [DISM Capabilities Package Servicing Command-Line Options](dism-capabilities-package-servicing-command-line-options.md).

-   **Compress operating system and provisioning packages**: Save space on a Windows image by running the operating system and other system files from compressed files. This replaces the WIMBoot features from Windows 8.1.

    To learn more, see **/Apply-Image***/Compact* and **/Apply-CustomDataImage** in [DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md).

For an overview of DISM, see [What is DISM?](what-is-dism.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20What's%20New%20in%20DISM%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



